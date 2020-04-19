#include <QCoreApplication>
#include <QDebug>

enum Colors {black, red, green, blue};

//Precusor to "classes"
struct product
{
    int weight;
    double value;
    Colors color;
};

int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    product laptop; // no assignment!!!
    qInfo() << "Size of product: " << sizeof (laptop);

    laptop.color = Colors::green;
    laptop.value = 550.37;
    laptop.weight = 3;

    qInfo() << "Weight: " << laptop.weight;
    qInfo() << "Value: " << laptop.value;
    qInfo() << "Color: " << laptop.color;
    //qInfo() << "Laptop: " << laptop;
    return a.exec();
}
