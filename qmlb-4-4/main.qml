import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Text QML Example")

    Text {
        id: myText
        text: qsTr("<html><b>Hello World</b></html>")
        anchors.centerIn: parent
        font.pixelSize: 40
        font.bold: true
        font.italic: true
        color: "red"
    }
}
