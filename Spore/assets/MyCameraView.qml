import bb.cascades 1.0
import bb.cascades.multimedia 1.0

Page {
	content : Container {
	        layout: StackLayout {
		        orientation: LayoutOrientation.TopToBottom
		    }
            
            // This is the camera control that is defined in the cascades multimedia library.
            Camera {
                id: camera
                objectName: "myCamera"
                horizontalAlignment: HorizontalAlignment.Fill
                verticalAlignment: VerticalAlignment.Fill
                                
                onTouch: {
                    if (event.isDown()) {
                        // Take photo
                        capturePhoto();
                        setting.visible = true;
                    }
                }

              // When the camera is opened we want to start the viewfinder
               onCameraOpened:{
                    camera.startViewfinder();
               }
               // There are loads of messages we could listen to here.
               // onPhotoSaved and onShutterFired are taken care of in the C++ code.
               onCameraOpenFailed: {
                    console.log("onCameraOpenFailed signal received with error " + error);
                }
                onViewfinderStartFailed: {
                    console.log("viewfinderStartFailed signal received with error " + error);
                }
                onViewfinderStopFailed: {
                    console.log("viewfinderStopFailed signal received with error " + error);
                }
                onPhotoCaptureFailed: {
                    console.log("photoCaptureFailed signal received with error " + error);
                }
                onPhotoSaveFailed: {
                    console.log("photoSaveFailed signal received with error " + error);
                }
                onPhotoSaved: {
                    console.log("photoSaved");
                }
            }
        }
}