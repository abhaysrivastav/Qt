import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Slider")

    Grid {
        id: grid
        width: 400
        height: 85
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        rows: 1
        columns: 2

        Slider {
            id: slider
            width: 300
            value: 0
            stepSize: 0.1
        }

        Label {
            id: label
            text: "0"
            font.pointSize: 25
            font.bold: true
        }
    }

    Connections {
        target: slider
        onMoved: label.text = Math.round(slider.value * 100)
    }
}
