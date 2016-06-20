#ifndef TESTTHREAD_H
#define TESTTHREAD_H

#include <QObject>
#include<QThread>
typedef struct mycantst
{
    int num;
    int count;
}Can;

class TestThread : public QThread
{
    Q_OBJECT
public:
    explicit TestThread(QObject *parent = 0);
    Can cantst;
    void run();
signals:
    void TstSignal(Can);

    
public slots:
    
};

#endif // TESTTHREAD_H
