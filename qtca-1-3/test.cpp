#include "test.h"

test::test(QObject *parent) : QThread(parent)
{

}

void test::quit()
{
    ok = false;

}

void test::run()
{
    ok = true;

    for (int i = 0; i< 1000 ; i++) {
        qInfo() << i;
        this->sleep (1);
        //!  This is bad because the code become unpredicatable
        if(!ok) break;
    }

    qInfo() <<  "Finished";
}
