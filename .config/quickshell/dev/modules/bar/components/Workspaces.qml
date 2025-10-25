import Quickshell
import Quickshell.Hyprland
import QtQuick

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

  Row {
    id: row
    anchors.centerIn: parent
    spacing: 8

    Repeater {
      model: Hyprland.workspaces

      delegate: Rectangle {
        width: modelData.focused ? 30 : 6
        height: modelData.focused ? 8 : 6
        color: modelData.focused ? "#FDFDFD" : "#7F7F7F"
        radius: 6
        transform: Translate {
          y: (8 - height) / 2
        }
      }
    }
  }
}