import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Anchor Examples")

    MyShape {
        id: shareCentral
        anchors.centerIn: parent
        text: "Hello"
    }

    MyShape {
        id: shareTop
        text: "Top"
        color: "blue"
        anchors.bottom: shareCentral.top
        anchors.left: shareCentral.left
    }

    MyShape {
        id: shareBottom
        text: "Bottom"
        color: "red"
        anchors.top: shareCentral.bottom
        anchors.left: shareCentral.left
    }

    MyShape {
        id: shareleft
        text: "Left"
        color: "green"
        anchors.right: shareCentral.left
        anchors.top: shareCentral.top
    }

    MyShape {
        id: shareRight
        text: "Right"
        color: "Yellow"
        anchors.left: shareCentral.right
        anchors.top: shareCentral.top
    }
}




















