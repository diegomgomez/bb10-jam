// Grid view with detail project template
import bb.cascades 1.0

// Item used by the list to present a small thumbnail image with text.

Container {
    layout: DockLayout {
    }
    Container {
        id: item
        scaleX: 1.0
        scaleY: 1.0
        topMargin: 0
        bottomMargin: 0
        leftMargin: 0
        rightMargin: 0
        topPadding: 0
        bottomPadding: 0
        leftPadding: 0
        rightPadding: 0
        verticalAlignment: VerticalAlignment.Fill
        horizontalAlignment: HorizontalAlignment.Fill
        layout: DockLayout {
        }

        // show image
        ImageView {
            imageSource: ListItemData.thumb
            scalingMethod: ScalingMethod.AspectFit
            horizontalAlignment: HorizontalAlignment.Fill
            verticalAlignment: VerticalAlignment.Fill
            onTouchEnter: setHighlight(true)
            onTouchExit: setHighlight(false)
        }

        // and text below
        Container {
            horizontalAlignment: HorizontalAlignment.Fill
            verticalAlignment: VerticalAlignment.Bottom
            background: Color.DarkGray
            Label {
                text: ListItemData.price
                textStyle.base: SystemDefaults.TextStyles.SubtitleText
                
                textStyle {
                    color: Color.White
                    fontWeight: FontWeight.Bold
                }
                horizontalAlignment: HorizontalAlignment.Center
                
            }
        }
        contextActions: [
            ActionSet {
                title: "Item actions"
                ActionItem {
                    title: "Contact Seller"
                    imageSource: "asset:///images/email.png"
                    onTriggered: {
                        console.debug("Contextual menu");
                    }
                }
            } // end of ActionSet
        ]
    }

    // Set visual appearance of activated and selected item.
    function setHighlight(active) {
        //if (active) {
          //  item.scaleX = 1.0;
         //   item.scaleY = 1.0;
       /// } else {
          //  item.scaleX = 0.95;
         //   item.scaleY = 0.95;
        //}
    }

    // Signal handler for list item activation.
    ListItem.onActivationChanged: {
        console.debug("ActivationChanged")
        setHighlight(ListItem.active);
    }
    attachedObjects: [
        ComponentDefinition {
            id: contactSeller
            source: "ContactSeller.qml"
        }
    ]
}
