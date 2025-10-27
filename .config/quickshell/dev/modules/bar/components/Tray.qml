import Quickshell
import QtQuick

import "../../../icons"

// TODO: Apply the HoverHandler fix
// TODO: Use variables for hex colors
// TODO: Change hardcoded width and height
Item{
  id: root

  /************
  VARIABLES
  ************/

  implicitWidth: row.implicitWidth + 16
  implicitHeight: 26
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
  LAYOUT
  ************/
 
  Row{
    id:row
    anchors.centerIn: parent
    spacing: 8
    z: 2

    // Icons
    VolumeIcon{}
    BluetoothIcon{}
    NetworkIcon{}
    PowerIcon{}
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
