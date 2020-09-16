#include "consumer.h"

Consumer::Consumer(QObject *parent) : QObject(parent)
{

}

void Consumer::setData(QList<int>* data)
{
    this->data = data;
}

void Consumer::setMutex(QMutex* mutex)
{
    this->mutex = mutex;
}

void Consumer::setCondition(QWaitCondition* condition)
{
    this->condition = condition;
}

void Consumer::start()
{
    qInfo() << "Starting consumer on :  " << this->thread ();

    do{
        qInfo() << "Consuming on : " << this->thread ();
        mutex->lock ();

        // do something with data
        data->clear ();
        condition->wait (mutex); // Pause

        mutex->unlock ();
    }while(true);
}
