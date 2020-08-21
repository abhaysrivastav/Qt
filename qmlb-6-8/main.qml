import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 1920
    height: 1080
    title: qsTr("Transform and Translate Example")

    Item {
        id: root
        rotation: 0
        anchors.centerIn: parent

        Rectangle {
            id: yellowRect
            color: "yellow"
            width: 300
            height: 300
            radius: width
            opacity: 0.5
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent
            transform:  Translate {y: 100; x:100}
        }

        Rectangle {
            id: blueRect
            color: "blue"
            width: 300
            height: 300
            radius: width
            opacity: 0.5
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent
            transform:  Translate {y: -100}
        }

        Rectangle {
            id: redRect
            color: "red"
            width: 300
            height: 300
            radius: width
            opacity: 0.5
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent
            transform:  Translate {y: 100; x:-100}
        }

        Rectangle {
            id: centerArea
            color: "white"
            width: 50
            height: 50
            radius: width
            opacity: 1
            border.width: 2
            border.color: "black"
            anchors.centerIn: parent

            Rectangle {
                id: centerCircle
                color: "gray"
                width: 5
                height: 5
                radius: width
                opacity: 1
                border.width: 2
                border.color: "black"
                anchors.centerIn: parent
            }
        }

        RotationAnimator {
            target: root
            from: 360
            to : 0
            duration: 5000
            direction: RotationAnimator.Counterclockwise
            loops: Animation.Infinite
            running: true
        }
    }

}
