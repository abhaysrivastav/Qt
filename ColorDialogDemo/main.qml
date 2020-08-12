import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Color Dialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Choose Color"
            anchors.horizontalCenter: parent.horizontalCenter

            onClicked: {
                console.log("Choose color")
                colorDialogId.open()
            }
        }

        Rectangle {
            width: 200
            height: 200
            id : rectangleId
            border.color: "black"
            border.width: 2
            anchors.horizontalCenter: parent.horizontalCenter
        }

        ColorDialog {
            id: colorDialogId
            title: "Please choose color"
            onAccepted: {
                console.log("User choose " + color)
                rectangleId.color = color
            }
            onRejected: {
                console.log("User Rejected")
            }
        }
    }
}
