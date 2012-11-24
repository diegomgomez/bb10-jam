import bb.cascades 1.0

Page {
    property alias title: title.text
    property alias image: imgView.imageSource
    property alias price: price.text
    property alias distance: dist.text
    property alias nint: interested.text
    property alias name: name.text
    id: pgDetail
    paneProperties: NavigationPaneProperties {
        backButton: ActionItem {
            onTriggered: {
                navigationPane.pop();
            }
        }
    }
    content: ScrollView {
        
        Container {
            background: Color.create("#262626")
            layout: StackLayout {
            }
            Label {
                id: title
                textStyle.base: SystemDefaults.TextStyles.TitleText
                textStyle.color: Color.White
                horizontalAlignment: HorizontalAlignment.Center
            }
            Container {
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
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
                Container {
                    layoutProperties: StackLayoutProperties {
                        spaceQuota: 1.0
                    }
                    layout: StackLayout {
                        orientation: LayoutOrientation.TopToBottom
                    }
                    Label {
                        id: name
                        text: "Name"
                        textStyle.base: SystemDefaults.TextStyles.BodyText
                        textStyle.color: Color.White
                    }
                    Label {
                        id: price
                        text: "Price"
                        textStyle.base: SystemDefaults.TextStyles.BodyText
                        textStyle.color: Color.White
                    }
                    Label {
                        id: dist
                        text: "Distance"
                        textStyle.base: SystemDefaults.TextStyles.BodyText
                        textStyle.color: Color.White
                    }
                    Label {
                        id: interested
                        text: "N interested"
                        textStyle.base: SystemDefaults.TextStyles.BodyText
                        textStyle.color: Color.White
                    }
                }
            }
            Container {
                topPadding: 20
                leftPadding: 30
                rightPadding: 30
                Label {
                    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus pulvinar enim non orci elementum ultrices. Donec id viverra eros. Morbi rutrum sapien id tellus ultrices imperdiet. Aenean aliquam arcu quis dui ultrices hendrerit. Curabitur sodales facilisis tincidunt. Nam sit amet mi leo, in tempor dui. Maecenas a sollicitudin quam. Praesent dui velit, venenatis at eleifend id, semper in velit. Nam blandit metus a nisl accumsan vel auctor orci malesuada."
                    multiline: true
                    textStyle.base: SystemDefaults.TextStyles.BodyText
                    textStyle.color: Color.White
                }
            }
            Container {
                topMargin: 30
                bottomMargin: 30
                horizontalAlignment: HorizontalAlignment.Center
                layout: StackLayout {
                    orientation: LayoutOrientation.LeftToRight
                }
                Label {
                    text: "Rate:"
                    textStyle.base: SystemDefaults.TextStyles.BodyText
                    textStyle.color: Color.White
                    verticalAlignment: VerticalAlignment.Center
                }
                ImageButton {
                    id: star1
                    preferredWidth: 100
                    preferredHeight: 100
                    defaultImageSource: "asset:///images/star_enabled.png"
                    pressedImageSource: "asset:///images/star_enabled.png"
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    onClicked: {
                        star2.defaultImageSource = "asset:///images/star_disabled.png";
                        star3.defaultImageSource = "asset:///images/star_disabled.png";
                        star4.defaultImageSource = "asset:///images/star_disabled.png";
                        star5.defaultImageSource = "asset:///images/star_disabled.png";
                    }
                }
                ImageButton {
                    id: star2
                    defaultImageSource: "asset:///images/star_disabled.png"
                    pressedImageSource: "asset:///images/star_enabled.png"
                    preferredWidth: 100
                    preferredHeight: 100
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    onClicked: {
                        star2.defaultImageSource = "asset:///images/star_enabled.png";
                        star3.defaultImageSource = "asset:///images/star_disabled.png";
                        star4.defaultImageSource = "asset:///images/star_disabled.png";
                        star5.defaultImageSource = "asset:///images/star_disabled.png";
                    }
                }
                ImageButton {
                    id: star3
                    defaultImageSource: "asset:///images/star_disabled.png"
                    pressedImageSource: "asset:///images/star_enabled.png"
                    preferredWidth: 100
                    preferredHeight: 100
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    onClicked: {
                        star2.defaultImageSource = "asset:///images/star_enabled.png";
                        star3.defaultImageSource = "asset:///images/star_enabled.png";
                        star4.defaultImageSource = "asset:///images/star_disabled.png";
                        star5.defaultImageSource = "asset:///images/star_disabled.png";
                    }
                }
                ImageButton {
                    id: star4
                    defaultImageSource: "asset:///images/star_disabled.png"
                    pressedImageSource: "asset:///images/star_enabled.png"
                    preferredWidth: 100
                    preferredHeight: 100
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    onClicked: {
                        star2.defaultImageSource = "asset:///images/star_enabled.png";
                        star3.defaultImageSource = "asset:///images/star_enabled.png";
                        star4.defaultImageSource = "asset:///images/star_enabled.png";
                        star5.defaultImageSource = "asset:///images/star_disabled.png";
                    }
                }
                ImageButton {
                    id: star5
                    defaultImageSource: "asset:///images/star_disabled.png"
                    pressedImageSource: "asset:///images/star_enabled.png"
                    preferredWidth: 100
                    preferredHeight: 100
                    verticalAlignment: VerticalAlignment.Center
                    horizontalAlignment: HorizontalAlignment.Center
                    onClicked: {
                        star2.defaultImageSource = "asset:///images/star_enabled.png";
                        star3.defaultImageSource = "asset:///images/star_enabled.png";
                        star4.defaultImageSource = "asset:///images/star_enabled.png";
                        star5.defaultImageSource = "asset:///images/star_enabled.png";
                    }
                }
            }
        }
    }
    attachedObjects: [
        ComponentDefinition {
            id: contactSeller
            source: "ContactSeller.qml"
        }
    ]
}
