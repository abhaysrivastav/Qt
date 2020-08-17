import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.2

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Message Dialog Demo")

    Button {
        id: button
        text: qsTr("Push Me")
        z: 0
        antialiasing: false
        smooth: true
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        onClicked: {
            messageDialog.open()
        }
    }

    MessageDialog {
        id: messageDialog
        title: "What is your name"
        text: "Qt QML is very easy to learn !!!"
        icon: StandardIcon.Information

        standardButtons: StandardButton.Ok | StandardButton.Close
        onAccepted: {
            console.log("Ok is clicked")
        }

        onRejected: {
            console.log("Cancle is clicked")
        }
    }


}
