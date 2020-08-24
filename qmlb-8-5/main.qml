import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Check Delegate in a List View")

    Column {
        id: column
        width: 200
        height: 400
        anchors.centerIn: parent

        Label {
            id: label
            text: qsTr("Selected Here")
            font.pointSize: 25
        }

        ListView {
            width: 200
            height: 200
            model: ["Option A", "Option B", "Option C"]

            delegate:  CheckDelegate {
                text: modelData
                onCheckStateChanged: label.text = index + " - " + modelData + " = " + checked

            }

        }
    }
}

























/*##^## Designer {
    D{i:1;anchors_height:400;anchors_width:200}
}
 ##^##*/
