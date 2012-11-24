import bb.cascades 1.0

NavigationPane {
    id: navigationPane
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
                onTriggered: {
                    console.log("selected_index: " + indexPath)
                    var selectedItem = dataModel.data(indexPath)
                    var page = null;
                    if (selectedItem.type == "1") {
                        page = itemViewDefinition.createObject();
                    } else if (selectedItem.type == "2") {
                        page = itemViewDefinitionPurchased.createObject();
                    } else {
                        page = itemViewDefinitionSold.createObject();
                    }
                    page.title = selectedItem.title
                    page.image = selectedItem.image
                    page.name = selectedItem.name
                    page.price = selectedItem.price
                    page.nint = selectedItem.nint
                    page.distance = selectedItem.distance
                    navigationPane.push(page)
                }
            }
        }
    }
    attachedObjects: [
        ComponentDefinition {
            id: itemViewDefinition
            source: "ItemComponentDefinition.qml"
        },
        ComponentDefinition {
            id: itemViewDefinitionSold
            source: "ItemComponentDefinitionSold.qml"
        },
        ComponentDefinition {
            id: itemViewDefinitionPurchased
            source: "ItemComponentDefinitionPurchased.qml"
        }
    ]
}
