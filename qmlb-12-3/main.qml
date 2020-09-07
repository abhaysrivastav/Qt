import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Popup {
        id: popup
        modal: true
        focus: true
        anchors.centerIn: parent
        closePolicy: Popup.CloseOnEscape |  Popup.CloseOnPressOutside

        Label {
            id: lblStatus
            anchors.centerIn: parent
            text: ""
        }
    }

    Login {
        id: login
        width: 250
        height: 200
        anchors.centerIn: parent
        onLogin: {
            lblStatus.text = username
            console.log("User Name :" +username+ " Password : Kyu Bataye")
            popup.open()
        }
    }
}
