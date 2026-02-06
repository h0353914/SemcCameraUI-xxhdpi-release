package com.sonymobile.cameracommon.font;

public enum FontUtil$RobotoFontType {
    THIN("/system/fonts/Roboto-Thin.ttf"),
    THIN_ITALIC("/system/fonts/Roboto-ThinItalic.ttf"),
    LIGHT("/system/fonts/Roboto-Light.ttf"),
    LIGHT_ITALIC("/system/fonts/Roboto-LightItalic.ttf"),
    REGULAR("/system/fonts/Roboto-Regular.ttf"),
    REGULAR_ITALIC("/system/fonts/Roboto-Italic.ttf"),
    MEDIUM("/system/fonts/Roboto-Medium.ttf"),
    MEDIUM_ITALIC("/system/fonts/Roboto-MediumItalic.ttf"),
    BLACK("/system/fonts/Roboto-Black.ttf"),
    BLACK_ITALIC("/system/fonts/Roboto-BlackItalic.ttf"),
    BOLD("/system/fonts/Roboto-Bold.ttf"),
    BOLD_ITALIC("/system/fonts/Roboto-BoldItalic.ttf"),
    CONDENSED_LIGHT("/system/fonts/RobotoCondensed-Light.ttf"),
    CONDENSED_LIGHT_ITALIC("/system/fonts/RobotoCondensed-LightItalic.ttf"),
    CONDENSED("/system/fonts/RobotoCondensed-Regular.ttf"),
    CONDENSED_ITALIC("/system/fonts/RobotoCondensed-Italic.ttf"),
    CONDENSED_BOLD("/system/fonts/RobotoCondensed-Bold.ttf"),
    CONDENSED_BOLD_ITALIC("/system/fonts/RobotoCondensed-BoldItalic.ttf");

    private final String mPath;

    static /* synthetic */ String access$000(FontUtil$RobotoFontType fontUtil$RobotoFontType) {
        return fontUtil$RobotoFontType.mPath;
    }

    FontUtil$RobotoFontType(String str) {
        this.mPath = str;
    }
}
