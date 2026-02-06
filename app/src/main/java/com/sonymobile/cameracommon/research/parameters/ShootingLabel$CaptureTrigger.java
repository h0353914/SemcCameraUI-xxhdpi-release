package com.sonymobile.cameracommon.research.parameters;

enum ShootingLabel$CaptureTrigger implements ShootingLabel$StringParameter {
    CAMERA_KEY(Event$CaptureTrigger.CAMERA_KEY.toString()),
    CAPTURE_BUTTON(Event$CaptureTrigger.CAPTURE_BUTTON.toString()),
    TOUCH_CAPTURE(Event$CaptureTrigger.TOUCH_CAPTURE.toString()),
    VOLUME_KEY(Event$CaptureTrigger.VOLUME_KEY.toString()),
    FAST_CAPTURING_LAUNCH(Event$CaptureTrigger.FAST_CAPTURING_LAUNCH.toString()),
    SMILE_CAPTURE(Event$CaptureTrigger.SMILE_CAPTURE.toString()),
    SELF_TIMER(Event$CaptureTrigger.SELF_TIMER.toString()),
    WEARABLE(Event$CaptureTrigger.WEARABLE.toString()),
    GESTURE(Event$CaptureTrigger.GESTURE.toString()),
    SIDE_SENSE(Event$CaptureTrigger.SIDE_SENSE.toString()),
    TOUCH_CAPTURE_PREDICTIVE_LAUNCH(Event$CaptureTrigger.TOUCH_CAPTURE_PREDICTIVE_LAUNCH.toString()),
    OTHER(Event$CaptureTrigger.OTHER.toString());

    private String mValue;

    ShootingLabel$CaptureTrigger(String str) {
        this.mValue = str;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public boolean equals(String str) {
        return this.mValue.equals(str);
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return OTHER;
    }
}
