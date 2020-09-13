#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>
#include <QDebug>
#include <QRunnable>
#include <QThread>
#include <QRandomGenerator>

class counter: public QRunnable
{

public:
    void run(); // run is called interenally by threadpool itself
};

#endif // COUNTER_H
