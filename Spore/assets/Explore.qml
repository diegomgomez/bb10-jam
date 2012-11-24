import bb.cascades 1.0

Page {
    id: pgMain
    content: Container {
        background: Color.create("#262626")
        layout: DockLayout {}
        ListView {
            id: listView
            // set object name to let listView to be discoverable from C++
            objectName: "listView"
            layout: GridListLayout {}
            listItemComponents: [
                // define component which will represent list item GUI appearence
                ListItemComponent {
                    type: "item"
                    // list item GUI appearence component is defined in external MyListItem.qml file
                    MyListItem {
                    }
                }
            ]
            
            
            onTriggered: {
                console.log("selected_index: " + indexPath)
                var curr_item = dataModel.data(indexPath)
                // show detail page for selected item
                setDetailItem(curr_item)
            }
            
            
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Center
        }
    }
}
