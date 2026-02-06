package com.sonymobile.cameracommon.view;

import com.sonyericsson.android.camera.device.CameraParameterConverter$SceneMode;

public class RecognizedScene {
    final int mIconId;
    final CameraParameterConverter$SceneMode mSceneMode;
    final int mTextId;

    private RecognizedScene(CameraParameterConverter$SceneMode cameraParameterConverter$SceneMode, int i, int i2) {
        this.mSceneMode = cameraParameterConverter$SceneMode;
        this.mIconId = i;
        this.mTextId = i2;
    }

    public static RecognizedScene create(CameraParameterConverter$SceneMode cameraParameterConverter$SceneMode) {
        if (cameraParameterConverter$SceneMode == null) {
            return new RecognizedScene(null, -1, -1);
        }
        switch (cameraParameterConverter$SceneMode) {
            case AUTO:
                return new RecognizedScene(cameraParameterConverter$SceneMode, -1, -1);
            case PORTRAIT:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231276, 2131690069);
            case LANDSCAPE:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231272, 2131690067);
            case NIGHT:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231274, 2131690073);
            case NIGHT_PORTRAIT:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231275, 2131690072);
            case BACKLIGHT:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231267, 2131690064);
            case BACKLIGHT_PORTRAIT:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231268, 2131690063);
            case DOCUMENT:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231269, 2131690071);
            case DARK:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231278, 2131690068);
            case BABY:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231271, 2131690066);
            case SPOTLIGHT:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231277, 2131690070);
            case DISH:
                return new RecognizedScene(cameraParameterConverter$SceneMode, 2131231270, 2131690065);
            default:
                return new RecognizedScene(cameraParameterConverter$SceneMode, -1, -1);
        }
    }

    public CameraParameterConverter$SceneMode getSceneMode() {
        return this.mSceneMode;
    }

    public int getIconId() {
        return this.mIconId;
    }

    public int getTextId() {
        return this.mTextId;
    }
}
