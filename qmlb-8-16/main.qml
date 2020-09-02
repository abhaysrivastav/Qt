import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Simple login example")

    property string status: "Failed"
    property string username: "Corona"
    property string password: "QtQml"

    Popup {
        id: statusPopup
        width: 200
        height: 300
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside
        anchors.centerIn: parent
        modal: true
        focus: true

        Label {
            id: statusLabel
            anchors.centerIn: parent
            text: status
            font.bold: true
        }
    }

    Column {
        id: column
        width: 288
        height: 159
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Grid {
            id: grid
            width: 300
            height: 100
            spacing: 10
            columns: 2

            Label {
                id: label
                text: qsTr("User Name")
            }

            TextField {
                id: textField
                text: qsTr("")
            }

            Label {
                id: label1
                text: qsTr("Password")


            }
            TextField {
                id: textField1
                text: qsTr("")
                echoMode: TextInput.Password
            }
        }

        Button {
            id: button
            text: qsTr("Login")
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {

            if(username === textField.text && password === textField1.text)
                status = "Hello Corona !!!"
                statusPopup.open()
            }
        }
    }
}
