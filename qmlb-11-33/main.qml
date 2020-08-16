import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.3

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Call a qml slot from C++")

    Connections {
        target: testing
        onNotice: {
            console.log("SLot called from C++")
            lblstatus.text = data
        }
    }

    Column {
        id: column
        width: 228
        height: 159
        spacing: 25
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter

        Label {
            id: lblTitle
            text: qsTr("Connecting to Signals")
            font.pointSize: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Label {
            id: lblstatus
            text: qsTr("Status")
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 25
            font.bold: true
        }

        Row {
            id: row
            width: 200
            height: 400
            spacing: 25

            Button {
                id: btnStart
                text: qsTr("Start")

                onClicked: {
                    // Call a slot
                    testing.start()
                }
            }

            Button {
                id: btnStop
                text: qsTr("Stop")
                onClicked:{
                    // call a slot
                    testing.stop()
                }
            }
        }
    }
}

