import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

// Import the class
import com.stryker.test 1.0
Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Register C++ class with QML")

    Test {
        id : test
        onStatus: {
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
            text: qsTr("Register a C++ Class")
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

        Button {
            id: button
            text: "Click Me"
            onClicked: {
                var num = Math.round( Math.random() * 100)
                test.work(num)
            }
        }
    }
}

