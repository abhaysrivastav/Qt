import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Text Area in Scroll View Example")

    Column {
        id: column
        spacing: 5
        anchors.fill: parent

        ScrollView {
            id: scrollView
            width: parent.width
            height: parent.height - (textField.height + 10)

            TextArea {
                id : textArea
                width: parent.width
                text : ""
            }
        }

        TextField {
            id: textField
            text: ""
            width: parent.width
            focus: true

            Keys.onReturnPressed: {
                textArea.append(textField.text)
                textField.clear()
                scrollView.contentItem.contentY = textArea.height - scrollView.contentItem.height
            }
        }
    }
}

































/*##^## Designer {
    D{i:1;anchors_height:400;anchors_width:200;anchors_x:220;anchors_y:40}
}
 ##^##*/
