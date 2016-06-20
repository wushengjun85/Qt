#include "canread.h"
extern unsigned char flagWidthlamp;
Canread::Canread()
{
}


void Canread::shutdownfd(int fd)
{
    close(fd);
}


 int Canread::initcan(int *retfd)
 {
     int s;
         int ret;
         struct sockaddr_can addr;
         struct ifreq ifr;



     srand(time(NULL));
         s = socket(PF_CAN, SOCK_RAW, CAN_RAW);
         if (s < 0) {
             perror("socket PF_CAN failed");
             return 1;
         }
         else
         {
            *retfd = s;
         }

         strcpy(ifr.ifr_name, "can0");
         ret = ioctl(s, SIOCGIFINDEX, &ifr);
         if (ret < 0) {
             perror("ioctl failed");
             return 1;
         }

         addr.can_family = PF_CAN;
         addr.can_ifindex = ifr.ifr_ifindex;

         ret = bind(s, (struct sockaddr *)&addr, sizeof(addr));
         if (ret < 0) {
             perror("bind failed");
             return 1;
         }
     if (1) {
         struct can_filter filter[3];
         filter[0].can_id = 0x200 | CAN_EFF_FLAG;
         filter[0].can_mask = 0xFFF;

         filter[1].can_id = 0x20F | CAN_EFF_FLAG;
         filter[1].can_mask = 0xFFF;

         filter[2].can_id = 0x18ff01f6;
         filter[2].can_mask = 0xfff;


         ret = setsockopt(s, SOL_CAN_RAW, CAN_RAW_FILTER, &filter, sizeof(filter));
         if (ret < 0) {
             perror("setsockopt failed");
             return 1;
         }
     }

 }


 void Canread::print_frame(struct can_frame *fr)
{
    int i;
    printf("%08x\n", fr->can_id & CAN_EFF_MASK);
    //printf("%08x\n", fr->can_id);
    printf("dlc = %d\n", fr->can_dlc);
    printf("data = ");
    for (i = 0; i < fr->can_dlc; i++)
        printf("%02x ", fr->data[i]);//
    printf("\n");
}


 void Canread::handle_err_frame(const struct can_frame *fr)
{
    if (fr->can_id & CAN_ERR_TX_TIMEOUT) {
        errout("CAN_ERR_TX_TIMEOUT");
    }
    if (fr->can_id & CAN_ERR_LOSTARB) {
        errout("CAN_ERR_LOSTARB");
        errcode(fr->data[0]);
    }
    if (fr->can_id & CAN_ERR_CRTL) {
        errout("CAN_ERR_CRTL");
        errcode(fr->data[1]);
    }
    if (fr->can_id & CAN_ERR_PROT) {
        errout("CAN_ERR_PROT");
        errcode(fr->data[2]);
        errcode(fr->data[3]);
    }
    if (fr->can_id & CAN_ERR_TRX) {
        errout("CAN_ERR_TRX");
        errcode(fr->data[4]);
    }
    if (fr->can_id & CAN_ERR_ACK) {
        errout("CAN_ERR_ACK");
    }
    if (fr->can_id & CAN_ERR_BUSOFF) {
        errout("CAN_ERR_BUSOFF");
    }
    if (fr->can_id & CAN_ERR_BUSERROR) {
        errout("CAN_ERR_BUSERROR");
    }
    if (fr->can_id & CAN_ERR_RESTARTED) {
        errout("CAN_ERR_RESTARTED");
    }
}

 int Canread::test_can_rw(int fd, int master)
{
    int ret, i;
    struct can_frame fr, frdup;
    struct timeval tv;
    fd_set rset;

    while (1) {
        tv.tv_sec = 1;
        tv.tv_usec = 0;
        FD_ZERO(&rset);
        FD_SET(fd, &rset);
        printf("=====\r\n");
/*
        ret = select(fd+1, &rset, NULL, NULL, NULL);
        if (ret == 0) {
            myerr("select time out");
            return -1;
        }
*/
        printf("------------------------ \n");
        ret = read(fd, &frdup, sizeof(frdup));
        if (ret < sizeof(frdup)) {
            myerr("read failed");
            return -1;
        }
        if (frdup.can_id & CAN_ERR_FLAG) { /* 出错设备错误 */
            handle_err_frame(&frdup);
            myerr("CAN device error");
            continue;
        }

       if(((frdup.can_id)&CAN_EFF_MASK) == 0x18ff01f6)
        {
            if(frdup.data[3] == 0x55)
            {
                flagWidthlamp = 0;
                printf("WSJ flagWidthlamp: %d\r\n",flagWidthlamp);
            }
            else
            {
                printf("456789");
                 flagWidthlamp = 1;
            }
        }


        print_frame(&frdup);

        memset(&frdup,0,sizeof(frdup));
/*
        ret = write(fd, &frdup, sizeof(frdup));
        if (ret < 0) {
            myerr("write failed");
            return -1;
        }
*/
        //sleep(2);


    }

    return 0;
}


//int main(int argc, char *argv[])
//{
//    int s;
//        int ret;
//        struct sockaddr_can addr;
//        struct ifreq ifr;
//    int master;


//    srand(time(NULL));
//        s = socket(PF_CAN, SOCK_RAW, CAN_RAW);
//        if (s < 0) {
//            perror("socket PF_CAN failed");
//            return 1;
//        }

//        strcpy(ifr.ifr_name, "can0");
//        ret = ioctl(s, SIOCGIFINDEX, &ifr);
//        if (ret < 0) {
//            perror("ioctl failed");
//            return 1;
//        }

//        addr.can_family = PF_CAN;
//        addr.can_ifindex = ifr.ifr_ifindex;

//        ret = bind(s, (struct sockaddr *)&addr, sizeof(addr));
//        if (ret < 0) {
//            perror("bind failed");
//            return 1;
//        }
//    if (1) {
//        struct can_filter filter[2];
//        filter[0].can_id = 0x200 | CAN_EFF_FLAG;
//        filter[0].can_mask = 0xFFF;

//        filter[1].can_id = 0x20F | CAN_EFF_FLAG;
//        filter[1].can_mask = 0xFFF;


//        ret = setsockopt(s, SOL_CAN_RAW, CAN_RAW_FILTER, &filter, sizeof(filter));
//        if (ret < 0) {
//            perror("setsockopt failed");
//            return 1;
//        }
//    }
//    test_can_rw(s, master);

//    close(s);
//    return 0;
//}
