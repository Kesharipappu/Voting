import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 400
    height: 300

    property int clickCountA: 0
    property int clickCountB: 0
    property int clickCountC: 0
    property int clickCountD: 0

    function logClickCount(buttonName, count) {
        console.log(buttonName + " clicked " + count + " time(s).");
    }

    Column {
        anchors.centerIn: parent
        spacing: 10

        Button {
            text: "A"
            onClicked: {
                clickCountA++;
//                logClickCount("Button A", clickCountA);
            }
        }

        Button {
            text: "B"
            onClicked: {
                clickCountB++;
//                logClickCount("Button B", clickCountB);
            }
        }

        Button {
            text: "C"
            onClicked: {
                clickCountC++;
//                logClickCount("Button C", clickCountC);
            }
        }

        Button {
            text: "D"
            onClicked: {
                clickCountD++;
//                logClickCount("Button D", clickCountD);
            }
        }

        Button {
            text: "Submit"
            onClicked: {
                logClickCount("Button A", clickCountA);
                logClickCount("Button B", clickCountB);
                logClickCount("Button C", clickCountC);
                logClickCount("Button D", clickCountD);

            }
        }
    }
}
