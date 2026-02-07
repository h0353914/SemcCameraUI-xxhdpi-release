package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import com.sonyericsson.android.camera.device.CameraInfo$CameraId;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class LedOptionsResolver$Unsolved extends LedOptionsResolver$Resolver {
    final /* synthetic */ LedOptionsResolver this$0;

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public int getParameterKeyTextId() {
        return -1;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public int getParameterKeyTitleTextId() {
        return -1;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private LedOptionsResolver$Unsolved(LedOptionsResolver ledOptionsResolver) {
        super(ledOptionsResolver, null);
        this.this$0 = ledOptionsResolver;
    }

    /* synthetic */ LedOptionsResolver$Unsolved(LedOptionsResolver ledOptionsResolver, LedOptionsResolver$1 ledOptionsResolver$1) {
        this(ledOptionsResolver);
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public Flash[] getFlashOptions(ActionMode actionMode, List<String> list) {
        LedOptionsResolver$Resolver resolver = getResolver(actionMode.mType, list);
        if (resolver != null) {
            LedOptionsResolver.access$202(this.this$0, resolver);
            return LedOptionsResolver.access$200(this.this$0).getFlashOptions(actionMode, list);
        }
        return new Flash[0];
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public DisplayFlash[] getDisplayFlashOptions(ActionMode actionMode, List<String> list) {
        LedOptionsResolver$Resolver resolver = getResolver(actionMode.mType, list);
        if (resolver != null) {
            LedOptionsResolver.access$202(this.this$0, resolver);
            return LedOptionsResolver.access$200(this.this$0).getDisplayFlashOptions(actionMode, list);
        }
        return new DisplayFlash[0];
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list) {
        LedOptionsResolver$Resolver resolver = getResolver(actionMode.mType, list);
        if (resolver != null) {
            LedOptionsResolver.access$202(this.this$0, resolver);
            return LedOptionsResolver.access$200(this.this$0).getPhotoLightOptions(actionMode, list);
        }
        return new PhotoLight[0];
    }

    private LedOptionsResolver$Resolver getResolver(int i, List<String> list) {
        if (list != null && !list.isEmpty()) {
            for (String str : list) {
                if (Flash.ON.getValue().equals(str) || DisplayFlash.DISPLAY_ON.getValue().equals(str)) {
                    return new LedOptionsResolver$FlashIn(this.this$0, null);
                }
                if (Flash.LED_ON.getValue().equals(str)) {
                    if (i == 1) {
                        return new LedOptionsResolver$FlashNotSupported(this.this$0, null);
                    }
                    return new LedOptionsResolver$PhotoLightIn(this.this$0, null);
                }
            }
        }
        return null;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public Flash getDefaultFlash() {
        LedOptionsResolver$Resolver resolver = getResolver(1, PlatformCapability.getCameraCapability(CameraInfo$CameraId.BACK).FLASH.get());
        if (resolver != null) {
            LedOptionsResolver.access$202(this.this$0, resolver);
            return LedOptionsResolver.access$200(this.this$0).getDefaultFlash();
        }
        return Flash.LED_OFF;
    }

    @Override // com.sonyericsson.android.camera.configuration.parameters.LedOptionsResolver$Resolver
    public DisplayFlash getDefaultDisplayFlash() {
        LedOptionsResolver$Resolver resolver = getResolver(1, PlatformCapability.getCameraCapability(CameraInfo$CameraId.FRONT).FLASH.get());
        if (resolver != null) {
            LedOptionsResolver.access$202(this.this$0, resolver);
            return LedOptionsResolver.access$200(this.this$0).getDefaultDisplayFlash();
        }
        return DisplayFlash.DISPLAY_OFF;
    }
}
