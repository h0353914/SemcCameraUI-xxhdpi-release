package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import java.util.List;

abstract class LedOptionsResolver$Resolver {
    final /* synthetic */ LedOptionsResolver this$0;

    public abstract DisplayFlash getDefaultDisplayFlash();

    public abstract Flash getDefaultFlash();

    public abstract DisplayFlash[] getDisplayFlashOptions(ActionMode actionMode, List<String> list);

    public abstract Flash[] getFlashOptions(ActionMode actionMode, List<String> list);

    public abstract int getParameterKeyTextId();

    public abstract int getParameterKeyTitleTextId();

    public abstract PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list);

    private LedOptionsResolver$Resolver(LedOptionsResolver ledOptionsResolver) {
        this.this$0 = ledOptionsResolver;
    }

    /* synthetic */ LedOptionsResolver$Resolver(LedOptionsResolver ledOptionsResolver, LedOptionsResolver$1 ledOptionsResolver$1) {
        this(ledOptionsResolver);
    }
}
