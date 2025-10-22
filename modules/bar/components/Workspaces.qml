import Quickshell
import Quickshell.Hyprland
import QtQuick

Rectangle {
  id: root
  // color: "#212121"
  // radius: 4
  implicitWidth: row.implicitWidth + 16
  // implicitHeight: row.implicitHeight + 8

  Row {
    id: row
    anchors.centerIn: parent
    spacing: 8

    Repeater {
      model: Hyprland.workspaces

      delegate: Rectangle {
        width: modelData.focused ? 30 : 6
        height: modelData.focused ? 8 : 6
        color: modelData.focused ? "#FFFFFF" : "#7F7F7F"
        radius: 6
        transform: Translate {
          y: (8 - height) / 2
        }
      }
    }
  }
}