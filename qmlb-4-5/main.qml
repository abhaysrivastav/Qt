import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Mouse Area Example")

    Rectangle {
        id: myArea
        color: "blue"
        width: 200
        height: 200
        anchors.centerIn: parent

        MouseArea {
            id: myMouse
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onClicked: {
                console.log("Clicked : " + mouse.button)
                if(mouse.button === Qt.LeftButton) parent.color = "green"
                if(mouse.button === Qt.RightButton) parent.color = "Red"
            }

            onDoubleClicked: {
                console.log("Double Click Event")
            }

        }
    }
}
