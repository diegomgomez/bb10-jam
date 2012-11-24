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
        content: SellMain {}
    }
    
    Tab {
        title: "Account"
        content: AccountMain {}
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
