import bb.cascades 1.0
 
Container {
    layout: StackLayout {
    }
    background: Color.create("#c6f66f")
    Container {
        horizontalAlignment: HorizontalAlignment.Center
        TextArea {
            id: statusText
            objectName: "statusText"
            text: "Please wait while the application registers with BBM SP."
            editable: false
        }
        Button {
            id: continueButton
            objectName: "continueButton"
            visible: false
            text: "Continue"
            layoutProperties: StackLayoutProperties {
            }
            horizontalAlignment: HorizontalAlignment.Center
            onClicked: {
                nextLabel.visible = true;
            }
        }
        TextArea {
            id: nextLabel
            text: "Now you would display your application's main screen."
            visible: false
            backgroundVisible: false
            textStyle {
                color: Color.Black
                fontWeight: FontWeight.Bold
            }
        }
    }
}