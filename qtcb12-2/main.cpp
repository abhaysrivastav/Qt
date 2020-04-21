#include <QCoreApplication>
#include <QDebug>
#include "car.h"
#include "racecar.h"
#include "feline.h"


//Dynamic cast

//dynamic_cast can be used only with pointers and references to objects.
//Its purpose is to ensure that the result of the type conversion is a valid complete object of the requested class.

void testDrive(car* obj) {
    obj->drive();
    obj->stop();
}

void race(racecar* obj){
    obj->gofast();
}

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    racecar* player1 = new racecar(&a);
    testDrive(player1); //its converted automatically

    //The correct way to cast
    car* obj = dynamic_cast<car*>(player1);
    if(obj) testDrive(obj);

    //Will not work
    //feline* cat = dynamic_cast<racecar*>(player1);



    return a.exec();
}
