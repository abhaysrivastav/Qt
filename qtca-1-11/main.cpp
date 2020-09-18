#include <QCoreApplication>
#include <QtConcurrent/QtConcurrent>
#include <QDebug>

//Programs written with QtConcurrent automatically adjust the number of threads used according to the number of processor cores available

int do_map(int value)
{
    qInfo() << "Do Stuff : " << value;
    int num = value;
    return num;
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    // Created the list and added the ints into it.

    QList<int> values;
    for (int i =0; i <9; i++) {
        values << i;
    }

    qInfo() << "Starting blocked";

    QList<int> updated = QtConcurrent::blockingMapped(values, &do_map); // Apply do_map() function for each item in values and return output sequence.
    // main thread will be blocked at the moment and apply the function and it will resume again.

    qInfo() << updated;
    qInfo() << "Finished";

    return a.exec();
}
