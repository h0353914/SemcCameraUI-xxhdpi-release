package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
public class ShootingLabel {
    public static final String PREDICTIVE_LAUNCH_OFF = "False";
    public static final String PREDICTIVE_LAUNCH_ON = "True";
    public static final String RECOGNIZED_SCENE_ACTION = "action";
    public static final String RECOGNIZED_SCENE_AUTO = "auto";
    public static final String RECOGNIZED_SCENE_BABY = "baby";
    public static final String RECOGNIZED_SCENE_BACKLIGHT = "backlight";
    public static final String RECOGNIZED_SCENE_BACKLIGHT_PORTRAIT = "backlight-portrait";
    public static final String RECOGNIZED_SCENE_BEACH = "beach";
    public static final String RECOGNIZED_SCENE_CANDLELIGHT = "candlelight";
    public static final String RECOGNIZED_SCENE_DARK = "dark";
    public static final String RECOGNIZED_SCENE_DISH = "dish";
    public static final String RECOGNIZED_SCENE_DOCUMENT = "document";
    public static final String RECOGNIZED_SCENE_FIREWORKS = "fireworks";
    public static final String RECOGNIZED_SCENE_LANDSCAPE = "landscape";
    public static final String RECOGNIZED_SCENE_MACRO = "macro";
    public static final String RECOGNIZED_SCENE_NIGHT = "night";
    public static final String RECOGNIZED_SCENE_NIGHT_PORTRAIT = "night-portrait";
    public static final String RECOGNIZED_SCENE_PARTY = "party";
    public static final String RECOGNIZED_SCENE_PORTRAIT = "portrait";
    public static final String RECOGNIZED_SCENE_SNOW = "snow";
    public static final String RECOGNIZED_SCENE_SPORTS = "sports";
    public static final String RECOGNIZED_SCENE_SPOTLIGHT = "spot-light";
    public static final String RECOGNIZED_SCENE_STEADYPHOTO = "steadyphoto";
    public static final String RECOGNIZED_SCENE_SUNSET = "sunset";
    public static final String RECOGNIZED_SCENE_THEATRE = "theatre";
    public static final int SEMI_AUTO_OFF = 1;
    public static final int SEMI_AUTO_ON = 0;
    public static final String TAG = "ShootingLabel";

    public static ShootingLabel$Parameter getOrientationParameter(int i) {
        return getIntParameter(i, ShootingLabel$Orientation.values());
    }

    public static ShootingLabel$Parameter getZoomParameter(int i) {
        return getIntParameter(i, ShootingLabel$Zoom.values());
    }

    public static ShootingLabel$Parameter getHandSignLostParameter(int i) {
        return getIntParameter(i, ShootingLabel$HandSignLostNum.values());
    }

    public static ShootingLabel$Parameter getFaceNumParameter(int i) {
        return getIntParameter(i, ShootingLabel$FaceNum.values());
    }

    public static ShootingLabel$Parameter getRecognizedSceneParameter(String str) {
        return getStringParameter(str, ShootingLabel$RecognizedScene.values());
    }

    public static ShootingLabel$Parameter getCaptureTriggerParameter(String str) {
        return getStringParameter(str, ShootingLabel$CaptureTrigger.values());
    }

    public static ShootingLabel$Parameter getFlashParameter(String str) {
        return getStringParameter(str, ShootingLabel$Flash.values());
    }

    public static ShootingLabel$Parameter getSelfTimerParameter(String str) {
        return getStringParameter(str, ShootingLabel$SelfTimer.values());
    }

    public static ShootingLabel$Parameter getSemiAutoParameter(int i) {
        return getIntParameter(i, ShootingLabel$SemiAuto.values());
    }

    public static ShootingLabel$Parameter getFrontAngleParameter(String str) {
        return getStringParameter(str, ShootingLabel$FrontAngleValue.values());
    }

    public static ShootingLabel$Parameter getAfDoneKeepingTimeParameter(String str) {
        return getStringParameter(str, ShootingLabel$AfDoneKeepingTime.values());
    }

    public static ShootingLabel$Parameter getPredictiveCaptureNumParameter(int i) {
        return getIntParameter(i, ShootingLabel$PredictiveCaptureNum.values());
    }

    public static ShootingLabel$Parameter getObjectTrackingParameter(String str) {
        return getStringParameter(str, ShootingLabel$ObjectTracking.values());
    }

    public static ShootingLabel$Parameter getPredictiveLaunchParameter(String str) {
        return getStringParameter(str, ShootingLabel$PredictiveLaunch.values());
    }

    public static ShootingLabel$Parameter getIntParameter(int i, ShootingLabel$IntParameter[] shootingLabel$IntParameterArr) {
        for (ShootingLabel$IntParameter shootingLabel$IntParameter : shootingLabel$IntParameterArr) {
            if (shootingLabel$IntParameter.equals(i)) {
                return shootingLabel$IntParameter;
            }
        }
        return shootingLabel$IntParameterArr[0].getDefaultValue();
    }

    public static ShootingLabel$Parameter getStringParameter(String str, ShootingLabel$StringParameter[] shootingLabel$StringParameterArr) {
        for (ShootingLabel$StringParameter shootingLabel$StringParameter : shootingLabel$StringParameterArr) {
            if (shootingLabel$StringParameter.equals(str)) {
                return shootingLabel$StringParameter;
            }
        }
        return shootingLabel$StringParameterArr[0].getDefaultValue();
    }
}
