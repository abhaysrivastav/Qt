import QtQuick 2.0
import QtQuick.Controls 2.5


ComboBox {
    id: root
    model: ["red","green","blue","yellow","orange"]

    delegate : ItemDelegate {
        id: itemDelegate
        highlighted : highlightedIndex === index
        width: root.width

        contentItem : Row {
            id: row
            width: root.width
            spacing: 5

            Rectangle {
                id: rectangle
                width: 10
                height: 10
                border.color: "#ffffff"
                color: modelData
                border.width: 1
                anchors.verticalCenter: parent.verticalCenter
            }

            Text {
                id: name
                text: modelData
                elide: Text.ElideRight
                color: "black"
                verticalAlignment: Text.AlignVCenter
            }

        }

        background: Rectangle {
            width: root.width
            implicitHeight: 40
            implicitWidth: 100
            border.color: currentIndex === index ? "green" : "white"
            color: currentIndex === index ? "lightgreen" : "white"
        }
    }


}


















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
