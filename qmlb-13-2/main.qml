import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    function convert(){
        var value = txtFrom.text
        var ret = 0

        switch(comboBox.currentIndex) {

        case 0: //inches to feet
            ret = inch_to_feet(value)
            break;
        case 1: // feet to inches
            ret = feet_to_inch(value)
            break;
        }
        lblStatus.text = ret
    }

    function inch_to_feet(value) {
        return value / 12
    }

    function feet_to_inch(value) {
        return value * 12
    }

    Column {
        id: column
        width: 269
        height: 136
        spacing: 10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Grid {
            id: grid
            width: 400
            height: 132
            columns: 2
            spacing: 10

            Label {
                id: label
                text: qsTr("Type")
            }

            ComboBox {
                id: comboBox
                model : ListModel {
                    id: cbItem
                    ListElement {text: "Inches to feet"}
                    ListElement {text: "Feet to inches"}
                }
            }

            Label {
                id: label1
                text: qsTr("From: ")
            }

            TextField {
                id: txtFrom
                text: qsTr(" ")
            }

            Label {
                id: label2
                text: qsTr("Result: ")
            }

            Label {
                id: lblStatus
                text: qsTr("")
                font.pointSize: 15
                font.bold: true
            }
        }

        Button {
            id: button
            text: qsTr("Convert")
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: convert()
        }
    }
}
