import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Button Demo")

    RowLayout{
        anchors.left: parent.left
        anchors.right: parent.right
        y: 100

        Button {
            id : button1
            text: "Button1"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on Button 1")
            }
        }

        Button {
            id : button2
            text: "Button2"
            Layout.fillWidth: true
            onClicked: {
                console.log("Clicked on Button 2")
            }
        }

    }

}
