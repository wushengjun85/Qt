#ifndef WIDGET_H
#define WIDGET_H
#include"testthread.h"
#include"signalcan.h"
#include <QWidget>

namespace Ui {
class Widget;
}

class Widget : public QWidget
{
    Q_OBJECT
    
public:
    explicit Widget(QWidget *parent = 0);
    ~Widget();
    
private slots:
    void on_pushButton_clicked();

    void Dp(Can tst);

    void canslot(CanData tmp);

private:
    Ui::Widget *ui;
    TestThread *t;
    SignalCan *mycan;

public:
    void paintEvent(QPaintEvent *event);


};

#endif // WIDGET_H
