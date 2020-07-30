import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Header Footer Highlight Demo")

    ListView {
        id : mListViewId
        anchors.fill: parent
        header: headerId
        footer: Rectangle {
            id : footerRectId
            width: parent.width
            height: 50
            color: "dodgerblue"
        }

        highlight: Rectangle {
            width: parent.width
            color: "blue"
            radius:  14
            border.color: "yellowgreen"
            z : 3
            opacity: 0.1
        }

        model : ["Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"]
        delegate: Rectangle {
            id : rectangleId
            width: parent.width
            height: 80
            color: "beige"
            border.color: "yellowgreen"
            radius: 10

            Text {
                id : textId
                anchors.centerIn: parent
                font.pointSize: 20
                text : modelData
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on :"+ modelData)
                    mListViewId.currentIndex = index
                }
            }
        }
    }

    Component {
        id : headerId

        Rectangle {
            id : headerRectId
            width: parent.width
            height: 50
            color: "yellowgreen"
            border.color: "#9EDDF2"
            border.width: 2

            Text {

                anchors.centerIn: parent
                text: qsTr("Months")
                font.pointSize: 20
            }
        }


    }

//    Component {
//        id : footerId

//        Rectangle {
//            id : footerRectId
//            width: parent.width
//            height: 50
//            color: "dodgerblue"
//        }
//    }

}
