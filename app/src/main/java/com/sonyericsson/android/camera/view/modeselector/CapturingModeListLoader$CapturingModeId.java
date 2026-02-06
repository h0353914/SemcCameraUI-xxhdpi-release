package com.sonyericsson.android.camera.view.modeselector;

enum CapturingModeListLoader$CapturingModeId {
    DUAL_BACKGROUND_DEFOCUS("DUAL_BACKGROUND_DEFOCUS"),
    DUAL_MONOCHROME("DUAL_MONOCHROME"),
    PORTRAIT_SELFIE("PORTRAIT_SELFIE"),
    GOOGLE_LENS("GOOGLE_LENS"),
    BOKEH("BackgroundDefocus"),
    SLOW_MOTION("SLOW_MOTION"),
    AR_EFFECT("AR Effect"),
    MANUAL("MANUAL"),
    CREATIVE_EFFECT("capturing_mode_single_effect"),
    PANORAMA("capturing_mode_sweep_panorama"),
    SOUND_PHOTO("capturing_mode_soundphoto");

    private final String name;

    CapturingModeListLoader$CapturingModeId(String str) {
        this.name = str;
    }

    public String getName() {
        return this.name;
    }
}
