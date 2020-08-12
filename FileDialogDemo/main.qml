import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.2
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("File Dialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Choose File or folder"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                fileDialogId.open()
            }
        }

        Text {
            id: name
            text: qsTr("User hasn't choosen any file or folder")
            wrapMode: Text.wrap
        }

        FileDialog {
            id: fileDialogId
            title: "Choose file"
            selectFolder: false

            onAccepted: {
                console.log("You chose " + fileUrl)
                name.text = fileUrl
            }

            onRejected: {
                console.log("Cancelled")
            }
        }
    }
}
