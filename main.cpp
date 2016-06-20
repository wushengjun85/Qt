#include <QtGui/QApplication>
#include "widget.h"

#include"can.h"
#include"canread.h"

int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    /*
    int master;
    int mycanid;
   Canread canread;
   canread.initcan(&mycanid);
   canread.test_can_rw(mycanid,master);
   canread.shutdownfd(mycanid);
    */


    Widget w;
    w.show();
    return a.exec();
}
