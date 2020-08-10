import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: "Qt Designer Test Example"

    Rectangle {
        id: rectangle
        x: 67
        y: 106
        width: 100
        height: 100
        color: "#bd0b0b"

        MouseArea {
            id: mouseArea
            x: 0
            y: 0
            width: 100
            height: 100
        }
    }

    Rectangle {
        id: rectangle1
        x: 214
        y: 106
        width: rectangle.width
        height: rectangle.height
        color: "#0b46bd"

        MouseArea {
            id: mouseArea1
            x: 0
            y: 0
            width: 100
            height: 100
        }
    }

    Rectangle {
        id: rectangle2
        x: 347
        y: 106
        width: 100
        height: 100
        color: "#14bd0b"

        MouseArea {
            id: mouseArea2
            x: 0
            y: 0
            width: 100
            height: 100
        }
    }

    Connections {
        target: mouseArea
        onClicked: print("clicked Red")
    }

    Connections {
        target: mouseArea1
        onClicked: print("clicked Blue")
    }

    Connections {
        target: mouseArea2
        onClicked: print("clicked Green")
    }
}
