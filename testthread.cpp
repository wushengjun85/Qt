#include "testthread.h"
#include<QDebug>

TestThread::TestThread(QObject *parent) :
    QThread(parent)
{

}

void TestThread::run()
{

    cantst.num = 88;
    cantst.count = 66;
    while (1)
    {

        qDebug()<<"897"<<endl;
        QThread::sleep(1);
        emit TstSignal(cantst);
    }

}
