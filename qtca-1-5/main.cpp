#include <QCoreApplication>
#include <QThread>
#include <QThreadPool>
#include "counter.h"
#include <QDebug>

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QThread::currentThread ()->setObjectName ("Main");
    QThreadPool *pool = QThreadPool::globalInstance ();
    /*
      1) QThreadPool manages and recycles individual QThread objectto help
      reduce thread creation costs in program that use thread.
      2) Each Qt application has one global QThreadPool object, which can be
      accessed by calling globalInstance()
      3) To use one of the QThreadPool threads, subclass QRunnable and implement
      the run() virtual function.Then create an object of that class and pass it to
      QThreadPool ::start().
    */

    for (int i = 0; i < 100; i++) {
        counter *c = new counter;
        c->setAutoDelete (true);
        pool->start (c);
    }
    return a.exec();
}
