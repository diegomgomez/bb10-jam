import bb.cascades 1.0
 
NavigationPane {
    id: navigationPane
     
    // The initial page
    Page {
        Button {
            text: "Display first Page"
             
            onClicked: {
                navigationPane.push(firstPage);
            }
        }
    }
     
    attachedObjects: [
        Page {
            id: firstPage
            content: Container {
                Label {
                    text: "First attachedObjects Page"
                }
            }
        },
        Page {
            id: secondPage
            content: Container {
                Label {
                    text: "Second attachedObjects Page"
                }
            }
        } // end of Page
    ] // end of attachedObjects list
} // end of NavigationPane