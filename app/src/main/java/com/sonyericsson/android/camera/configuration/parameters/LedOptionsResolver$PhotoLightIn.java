package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class LedOptionsResolver$PhotoLightIn extends LedOptionsResolver$Resolver {
    final /* synthetic */ LedOptionsResolver this$0;

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public int getParameterKeyTextId() {
        return 2131689841;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public int getParameterKeyTitleTextId() {
        return 2131689841;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private LedOptionsResolver$PhotoLightIn(LedOptionsResolver ledOptionsResolver) {
        super(ledOptionsResolver, null);
        this.this$0 = ledOptionsResolver;
    }

    /* synthetic */ LedOptionsResolver$PhotoLightIn(LedOptionsResolver ledOptionsResolver, LedOptionsResolver$1 ledOptionsResolver$1) {
        this(ledOptionsResolver);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public Flash[] getFlashOptions(ActionMode actionMode, List<String> list) {
        return new Flash[0];
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public DisplayFlash[] getDisplayFlashOptions(ActionMode actionMode, List<String> list) {
        return new DisplayFlash[0];
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list) {
        return PhotoLight.values();
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public Flash getDefaultFlash() {
        return Flash.LED_OFF;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public DisplayFlash getDefaultDisplayFlash() {
        return DisplayFlash.DISPLAY_OFF;
    }
}
