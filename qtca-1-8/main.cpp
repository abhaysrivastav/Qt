#include <QCoreApplication>
#include <QDebug>
#include <QThreadPool>
#include <QSemaphore>
#include <QStringList>
#include "worker.h"

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QStringList data;

    for (int i =0; i < 100; i++) {
        data.append (QString::number (i));
    }

    QThreadPool *pool = QThreadPool::globalInstance ();
    qInfo() << "Max Thread Count " << pool->maxThreadCount ();
    QSemaphore sema(100); // A semaphore that guards 100 resources

    for (int i = 0;i < data.length (); i++)
    {
        Worker *worker = new Worker(nullptr, &data, &sema, i);
        worker->setAutoDelete (true); // Automatically delete the runnable after calling run()
        pool->start (worker); // reserve a thread to run worker runnable
    }

    pool->waitForDone ();

    foreach(QString string, data)
    {
        qInfo() << string;
    }
    return a.exec();
}
