import QtQuick 2.0
import QtQuick.Controls 2.3

Item {

    signal login(string username, string password)
    width: 250
    height: 200

    Column {
        id: column
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        spacing: 10
        anchors.fill: parent

        Label {
            id: label
            text: qsTr("User Name")
        }

        TextField {
            id: textUserName
            text: qsTr(" ")
            width: parent.width
        }

        Label {
            id: label1
            text: qsTr("Password")
        }

        TextField {
            id: textPassword
            text: qsTr("")
            width: parent.width
            echoMode: TextInput.Password
        }

        Button {
            id: button
            text: qsTr("Submit")
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    Connections {
        target: button
        onClicked: {
            login(textUserName.text, textPassword.text)
        }
    }

}



































/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:250}
}
 ##^##*/
