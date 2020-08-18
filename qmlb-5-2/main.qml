import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Object positioning using Z")


    MyShape {
        color: "red"
    }

    MyShape {
        color: "green"
    }

    MyShape {
        color: "blue"
    }
}
