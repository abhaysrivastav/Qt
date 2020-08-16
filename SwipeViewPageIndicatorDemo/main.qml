import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 1920
    height: 1080
    title: qsTr("Swipe View Page Indicator Demo")

    SwipeView {
        id : swipeViewId
        anchors.fill : parent
        currentIndex: pageIndicatorId.currentIndex

        Image {
            id: image1
            source: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Qt_logo_2016.svg/1200px-Qt_logo_2016.svg.png"
        }

        Image {
            id: image2
            source: "https://miro.medium.com/max/1200/1*vnBrJV3eXRVO8vSZaCf5dQ.jpeg"
        }

        Image {
            id: image3
            source: "https://s3.amazonaws.com/images.mentor.com/embedded/qt-gui.png"
        }
        Image {
            id: image4
            source: "http://doc.qt.io/qt-4.8/images/qtdemo.png"
        }
    }

    PageIndicator {
        id : pageIndicatorId
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        currentIndex: swipeViewId.currentIndex
        interactive: true
        count: swipeViewId.count
    }
}
