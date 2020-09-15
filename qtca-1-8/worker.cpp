#include "worker.h"

Worker::Worker(QObject *parent, QStringList *data, QSemaphore* sema, int position) : QObject(parent)
{
    this->sema = sema;
    this->data = data;
    this->position = position;
}

void Worker::run ()
{
    if(!sema || !data){
        return;
    }

    QString t;
    t.sprintf ("%08p", QThread::currentThread ());
    sema->acquire (1); //acquires 1 resource

    /* Tries to acquire n resources guarded by the semaphore.
    if n> available this call will block untill enough resources are available */

    data->replace (position, QString::number (position) + " - " +t);
    sema->release (); // release the resources

    qInfo() << t << "Finished : " << position;
}
