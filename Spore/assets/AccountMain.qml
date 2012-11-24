import bb.cascades 1.0
 
Page {
    content: Container {
        ListView {
            dataModel: XmlDataModel {
               source: "models/myAccountDetails.xml"
            }
            
            listItemComponents: [
                ListItemComponent {
                    type: "header"
                    
                    Header {
                        title: ListItemData.title
                    }
                },
                
                ListItemComponent {
                    type: "listItem"
                    
                    StandardListItem {
                        title: ListItemData.title
                        status: ListItemData.distance
                    }
                }
                
            ] 
        }
	}
}