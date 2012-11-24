// Grid view with detail project template
import bb.cascades 1.0

TabbedPane {
    id: tabbedPane
    showTabsOnActionBar: true;
    
    Tab {
        title: "Explore"
        
	    content: Explore{}
    }
    
    Tab {
        title: "Sell"
        
        content: Page {
            content: Label {
                text: "This is tab 2."
            }
        }
    }
    
    Tab {
        title: "Account"
        
        content: Page {
            content: Label {
                text: "This is tab 3."
            }
        }
    }
    
    attachedObjects: [
        ComponentDefinition {
            id: secondPageDefinition
            content: Page {
                property alias text: lblText.text
                property alias image: imgView.imageSource
                id: pgDetail
                paneProperties: NavigationPaneProperties {
                    backButton: ActionItem {
                        onTriggered: { navigationPane.pop(); }
                    }
                }
                content: Container {
                    layout: StackLayout {
                    }
                    Label {
                        id: lblText
                        textStyle.base: SystemDefaults.TextStyles.TitleText
                        //textStyle.color: Color.Yellow
                        horizontalAlignment: HorizontalAlignment.Center
                    }
                    ImageView {
                        id: imgView
                        scalingMethod: ScalingMethod.AspectFit
                        layoutProperties: StackLayoutProperties {
                            spaceQuota: 1.0 // the image fills rest of the Page

                        }
                        verticalAlignment: VerticalAlignment.Center
                        horizontalAlignment: HorizontalAlignment.Center
                    }
                }
            }
        }
    ]
    
    function setDetailItem(item) {
        // show detail page
        var page = secondPageDefinition.createObject();
        page.text = item.text
        page.image = item.image
        navigationPane.push(page)
    }
    
    onCreationCompleted: {
        // this slot is called when declarative scene is created
        // write post creation initialization here
        console.log("NavigationPane - onCreationCompleted()")

        // enable layout to adapt to the device rotation
        // don't forget to enable screen rotation in bar-bescriptor.xml (Application->Orientation->Auto-orient)
        OrientationSupport.supportedDisplayOrientation = SupportedDisplayOrientation.DisplayPortrait;
    }
}
