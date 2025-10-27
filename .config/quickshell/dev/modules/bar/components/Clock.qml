import Quickshell
import QtQuick

// TODO: Apply the HoverHandler fix
// TODO: Use variables for hex colors
// TODO: Change hardcoded width and height
Item{
  id: root

  /************
  VARIABLES
  ************/

  implicitWidth: row.implicitWidth + 16;
  implicitHeight: 26;
  
  // Event handlers
  // HoverHandler {
  //   id: stylus
  //   acceptedDevices: Pointer.Stylus
  //   cursorShape: Qt.CrossCursor
  // }

  HoverHandler {
    id: mouse
    acceptedDevices: PointerDevice.Mouse | PointerDevice.TouchPad
    cursorShape: Qt.PointingHandCursor
  }

  /************
  FUNCTIONS
  ************/

  SystemClock {
    id: clock
    precision: SystemClock.Seconds
  }

  /************
  LAYOUT
  ************/
 
  Row {
    id: row
    anchors.centerIn: parent
    spacing: 16
    z:2

    // Date
    Text {
      id: date
      text: Qt.formatDateTime(clock.date, "MMM dd")
      color: "#FDFDFD"
      font.pixelSize: 12
    }

    //  Time
    Text {
      id: time
      text: Qt.formatDateTime(clock.date, "hh:mm aP")
      color: "#FDFDFD"
      font.pixelSize: 12
    }
  }


  // Background
  Rectangle {
    implicitWidth: row.implicitWidth + 16
    implicitHeight: 26  
    color: mouse.hovered ? "#474747" : "transparent"
    radius: 100
    z: 1
  }
}