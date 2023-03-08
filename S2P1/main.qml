import QtQuick 2.11

Window {
  width: 640; height: 480
  color: "black"
  visible: true
  property string textToShow:"Hello"
  property color acolor : "white"
  Row {
    id: row1
    anchors.centerIn: parent
    spacing:20

    Rectangle {
      id :redrect
      width: 150
      height:150
      radius:100
      color :"red"
      MouseArea {
        anchors.fill :parent
        onClicked : {
          textToShow="red"
          acolor="red"
        }
      }
    }
    Rectangle {
      id :greenrect
      width: 150
      height:150
      radius:100
      color :"green"
      MouseArea {
        anchors.fill :parent
        onClicked : {
          textToShow="green"
          acolor="green"
        }
      }
    }
    Rectangle {
      id :bluerect
      width: 150
      height:150
      radius:100
      color :"blue"
      MouseArea {
        anchors.fill :parent
        onClicked : {
          textToShow="blue"
          acolor="blue"
        }
      }
    }
    Rectangle {
      id :rect
      width: 150
      height:150
      color: acolor
      Text {
        id : textid
        text: textToShow
        color:"black"
        anchors.centerIn:parent

      }
    }
  }
}

