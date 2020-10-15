#include <QCoreApplication>
#include <QDebug>
#include <QThread>
#include <QtConcurrent>
#include <QFuture>
#include <QFutureSynchronizer>

void doStuff(int value)
{
    for (int i= 0; i < 10; i++)
    {
        QThread::currentThread ()->msleep (100);
        qInfo() << "Thread " << value << " = " << i;
    }

}

void runthread()
{
    QFutureSynchronizer<void> sync;

    for (int i=0 ;i < 10; i++)
    {
        QFuture<void> future = QtConcurrent::run(&doStuff, i);
        sync.addFuture (future);
    }
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    runthread ();
    qInfo() << "Done !!!";
    return a.exec();
}
