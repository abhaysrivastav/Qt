#include <QCoreApplication>
#include <QDebug>
#include <QFuture>
#include <QFutureWatcher>
#include <QList>
#include <QtConcurrent>

void multiply(int &value)
{
    qInfo() << "Called : " << value;
    value = value * 10;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    QList<int> list;
    for (int i =0 ; i< 100; i++)
    {
        list.append (i);
    }

    QFutureWatcher<void> watcher;
    QFuture<void> future = QtConcurrent::map(list, &multiply);
    watcher.setFuture (future);
    qInfo() << "Back in Main !!! ";

    watcher.waitForFinished ();
    qInfo() << "Done !";
    qInfo() << list;

    return a.exec();
}
