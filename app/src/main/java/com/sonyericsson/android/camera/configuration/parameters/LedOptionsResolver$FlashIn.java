package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class LedOptionsResolver$FlashIn extends LedOptionsResolver$Resolver {
    final /* synthetic */ LedOptionsResolver this$0;

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public int getParameterKeyTextId() {
        return 2131689842;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public int getParameterKeyTitleTextId() {
        return 2131689840;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private LedOptionsResolver$FlashIn(LedOptionsResolver ledOptionsResolver) {
        super(ledOptionsResolver, null);
        this.this$0 = ledOptionsResolver;
    }

    /* synthetic */ LedOptionsResolver$FlashIn(LedOptionsResolver ledOptionsResolver, LedOptionsResolver$1 ledOptionsResolver$1) {
        this(ledOptionsResolver);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public Flash[] getFlashOptions(ActionMode actionMode, List<String> list) {
        if (actionMode.mType == 2) {
            return new Flash[0];
        }
        return new Flash[]{Flash.AUTO, Flash.ON, Flash.RED_EYE, Flash.OFF, Flash.LED_ON};
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public DisplayFlash[] getDisplayFlashOptions(ActionMode actionMode, List<String> list) {
        if (!DisplayFlash.isSupported(actionMode.mCameraId) || actionMode.mType == 2) {
            return new DisplayFlash[0];
        }
        return new DisplayFlash[]{DisplayFlash.DISPLAY_AUTO, DisplayFlash.DISPLAY_ON, DisplayFlash.DISPLAY_OFF};
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list) {
        if (actionMode.mType == 2) {
            return PhotoLight.values();
        }
        return new PhotoLight[0];
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public Flash getDefaultFlash() {
        return Flash.OFF;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public DisplayFlash getDefaultDisplayFlash() {
        return DisplayFlash.DISPLAY_AUTO;
    }
}
