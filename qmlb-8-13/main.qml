import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Range Slider")

    Column {
        id: column
        x: 113
        y: 134
        width: 506
        height: 269
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: label1
            text: qsTr("X to Y")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 25
            font.bold: true
        }

        RangeSlider {
            id: rangeSlider
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            second.value: 0.75
            first.value: 0.25
        }


    }

    Connections {
        target: rangeSlider.first
        onValueChanged : {
            label1.text = Math.round(rangeSlider.first.value * 100) + "to" + Math.round(rangeSlider.second.value * 100)
        }
    }

    Connections {
        target: rangeSlider.second
        onValueChanged : {
            label1.text = Math.round(rangeSlider.first.value * 100) + "to" + Math.round(rangeSlider.second.value * 100)
        }
    }
}
