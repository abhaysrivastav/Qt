#include <QCoreApplication>
#include <QTimer>
#include <QSharedPointer>
#include "test.h"

static QSharedPointer<test> sptr;

void timeout()
{
    if(!sptr.isNull ()){
        qInfo() << "Timeout stopping Thread";
        sptr.data ()->quit ();
    }
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    test thread;
    sptr.reset (&thread);
    thread.start (); // start() : Begin execution of thread by calling run(), the operating system will schedule the thread according to the priority.

    QTimer timer;
    timer.singleShot (5000, &timeout);
    return a.exec();
}

// This is not very thread safe, it can run on one machine but can fail on other
