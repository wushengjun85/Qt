#include "can.h"
#include<QDebug>
#include<QThread>
can::can()
{
}
static int i = 0;
void can::fun()
{
    printf("wushengjun is a good man");

        qDebug()<<"i: "<<i++<<endl;

}
