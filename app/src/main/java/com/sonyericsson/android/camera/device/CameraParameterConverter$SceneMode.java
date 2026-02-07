package com.sonyericsson.android.camera.device;

/* JADX INFO: loaded from: classes.dex */
public enum CameraParameterConverter$SceneMode {
    AUTO("auto", 100),
    PORTRAIT("portrait", 3),
    NIGHT_PORTRAIT("night-portrait", 6),
    LANDSCAPE("landscape", 4),
    NIGHT("night", 5),
    SNOW("snow", 9),
    SPORTS("sports", 13),
    PARTY("party", 14),
    BEACH("beach", 8),
    FIREWORKS("fireworks", 12),
    ACTION("action", 2),
    THEATRE("theatre", 7),
    SUNSET("sunset", 10),
    STEADYPHOTO("steadyphoto", 11),
    CANDLELIGHT("candlelight", 15),
    DOCUMENT("document", 101),
    BACKLIGHT("backlight", 102),
    BACKLIGHT_PORTRAIT("backlight-portrait", 103),
    DARK("dark", 104),
    BABY("baby", 105),
    SPOTLIGHT("spot-light", 106),
    DISH("dish", 107),
    BARCODE("barcode", 16);

    private String mSceneModeApi1;
    private int mSceneModeApi2;

    CameraParameterConverter$SceneMode(String str, int i) {
        this.mSceneModeApi1 = str;
        this.mSceneModeApi2 = i;
    }

    public static String getApi1Value(int i) {
        for (CameraParameterConverter$SceneMode cameraParameterConverter$SceneMode : values()) {
            if (cameraParameterConverter$SceneMode.mSceneModeApi2 == i) {
                return cameraParameterConverter$SceneMode.mSceneModeApi1;
            }
        }
        return null;
    }

    public static int getApi2Value(String str) {
        for (CameraParameterConverter$SceneMode cameraParameterConverter$SceneMode : values()) {
            if (cameraParameterConverter$SceneMode.mSceneModeApi1.equals(str)) {
                return cameraParameterConverter$SceneMode.mSceneModeApi2;
            }
        }
        return 100;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mSceneModeApi1;
    }

    private int getSceneValue() {
        return this.mSceneModeApi2;
    }

    public static CameraParameterConverter$SceneMode getSceneMode(int i) {
        CameraParameterConverter$SceneMode[] cameraParameterConverter$SceneModeArrValues = values();
        for (int i2 = 0; i2 < cameraParameterConverter$SceneModeArrValues.length; i2++) {
            if (cameraParameterConverter$SceneModeArrValues[i2].getSceneValue() == i) {
                return cameraParameterConverter$SceneModeArrValues[i2];
            }
        }
        return null;
    }
}
