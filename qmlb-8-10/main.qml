import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Frames and pop-up example")

    Popup {
        id: popup
        anchors.centerIn: parent
        width: 200
        height: 200
        modal: true
        focus: true
        closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutside

        Column {
            spacing: 25
            anchors.fill: parent

            Label {
                id : lblQt
                text: "Qt Selected : " + checkBoxQt.checked
            }

            Label {
                id : lblC
                text: "C++ Selected : " + checkBoxC.checked
            }

            Label {
                id : lblQml
                text: "Qt Selected : " + checkBoxQml.checked
            }

            Button {
                id : closeButton
                text: " Close"
                onClicked: popup.close()
            }
        }
    }

    Frame {
        id: frame
        x: 215
        y: 57
        width: 170
        height: 266
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Column {
            id: column
            spacing: 25
            anchors.fill: parent

            CheckBox {
                id: checkBoxQt
                text: qsTr("Qt")
            }

            CheckBox {
                id: checkBoxC
                text: qsTr("C++")
            }

            CheckBox {
                id: checkBoxQml
                text: qsTr("QML")
            }

            Button {
                id: button
                text: qsTr("Learn")
                onClicked: popup.open()
            }
        }
    }
}


