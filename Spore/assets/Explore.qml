import bb.cascades 1.0

NavigationPane {
    id: navigationPane
    Page {
        id: pgMain
        content: Container {
            background: Color.create("#262626")
            layout: DockLayout {
            }
            ListView {
                id: listView
                
                // set object name to let listView to be discoverable from C++
                objectName: "listView"
                layout: GridListLayout {
                }
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
                    var selectedItem = dataModel.data(indexPath)
                    var page = itemViewDefinition.createObject();
                    page.title = selectedItem.text
                    page.image = selectedItem.image
                    page.name = selectedItem.name
                    page.price = selectedItem.price
                    page.nint = selectedItem.nint
                    page.distance = selectedItem.distance
                    navigationPane.push(page)
                }
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Center
            }
        }
    }
    attachedObjects: [
        ComponentDefinition {
            id: itemViewDefinition
            source: "ItemComponentDefinition.qml" 
        }
    ]
}
