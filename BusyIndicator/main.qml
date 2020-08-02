import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Busy Indicator Demo")

    ColumnLayout {
        //anchors.centerIn: parent
        width: parent.width
        height: parent.height


        BusyIndicator {
            id : busyindicatorId
            Layout.alignment: Qt.AlignHCenter
            running: false
            visible: false
        }

        ColumnLayout {
            Button {
                id: button1
                text: "Running"
                Layout.fillWidth: true
                onClicked: {
                    busyindicatorId.running = true
                    busyindicatorId.visible = true
                }
            }

            Button {
                id: button2
                text : "Not Running"
                Layout.fillWidth: true
                onClicked: {
                busyindicatorId.running = false
                busyindicatorId.visible = false
                }
            }
        }


    }
}
