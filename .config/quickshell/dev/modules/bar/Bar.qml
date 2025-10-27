import Quickshell
import Quickshell.Io
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
      Row {
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter

        Workspaces {
          id:workspaces
          bgColor: "transparent"

          function onClickedHandler()
          {
            console.log("onClickedHandler")
            workspaceProc.running = true
          }

          MouseArea {
            anchors.fill: parent
            hoverEnabled: true
            onClicked: parent.onClickedHandler()

            // Hover effect
            cursorShape: Qt.PointingHandCursor
            onEntered: parent.bgColor = "#474747"
            onExited: parent.bgColor = "transparent"
          }

          Process {
            id: workspaceProc
            running: false
            command: ["sh", "-c", "rofi -show drun -show-icons"]
          }
        }
      }

      // Clock
      Row {
        anchors.centerIn: parent
        anchors.verticalCenter: parent.verticalCenter
        Clock { }

      }

      // Tray
      Row {
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        Tray { }
      }
    }
  }
}
