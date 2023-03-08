import QtQuick 2.11
import QtQuick.Window 2.11

Window {
  width: 800; height: 480
  color : "white"
  visible:true
  property bool value:true
  Rectangle {
    id: rect1
    width: 80
    height: width + 40
    color:"beige"
    border.width: 2
    border.color: "black"
       MouseArea {
        anchors.fill :parent
        onDoubleClicked: {
          rect1.width = 80
          rect1.height = rect1.width +40
          value = false
        }

      }
    }

  Rectangle {
   id: rect3
   width: 80
   height: 60
   color:"White"
   border.width: 2
   border.color: "black"
   anchors.bottom: parent.bottom
   anchors.left: parent.left
       Text {
           id : txt
           text: "Increase"
           color:"black"
           anchors.centerIn:parent
         }
      MouseArea {
        anchors.fill :parent
        onClicked:{
          if(rect1.width < 200 && value == true ) { rect1.width = rect1.width + 10; }
        }
       }

   }


  Rectangle {
   id: rect5
   width: 80
   height: 60
   color:"white"
   border.width: 2
   border.color: "black"
   anchors.bottom: parent.bottom
   anchors.right: parent.right
       Text {
           id : decreasetextid
           text: "Decrease"
           color:"black"
           anchors.centerIn:parent
         }
           MouseArea {
            anchors.fill :parent
            onClicked:{
              if(rect1.width >50 && value == true ) { rect1.width = rect1.width - 10; }

            }
           }


  }


}
