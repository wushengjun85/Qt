#include "widget.h"
#include "ui_widget.h"
#include"can.h"
#include"canread.h"

#include<QTime>
#include<QTimer>
#include<QPainter>



unsigned char flagWidthlamp = 1; //示宽灯
unsigned char countWidthlamp = 0;//示宽灯


Widget::Widget(QWidget *parent) :
    QWidget(parent),
    ui(new Ui::Widget)
{
    ui->setupUi(this);
    qRegisterMetaType<Can>("Can");

    qRegisterMetaType<CanData>("CanData");

    QTimer *timer = new QTimer(this);   //声明一个定时器
    QTimer *timertst = new QTimer(this);

    //update()会自动产生重绘消息，调用paintEvent()
    connect(timer, SIGNAL(timeout()), this, SLOT(update()));  //连接信号槽，定时器超时触发窗体更新
   // connect(timertst, SIGNAL(timeout()), this, SLOT(func()));  //连接信号槽，定时器超时触发窗体更新
    timer->start(500);   //启动定时器
    timertst->start(1000);
    setWindowTitle(tr("Haovel"));  //设置窗体名称
    resize(800,600);
    //setWindowFlags(windowFlags()|Qt::FramelessWindowHint|Qt::WindowTitleHint); //删除 最小化、最大化、关闭按钮

    t = new TestThread();
    connect(t,SIGNAL(TstSignal(Can)),this,SLOT(Dp(Can)));
    t->start();


    mycan = new SignalCan();
    connect(mycan,SIGNAL(sendcansignal(CanData)),this,SLOT(canslot(CanData)));
    mycan->start();





}

void Widget::canslot(CanData tmp)
{
    ui->lineEdit->setText(QString::number(tmp.data[0]));
}


void Widget::Dp(Can num)
{
    ui->label->setText(QString::number(num.count));
    if (num.count >90)
        flagWidthlamp = 0;
}

Widget::~Widget()
{
    delete ui;
}


void Widget::on_pushButton_clicked()
{
    //ui->label->setPixmap(QPixmap::fromImage());

    ui->label->setText("hello world");
    can tst;
    tst.fun();

    /*
    threadtst yu;
    yu.start();
    yu.wait();
    */

/*
    int master;
    int mycanid;
   Canread canread;
   canread.initcan(&mycanid);
   canread.test_can_rw(mycanid,master);
   canread.shutdownfd(mycanid);


*/


}

void Widget::paintEvent(QPaintEvent *event)
{
    QTime time = QTime::currentTime();   //获取当前的时间
    QPainter painter(this);
    /*
    QPixmap pix;
    pix.load("../img2/xingzou.bmp");
    painter.drawPixmap(150,100,300,300,pix);
    */
 painter.translate(0,148);//重新定位坐标起始点，把坐标原点放到窗体的中央

    //示宽灯
    QPainter paintWidthlamp(this);
    QPixmap pixWidthlamp;
    if(flagWidthlamp) //闪烁
    {
        countWidthlamp++;
        if (countWidthlamp>2)
            countWidthlamp = 0;
        switch(countWidthlamp)
        {
            case 1:pixWidthlamp.load("../img2/25.png");//14.jpg
            break;
        }
        paintWidthlamp.drawPixmap(102,0,43,34,pixWidthlamp);
    }

     ui->lineEdit->setText(QString::number(flagWidthlamp));


}

