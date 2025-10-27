import Quickshell
import Quickshell.Io
import QtQuick

Item{
  id: root
 
  /************
  VARIABLES
  ************/

  implicitWidth: icon.width
  implicitHeight: icon.height

  property string networkType: "lan"
  property string fontFamily: "Material Symbols Rounded"
  property string fontColor: "#FDFDFD"
  property int fontSize: 16

  /************
  FUNCTIONS
  ************/

  Component.onCompleted: networkProc.running = true

  // TODO: Update icon when network connection changes
  Process {
    id: networkProc
    running: true
    command: ["sh","-c","nmcli -t -f TYPE,STATE d status | head -n 1"]
    stdout: StdioCollector {
      onStreamFinished: {
        let device = this.text
          console.log("Network:",device)
          if(device.includes("ethernet") && device.includes("connected")){
            networkType = "lan"
          } else if ((device.includes("wifi:") || device.includes("bt:")) && device.includes("connected")){
            networkType = "wireless"
          }
          else {
            networkType = "disconnected"
        }
      }
    }
  }

  /************
  LAYOUT
  ************/

  Rectangle{
    id: iconWrapper
    width: fontSize
    height: fontSize
    color: "transparent"

    Text {
      id: icon
      font.pixelSize: fontSize
      font.family: fontFamily
      color: fontColor
      text: networkType === "lan" ? "router" : networkType === "wireless" ? "network_wifi" : "router_off"
    }
  }

}
