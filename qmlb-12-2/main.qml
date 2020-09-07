import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        width: 298
        height: 266
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: lblStatus
            text: qsTr("Status")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            font.pointSize: 25
        }

        NumberPad {
            id: numberPad
            width: 100
            height: 100
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: lblStatus.text = value

        }
    }
}
