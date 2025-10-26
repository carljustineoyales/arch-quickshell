import Quickshell
import QtQuick

import "../../../icons"

// TODO: Seperate the background
// TODO: Apply the HoverHandler fix
// TODO: Use variables for hex colors
// TODO: Change hardcoded width and height
Rectangle {
  id: root
  implicitWidth: row.implicitWidth + 16
  implicitHeight: 26
  color: mouse.hovered ? "#474747" : "transparent"
  radius: 100

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

  // Components
  Row{
    id:row
    anchors.centerIn: parent
    spacing: 8

    // Icons
    VolumeIcon{}
    BluetoothIcon{}
    NetworkIcon{}
    PowerIcon{}
  }
}