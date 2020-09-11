#ifndef MANAGER_H
#define MANAGER_H

#include <QObject>
#include <QThread>
#include <QDebug>
#include "counter.h"

/* Manager  class is creating the multiple thread and will manage those threads.
   Each thread will have different counter object.
*/
class manager : public QObject
{
    Q_OBJECT
public:
    explicit manager(QObject *parent = nullptr);
    void start();

signals:

public slots:
    void started();
    void finished();

private:
    QList<QThread*> threads;
};

#endif // MANAGER_H
