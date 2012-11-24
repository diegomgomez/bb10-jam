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
                    page.text = selectedItem.text
                    page.image = selectedItem.image
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
            content: Page {
                property alias text: lblText.text
                property alias image: imgView.imageSource
                id: pgDetail
                paneProperties: NavigationPaneProperties {
                    backButton: ActionItem {
                        onTriggered: {
                            navigationPane.pop();
                        }
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
}
