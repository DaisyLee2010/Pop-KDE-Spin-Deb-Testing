import QtQuick 2.0
import org.kde.plasma.core 2.0

Rectangle {
    width: 200
    height: 200

    ListView {
        anchors.fill: parent
        model: ["NVIDIA Graphics", "Hybrid Graphics", "Intel Graphics"]
        delegate: Rectangle {
            width: parent.width
            height: 30
            Text {
                text: modelData
                anchors.centerIn: parent
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    if (modelData === "NVIDIA Graphics") {
                        console.log("Setting graphics to NVIDIA")
                        // Set graphics to NVIDIA
                        var proc = Qt.createQProcess();
                        proc.startDetached("sudo", ["system76-power", "graphics", "nvidia"]);
                    } else if (modelData === "Hybrid Graphics") {
                        console.log("Setting graphics to Hybrid")
                        // Set graphics to Hybrid
                        var proc = Qt.createQProcess();
                        proc.startDetached("sudo", ["system76-power", "graphics", "hybrid"]);
                    } else if (modelData === "Intel Graphics") {
                        console.log("Setting graphics to Intel")
                        // Set graphics to Intel
                        var proc = Qt.createQProcess();
                        proc.startDetached("sudo", ["system76-power", "graphics", "integrated"]);
                    }
                }
            }
        }
    }
}
