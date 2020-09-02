import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Spinbox Example")

    Grid {
        id: grid
        x: 23
        y: 24
        width: 259
        height: 59
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: 25
        columns: 2

        SpinBox {
            id: spinBox
        }

        Label {
            id: label
            text: qsTr("0")
            font.pointSize: 25
            font.bold: true
        }
    }

    Connections {
        target: spinBox
        onValueModified: {
            label.text = spinBox.value
        }
    }
}
