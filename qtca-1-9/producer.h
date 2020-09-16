#ifndef PRODUCER_H
#define PRODUCER_H

#include <QObject>
#include <QThread>
#include <QRandomGenerator>
#include <QMutex>
#include <QDebug>

class Producer : public QObject
{
    Q_OBJECT
public:
    explicit Producer(QObject *parent = nullptr);
    void setData(QList<int>* data);
    void setMutex(QMutex* mutex);

signals:
    void ready();

public slots:
    void start();

private:

    QList<int>* data;
    QMutex* mutex;
};

#endif // PRODUCER_H
