// Grid view with detail project template
import bb.cascades 1.0

// Item used by the list to present a small thumbnail image with text.
Container {
    layout: DockLayout {
    }
    
    Container { 
        id: item
        scaleX: 0.9
        scaleY: 0.9
        verticalAlignment: VerticalAlignment.Fill
        horizontalAlignment: HorizontalAlignment.Fill
        topPadding: 5
        layout: DockLayout {}
        
        // show image
        ImageView {
            imageSource: ListItemData.thumb
            scalingMethod: ScalingMethod.AspectFit
            horizontalAlignment: HorizontalAlignment.Fill
            verticalAlignment: VerticalAlignment.Fill
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
    }

    // Set visual appearance of activated and selected item.
    function setHighlight(active) {
        if (active) {
            item.scaleX = 1.0;
            item.scaleY = 1.0;
        } else {
            item.scaleX = 0.9;
            item.scaleY = 0.9;
        }
    }

    // Signal handler for list item activation.
    ListItem.onActivationChanged: {
        console.debug("ActivationChanged")
        setHighlight (ListItem.active);
    }
}
