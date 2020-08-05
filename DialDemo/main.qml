import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 1920
    height: 1080
    title: qsTr("Dial Demo")

    Column {

        width: parent.width
        spacing: 40
        anchors.centerIn: parent
        Label {
             text: "Dial Demo test"
             font.pixelSize: 22
             font.italic: true
             anchors.horizontalCenter:parent.horizontalCenter
         }

        Dial {
            anchors.horizontalCenter: parent.horizontalCenter
            from: 1
            to: 100
            value: 50

            onValueChanged: {
                console.log("Current Value" + Math.floor(value))
            }
        }
    }
}
