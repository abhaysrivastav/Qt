#include "test.h"

Test::Test(QObject *parent) : QObject(parent)
{

}

int Test::number()
{
    qInfo() << "Called Number";
    return 42;
}

void Test::bark()
{
    qInfo() << "Bark bark bark";
}
