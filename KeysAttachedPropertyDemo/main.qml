import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Keys Attached Property ")

    Rectangle {
        id : containedRect
        anchors.centerIn: parent
        width: 300
        height:50
        color: "dodgerblue"
        focus: true

        Keys.onPressed:  {
            if(event.key === Qt.Key_Left)
            {
            console.log("Left Key is pressed")
            }else{
            console.log("Pressed any other key")
            }
        }
    }
}
