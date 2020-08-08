import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Frame Demo")

    // Frame is used when we need to do logical grouping of visual items

    Frame {
        anchors.centerIn: parent

        ColumnLayout {
            anchors.fill: parent
            Button {
                text: "Button 1"
            }
            Button {
                text: "Button 2"
            }
            Button {
                text: "Button 3"
            }
        }
    }

}
