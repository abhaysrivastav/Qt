import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Dialogs 1.3
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Font Dialog Demo")

    Column {
        spacing: 20
        anchors.centerIn: parent

        Button {
            text: "Change Font"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                fontDialogId.open()
            }
        }
        Text {
            id: textId
            text: qsTr("Hello World !!!")
        }

        FontDialog {
            id: fontDialogId
            title: "Select a font"

            onAccepted: {
                console.log( "Selected font is " + font )
                textId.font = fontDialogId.font
            }

            onRejected: {
                console.log(" No font is selected ")
            }
        }
    }
}
