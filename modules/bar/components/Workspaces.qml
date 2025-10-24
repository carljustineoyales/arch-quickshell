import Quickshell
import Quickshell.Hyprland
import QtQuick

Rectangle {
  id: root
  implicitWidth: row.implicitWidth + 16
  implicitHeight: 20
  color: "#474747"
  radius: 100

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