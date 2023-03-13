import QtQuick 2.12

import QtQuick.Controls 2.12
Item{
    id:page1
    width: win.width;height: win.height

    property double count1:10
    property double count2 : -20
    property double count3: count1
    property double count4: count2


    Image{
        id:bgimg2
        source: "https://wallpapers.com/images/hd/dark-wall-with-lights-lcejwtpvwo4ajtta.jpg"
        width: parent.width;height: parent.height
        visible: true
    Row{
        id:rectrow
        spacing:220
    Rectangle{
        id:rect1
        color: "tan"
        radius: 10
        width: 200;height: width
        border.color: "black"
        Rectangle{
            id:numrect
            width: parent.width-100;height: parent.height-100
            color: "white"
            radius: 5
            anchors.centerIn: parent
            border.color: "black"

            Text{
                id:ptext
                color:"black"
                text: count1
                font.pointSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                pressAndHoldInterval: 3000

                onPressed: {
                    srect1.visible=true
//                    rect1.opacity=0.5
//                    rect1.enabled=false
                    rect2.opacity=0.5
                    rect2.enabled=false
                }


            }

        }

        Column{
            id:btncol
            spacing: 10
            anchors.right: parent.right;anchors.rightMargin: 5
            anchors.top: parent.top;anchors.topMargin: 5
            Rectangle{
                id:incbtnrect
                color: "gray"
                radius: 10
                width: 35;height: width

                Text {
                    id: incbtn
                    text: qsTr("^")
                    color: "white"
                    font.bold: true
                    font.pointSize: 20
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(count1<20){
                        count1++}
                        incbtnrect.color="skyblue"
                        numrect.color="red"

                }

            }
        }

            Rectangle{
                id:decbtnrect
                color: "gray"
                radius: 10
               width: 35;height: width

                Text {
                    id: decbtn
                    text: qsTr("v")
                    color: "white"
                    //font.bold: true
                    font.pointSize: 20
                    anchors.centerIn: parent
              }
                MouseArea{
                    anchors.fill: parent
                   onClicked: {
                       if(count1>10){
                        count1--}
                        decbtnrect.color="skyblue"
                        numrect.color="red"
          }


}}

            Rectangle{
                id:resetbtnrect
                color: "gray"
                radius: 10
               width: 35;height: width

                Text {
                    id: resetbtn
                    text: qsTr("R")
                    color: "white"
                    //font.bold: true
                    font.pointSize: 15
                    anchors.centerIn: parent
              }
                MouseArea{
                    anchors.fill: parent
                   onClicked: {
                             count1=10
                             resetbtnrect.color="skyblue"
                             numrect.color="red"
          }
            }
}
    }
}

    Rectangle{
        id:rect2
        color: "tan"
        radius: 10
        width: 200;height: width
        border.color: "black"
        Rectangle{
            id:numrect2
            width: parent.width-100;height: parent.height-100
            color: "white"
            radius: 5
            anchors.centerIn: parent
            border.color: "black"

            Text{
                id:ntext
                color:"black"
                text: count2
                font.pointSize: 20
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                pressAndHoldInterval: 3000

                onPressed: {
                    srect2.visible=true
                    rect1.opacity=0.5
                    rect1.enabled=false
                }
            }


        }

        Column{
            id:btncol2
            spacing: 10

            anchors.right: parent.right;anchors.rightMargin: 5
            anchors.top: parent.top;anchors.topMargin: 5
            Rectangle{
                id:incbtnrect2
                color: "gray"
                radius: 10
                width: 35;height: width

                Text {
                    id: incbtn2
                    text: qsTr("^")
                    color: "white"
                    font.bold: true
                    font.pointSize: 20
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        if(count2<0){
                        count2++}
                        incbtnrect2.color="skyblue"
                        numrect2.color="green"

                }

            }
        }

            Rectangle{
                id:decbtnrect2
                color: "gray"
                radius: 10
               width: 35;height: width

                Text {
                    id: decbtn2
                    text: qsTr("v")
                    color: "white"
                    //font.bold: true
                    font.pointSize: 20
                    anchors.centerIn: parent
              }
                MouseArea{
                    anchors.fill: parent
                   onClicked: {
                       if(count2<=0){
                        count2--}
                        decbtnrect2.color="skyblue"
                        numrect2.color="green"
          }


}}

            Rectangle{
                id:resetbtnrect2
                color: "gray"
                radius: 10
               width: 35;height: width

                Text {
                    id: resetbtn2
                    text: qsTr("R")
                    color: "white"
                    //font.bold: true
                    font.pointSize: 15
                    anchors.centerIn: parent
              }
                MouseArea{
                    anchors.fill: parent
                   onClicked: {
                             count2=-20
                             resetbtnrect2.color="skyblue"
                             numrect2.color="green"
          }
            }
}
    }
}
    }

    Rectangle{
        id:srect1
        color: "beige"
        visible: false
        width: 300;height: 150
        x:170;y:250
        Text {
            id: refno
            text:count3
            color: "black"
            x:70;y:30
            font.pointSize: 20

        }
//        anchors.centerIn: parent
        radius: 5
        Rectangle{
            id:okbtnrect
            width: 50;height:30
            color: "lightgray"
            x:60;y:100
            Text {
                id: okbtn
                text: qsTr("Ok")
                font.bold: true
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    count1=count3
                }
            }
        }
        Rectangle{
            id:cbtnrect
            width: 50;height:30
            color: "lightgray"
            x:150;y:100
            Text {
                id: cbtn
                text: qsTr("Cancel")
                font.bold: true
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    srect1.visible=false
                    rect2.enabled=true
                    rect2.opacity=1.0
                }
        }
        }

        Rectangle{
            id:slider
            width: 7;height:100
            x:250;y:20
            radius: 10
            color: "gray"

            Rectangle{
                id:slidebtn
                color: "black"
                radius: 80

                width: parent.width+20;height: 15


                onYChanged: {
                    if(slidebtn.y===slider.height+5){
                        count3+=0.5}
                    else if(slidebtn.y===20){
                        count3+=0.5}
                    else if(slidebtn.y===30){
                        count3+=0.5}
                    else if(slidebtn.y===40){
                        count3+=0.5}
                    else if(slidebtn.y===50){
                        count3+=0.5}
                    else if(slidebtn.y===60){
                        count3+=0.5}
                    else if(slidebtn.y===70){
                        count3+=0.5}
                    else if(slidebtn.y===80){
                        count3+=0.5}
                    else if(slidebtn.y===100){
                        count3+=0.5}


}


                MouseArea{
                    anchors.fill: parent
                    drag.target: slidebtn
                    drag.axis: Drag.YAxis
                    drag.minimumY: 0
                    drag.maximumY:slider.height-15
                }
             }


        }

    }

    Rectangle{
        id:srect2
        color: "beige"
        visible: false
        width: 300;height: 150
        x:170;y:250
        Text {
            id: refno2
            text:count4
            color: "black"
            x:70;y:30
            font.pointSize: 20

        }
//        anchors.centerIn: parent
        radius: 5
        Rectangle{
            id:okbtnrect2
            width: 50;height:30
            color: "lightgray"
            x:60;y:100
            Text {
                id: okbtn2
                text: qsTr("Ok")
                font.bold: true
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    count2=count4
                }
            }
        }
        Rectangle{
            id:cbtnrect2
            width: 50;height:30
            color: "lightgray"
            x:150;y:100
            Text {
                id: cbtn2
                text: qsTr("Cancel")
                font.bold: true
                anchors.centerIn: parent
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    srect2.visible=false
                    rect1.enabled=true
                    rect1.opacity=1.0
                }
        }
        }

        Rectangle{
            id:slider2
            width: 7;height:100
            x:250;y:20
            radius: 10
            color: "gray"

            Rectangle{
                id:slidebtn2
                color: "black"
                radius: 80

                width: parent.width+20;height: 15


                onYChanged: {
                    if(slidebtn2.y===slider2.height+5){
                        count4-=0.5}
                    else if(slidebtn2.y===20){
                        count4-=0.5}
                    else if(slidebtn2.y===30){
                        count4-=0.5}
                    else if(slidebtn2.y===40){
                        count4-=0.5}
                    else if(slidebtn2.y===50){
                        count4-=0.5}
                    else if(slidebtn2.y===60){
                        count4-=0.5}
                    else if(slidebtn2.y===70){
                        count4-=0.5}
                    else if(slidebtn2.y===80){
                        count4-=0.5}
                    else if(slidebtn2.y===100){
                        count4-=0.5}


}


                MouseArea{
                    anchors.fill: parent
                    drag.target: slidebtn2
                    drag.axis: Drag.YAxis
                    drag.minimumY: 0
                    drag.maximumY:slider2.height-15
                }
             }


        }

    }

}
}



