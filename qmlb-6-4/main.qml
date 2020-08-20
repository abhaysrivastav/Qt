import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Opacity and Opacity Animator")
    color: "black"

    Image {
        id: image
        anchors.fill: parent
        source: "qrc:/images/OIP.jpg"
        //fillMode: Image.PreserveAspectFit
        opacity: 1
    }

    SequentialAnimation {
        loops: Animation.Infinite
        running: true

        OpacityAnimator{
            target: image
            from: 0
            to: 1
            duration: 2000
        }

        OpacityAnimator{
            target: image
            from: 1
            to: 0
            duration: 1000
        }
    }
}














