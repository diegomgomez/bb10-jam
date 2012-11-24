import bb.cascades 1.0

NavigationPane {
    id: sellNavigationPane
	Page {
	    content: Container {
	        leftPadding: 30
	        rightPadding: 30
	        topPadding: 30
	        bottomPadding: 30
		    layout: StackLayout {
		        orientation: LayoutOrientation.TopToBottom
		    }
		        
		    Label {
		        text: "New item"
		        
		        textStyle {
		            fontSizeValue: 22
		            fontWeight: FontWeight.Bold
		            color: Color.create(0xFFDDDDDD)
		        }
		        
		        bottomMargin: 10
		    }
		    
		    Label {
		        text: "1) What would you like to sell?"
		        bottomMargin: 5
		    }
		    
		    TextField {
		        hintText: "Item short description"
		    }
		    
		    Label {
		        text: "2) Write a description for your item"
		    }
		    
		    TextArea {
		        hintText: "Item long description"
		        preferredHeight: 500
		    }
		    
		    Label {
		        text: "3) Add some pictures"
		    }
		    
		    Container {
		        layout: StackLayout {
		            orientation: LayoutOrientation.LeftToRight
		        }
		        
		        ImageView {
	    	        imageSource: "asset:///images/picture-thumb.png"
	    	        scalingMethod: ScalingMethod.AspectFit
	    	    }
	    	    
	    	    ImageView {
	    	        imageSource: "asset:///images/picture-thumb.png"
	    	        scalingMethod: ScalingMethod.AspectFit
	    	    }
		    }    
		    
		    Label {
		        text: "4) Set a price"
		    }
		    
		    TextField {
		        hintText: "Price"
		    }
		    
		    Button {
		        text: "Profit!"
		        horizontalAlignment: HorizontalAlignment.Center
		    }
		}
    }
    
    attachedObjects: [
        ComponentDefinition {
            id: myCamera
            content: MyCameraView {}
        }
        
    ]
}
