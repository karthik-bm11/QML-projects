import QtQuick 2.15

Item {
    id:itm
    signal buttonClicked
       signal buttonClick
       width:rect.width
       height: rect.height
       property alias yrange:rect.y
       Rectangle{
           id:rect
           x:20;y:0
           width:text1.implicitWidth+10;height: text1.implicitHeight+10
           border.color:"black"
           Text{
               id:text1
               text:"+"
               font.pointSize: 20
               font.bold: true
           }
           MouseArea{
               anchors.fill:parent
               onClicked: {
                  itm.buttonClicked()
               }
           }
       }
       Rectangle{
           id:rect1
           border.color:"black"
           width:text2.implicitWidth+20;height: text2.implicitHeight+10
           x:60;y:0
           Text{
               id:text2
               text:"-"
               font.pointSize: 20
               font.bold: true
           }
           MouseArea{
               anchors.fill:parent
               onClicked: {
                  itm.buttonClick()
               }
           }
       }

    }
