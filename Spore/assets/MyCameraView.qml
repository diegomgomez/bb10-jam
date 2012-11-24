import bb.cascades 1.0
import bb.cascades.multimedia 1.0

Page {
	content : Container {
	        layout: DockLayout {}
            
            // This is the camera control that is defined in the cascades multimedia library.
            Camera {
                id: camera
                objectName: "myCamera"
                horizontalAlignment: HorizontalAlignment.Fill
                verticalAlignment: VerticalAlignment.Fill

              // When the camera is opened we want to start the viewfinder
               onCameraOpened:{
                    camera.startViewfinder();
               }
            }
            
            Button {
                text: "Shoot!"
                verticalAlignment: VerticalAlignment.Bottom
                horizontalAlignment: HorizontalAlignment.Center
                onClicked: {
                    camera.capturePhoto();
                    camera.stop();
                }
            }
        }
    
    onCreationCompleted: {
        if (camera.allCamerasAccessible) {
            camera.open(CameraUnit.Rear);
        }
    }
}