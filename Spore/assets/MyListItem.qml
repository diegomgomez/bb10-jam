// Grid view with detail project template
import bb.cascades 1.0

// Item used by the list to present a small thumbnail image with text.
Container {
    layout: DockLayout {
    }
    
    Container {
        // this container is used to show selection background when item is selected
        id: mySelectionContainer
        opacity: 0.0
        verticalAlignment: VerticalAlignment.Fill
        horizontalAlignment: HorizontalAlignment.Fill
    }
    
    Container { 
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
        mySelectionContainer.opacity = active? 1.0: 0.0;
    }

    // Signal handler for list item activation.
    ListItem.onActivationChanged: {
        console.debug("ActivationChanged")
        setHighlight (ListItem.active);
    }
}
