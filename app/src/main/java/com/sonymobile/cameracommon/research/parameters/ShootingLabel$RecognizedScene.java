package com.sonymobile.cameracommon.research.parameters;

/* JADX INFO: loaded from: classes.dex */
enum ShootingLabel$RecognizedScene implements ShootingLabel$StringParameter {
    AUTO("auto"),
    ACTION("action"),
    PORTRAIT("portrait"),
    LANDSCAPE("landscape"),
    NIGHT("night"),
    NIGHT_PORTRAIT("night-portrait"),
    THEATRE("theatre"),
    BEACH("beach"),
    SNOW("snow"),
    SUNSET("sunset"),
    STEADYPHOTO("steadyphoto"),
    FIREWORKS("fireworks"),
    SPORTS("sports"),
    PARTY("party"),
    CANDLELIGHT("candlelight"),
    DOCUMENT("document"),
    BACKLIGHT("backlight"),
    BACKLIGHT_PORTRAIT("backlight-portrait"),
    DARK("dark"),
    BABY("baby"),
    SPOTLIGHT("spot-light"),
    DISH("dish"),
    MACRO("macro");

    private String mValue;

    ShootingLabel$RecognizedScene(String str) {
        this.mValue = str;
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public boolean equals(String str) {
        return this.mValue.equals(str);
    }

    @Override // com.sonymobile.cameracommon.research.parameters.ShootingLabel$StringParameter
    public ShootingLabel$Parameter getDefaultValue() {
        return AUTO;
    }
}
