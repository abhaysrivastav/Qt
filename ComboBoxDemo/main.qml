import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

// Use Case - How to use Combobox ?
// How to update model from  combobox if item does not exist in model
//Capture the selected item from ComboBox

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Combobox Demo")

    Column {
        spacing: 40
        width: parent.width
        y: 50

        Label {
            text: "Non editable combo"
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            width: parent.width
        }

        ComboBox {
            id: nonEditableCombo
            model: ["One", "Two", "Three"]
            anchors.horizontalCenter: parent.horizontalCenter
            onActivated: {
                console.log("["+currentIndex+"]" + currentText + " is activated")
            }
        }

        Label {
            text: "Editable combo"
            wrapMode: Label.Wrap
            horizontalAlignment: Qt.AlignHCenter
            width: parent.width
        }

        ComboBox {
            id: editableCombo
            editable: true
            textRole: "text"
            model: ListModel {
                id: model

                ListElement { text: "Dog"; location: "ABC"}
                ListElement { text: "Chicken"; location: "PQR"}
                ListElement { text: "Cat"; location: "XYZ"}

            }
            anchors.horizontalCenter: parent.horizontalCenter
            onActivated: {
                console.log("["+currentIndex+"]" + currentText + " is activated")
            }
            onAccepted: {
                if(find(editText) === -1)
                {
                    model.append({text: editText,location : "MNQ"})
                }
            }
        }

    }
}
