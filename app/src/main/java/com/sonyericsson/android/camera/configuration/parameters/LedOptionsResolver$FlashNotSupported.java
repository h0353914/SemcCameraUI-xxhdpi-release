package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import java.util.List;

class LedOptionsResolver$FlashNotSupported extends LedOptionsResolver$PhotoLightIn {
    final /* synthetic */ LedOptionsResolver this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private LedOptionsResolver$FlashNotSupported(LedOptionsResolver ledOptionsResolver) {
        super(ledOptionsResolver, null);
        this.this$0 = ledOptionsResolver;
    }

    /* synthetic */ LedOptionsResolver$FlashNotSupported(LedOptionsResolver ledOptionsResolver, LedOptionsResolver$1 ledOptionsResolver$1) {
        this(ledOptionsResolver);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$PhotoLightIn, com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public Flash[] getFlashOptions(ActionMode actionMode, List<String> list) {
        if (actionMode.mType == 2) {
            return new Flash[0];
        }
        return new Flash[]{Flash.PHOTO_LIGHT_ON_AS_FLASH, Flash.LED_OFF};
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$PhotoLightIn, com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public DisplayFlash[] getDisplayFlashOptions(ActionMode actionMode, List<String> list) {
        return new DisplayFlash[0];
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$PhotoLightIn, com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list) {
        if (actionMode.mType == 2) {
            return PhotoLight.values();
        }
        return new PhotoLight[0];
    }
}
