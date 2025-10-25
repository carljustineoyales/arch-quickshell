import Quickshell
import QtQuick

import "components"

Variants {
  model: Quickshell.screens

  delegate: Component {
  
    //  Bar
    PanelWindow {
    required property ShellScreen modelData
      screen: modelData || null

      anchors {
        top: true
        left: true
        right: true
      }

      implicitHeight: 32
      color: "#000000"

      // Workspaces
      Workspaces {
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
      }

      // Clock
      Clock {
        anchors.centerIn: parent
      }

      // Tray
      Tray {
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
      }
    }
  }
}
