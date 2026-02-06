package com.sonyericsson.android.camera.view.baselayout.onscreenbutton;

public class OnScreenButtonItemFactory {
    public static OnScreenButtonGroup$MutableButtonItem createMutableButton(OnScreenButtonListener onScreenButtonListener) {
        return new OnScreenButtonGroup$MutableButtonItem(onScreenButtonListener, true);
    }

    public static OnScreenButtonGroup$Item createButton(OnScreenButtonItemFactory$ButtonType onScreenButtonItemFactory$ButtonType, OnScreenButtonListener onScreenButtonListener) {
        switch (OnScreenButtonItemFactory$1.$SwitchMap$com$sonyericsson$android$camera$view$baselayout$onscreenbutton$OnScreenButtonItemFactory$ButtonType[onScreenButtonItemFactory$ButtonType.ordinal()]) {
            case 1:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231424, -1, -1, 2131689604, null), onScreenButtonListener, false);
            case 2:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231396, 2131231397, -1, -1, null), onScreenButtonListener, false);
            case 3:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231396, 2131231397, -1, -1, null), onScreenButtonListener, false);
            case 4:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231402, 2131231403, -1, -1, null), onScreenButtonListener, false);
            case 5:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231398, 2131231399, -1, -1, null), onScreenButtonListener, false);
            case 6:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231400, 2131231401, -1, -1, null), onScreenButtonListener, false);
            case 7:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231433, 2131231434, -1, 2131689604, null), onScreenButtonListener, false);
            case 8:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231443, -1, -1, 2131689599, null), onScreenButtonListener, false);
            case 9:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231444, -1, -1, 2131689602, null), onScreenButtonListener, false);
            case 10:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231450, -1, -1, 2131689602, null), onScreenButtonListener, false);
            case 11:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231442, -1, -1, 2131689599, null), onScreenButtonListener, false);
            case 12:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231441, -1, -1, 2131689595, null), onScreenButtonListener, false);
            case 13:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231451, -1, -1, 2131689600, null), onScreenButtonListener, false);
            case 14:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131230970, -1, -1, 2131689600, null), onScreenButtonListener, false);
            case 15:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131230965, -1, -1, 2131689600, null), onScreenButtonListener, false);
            case 16:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231432, -1, -1, 2131689604, null), onScreenButtonListener, false);
            case 17:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231532, -1, -1, 2131689604, null), onScreenButtonListener, false);
            case 18:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231534, -1, -1, 2131689604, null), onScreenButtonListener, false);
            case 19:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231529, 2131231530, -1, 2131689603, null), onScreenButtonListener, false);
            case 20:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231565, 2131231565, -1, 2131689603, null), onScreenButtonListener, false);
            case 21:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231446, -1, -1, 2131689602, null), onScreenButtonListener, false);
            case 22:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231563, -1, -1, 2131689602, null), onScreenButtonListener, false);
            case 23:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231560, -1, -1, 2131689595, null), onScreenButtonListener, false);
            case 24:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231561, -1, -1, 2131689599, null), onScreenButtonListener, false);
            case 25:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231562, -1, -1, 2131689604, null), onScreenButtonListener, false);
            case 26:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231564, -1, -1, 2131689602, null), onScreenButtonListener, false);
            case 27:
                return new OnScreenButtonGroup$ImmutableButtonItem(onScreenButtonItemFactory$ButtonType, new OnScreenButton$Resource(2131231561, -1, -1, 2131689599, null), onScreenButtonListener, false);
            default:
                throw new IllegalArgumentException("This type is not supported. type:" + onScreenButtonItemFactory$ButtonType.name());
        }
    }
}
