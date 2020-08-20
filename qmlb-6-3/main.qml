import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Animation Animator Example")

    Rectangle {
        id: rectangle
        width: 200
        height: 200
        color: "#ef0707"
        anchors.centerIn: parent
        clip: true

        Text {
            id: title
            text: qsTr("SCALE")
            font.pointSize: 50
            font.bold: true
            rotation: -45
            anchors.centerIn: parent
        }
    }

    SequentialAnimation {
        id : animation
        running: true
        loops: Animation.Infinite
        ScaleAnimator {
            id : aniShrink
            target: rectangle
            from: 1
            to : 0.5
            duration: 2000
            running: true
        }

        ScaleAnimator {
            id : aniGrow
            target: rectangle
            from: 0.5
            to : 1
            duration: 2000
            running: true
        }
    }
}





































/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:200;anchors_y:121}
}
 ##^##*/
