// Grid view with detail project template
import bb.cascades 1.0

// Item used by the list to present a small thumbnail image with text.
Container {
    layout: DockLayout {
    }
    
    Container { 
        id: item
        scaleX: 0.95
        scaleY: 0.95
        topMargin: 0
        bottomMargin: 0
        leftMargin: 0
        rightMargin: 0
        verticalAlignment: VerticalAlignment.Fill
        horizontalAlignment: HorizontalAlignment.Fill
        layout: DockLayout {}
        
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
        Label {            
            text: ListItemData.text
            textStyle.base: SystemDefaults.TextStyles.BodyText
            horizontalAlignment: HorizontalAlignment.Center
            textStyle {
                color: Color.White
                
            }
            
            verticalAlignment: VerticalAlignment.Bottom
        }
        contextActions: [
            ActionSet {
                title: "Item actions"
                ActionItem {
                    title: "Contact Seller"
                    imageSource: "asset:///images/email.png"
                }
            } // end of ActionSet
        ]
    }

    // Set visual appearance of activated and selected item.
    function setHighlight(active) {
        if (active) {
            item.scaleX = 1.0;
            item.scaleY = 1.0;
        } else {
            item.scaleX = 0.95;
            item.scaleY = 0.95;
        }
    }

    // Signal handler for list item activation.
    ListItem.onActivationChanged: {
        console.debug("ActivationChanged")
        setHighlight (ListItem.active);
    }
}
