import Quickshell
import Quickshell.Hyprland
import QtQuick

Item {
  id: root

  // property var filteredWorkspaces: Hyprland.workspaces.filter(
  //   workspace => workspace.id > 0 && !workspace.name.startsWith("spcial:")
  // )

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

  Row {
    id: row
    anchors.centerIn: parent
    spacing: 8

    //  Hyperland Workspaces
    Repeater {
      model: Hyprland.workspaces
      
      // TODO: Filter out Special workspace

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
    z: 2
  }

  // Background
  Rectangle{
    implicitWidth: row.implicitWidth + 16
    implicitHeight: 26
    color: mouse.hovered ? "#474747" : "transparent"
    radius: 100
    z: 1
  }
}