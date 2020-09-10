#include <QCoreApplication>
#include <QThread>
#include <QDebug>
#include <QTimer>
#include <QSharedPointer>
#include "test.h"

static QSharedPointer<QThread> sptr;
void timeout(){

    if(!sptr.isNull ()) // if underlying object is not there
    {
        qInfo() << "Time-out & stopping the thread";
        sptr.data ()->quit ();
    }

}
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);
    qInfo() << "Current Thread " << QThread::currentThread ();

    Test t;
    qInfo() << "Timer Thread : " << t.thread ();

    // Create a thread and move the object to that thread
    QThread thread;
    sptr.reset (&thread);
    t.moveToThread (&thread);
    qInfo() << "New Timer Thread : " << t.thread ();

    t.start ();

    qInfo() << "Thread State: " << thread.isRunning (); // Thread is sitting in wait or suspend state

    thread.start (); // Begin execution of thread by calling run(). start() is a slot

    QTimer timer;
    timer.singleShot (5000, &timeout );



    return a.exec();
}
