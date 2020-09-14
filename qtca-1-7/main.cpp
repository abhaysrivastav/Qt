#include <QCoreApplication>
#include <QThread>
#include <QThreadPool>
#include <QMutex>
#include "counter.h"
#include "worker.h"
#include <QDebug>

// Counter is going to count and worker is going to modify the count.


int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Counter counter;
    QMutex mutex(QMutex::Recursive); // In this mode, a thread can lock the same mutex multiple times and the mutex won't be unlocked until a corresponding number of unlock() calls have been made.
    QThreadPool* pool = QThreadPool::globalInstance ();
    /* QThreadPool manages collection of QThreads. */

    qInfo() << "Count : "  << counter.count ();

    for ( int i = 0; i < pool->maxThreadCount (); i++ ) {
        Worker *worker = new Worker(&a, &counter, &mutex);
        worker->setAutoDelete (true);
        pool->start (worker);
    }

    pool->waitForDone ();
    qInfo() << "Done, the Count is : " << counter.count ();

    return a.exec();
}
