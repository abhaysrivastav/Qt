#include "test.h"

Test::Test(QObject *parent) : QObject(parent)
{

}

void Test::timeout()
{
    qInfo() << QDateTime::currentDateTime ().toString ();
}

void Test::start()
{
    connect (&timer, &QTimer::timeout, this, &Test::timeout);
    timer.setInterval (1000);
    timer.start ();
}
