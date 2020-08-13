import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        id: column
        width: 200
        height: 168
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 20

        Label {
            id: label
            text: qsTr("Call C++ slot")
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Button {
            id: buttonId
            text: "Click Me"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                testing.bark()
            }

        }

    }
}
