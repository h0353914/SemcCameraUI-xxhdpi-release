package com.sonyericsson.android.camera.configuration.parameters;

import com.sonyericsson.android.camera.ActionMode;
import java.util.List;

public class LedOptionsResolver {
    public static final String TAG = "LedOptionsResolver";
    private static LedOptionsResolver sInstance = new LedOptionsResolver();
    private LedOptionsResolver$Resolver mResolver = new LedOptionsResolver$Unsolved(this, null);

    static /* synthetic */ LedOptionsResolver$Resolver access$200(LedOptionsResolver ledOptionsResolver) {
        return ledOptionsResolver.mResolver;
    }

    static /* synthetic */ LedOptionsResolver$Resolver access$202(LedOptionsResolver ledOptionsResolver, LedOptionsResolver$Resolver ledOptionsResolver$Resolver) {
        ledOptionsResolver.mResolver = ledOptionsResolver$Resolver;
        return ledOptionsResolver$Resolver;
    }

    private LedOptionsResolver() {
    }

    public static LedOptionsResolver getInstance() {
        return sInstance;
    }

    public Flash[] getFlashOptions(ActionMode actionMode, List<String> list) {
        if (list == null || list.size() == 0) {
            return new Flash[0];
        }
        return this.mResolver.getFlashOptions(actionMode, list);
    }

    public DisplayFlash[] getDisplayFlashOptions(ActionMode actionMode, List<String> list) {
        if (list == null || list.size() == 0) {
            return new DisplayFlash[0];
        }
        return this.mResolver.getDisplayFlashOptions(actionMode, list);
    }

    public PhotoLight[] getPhotoLightOptions(ActionMode actionMode, List<String> list) {
        return this.mResolver.getPhotoLightOptions(actionMode, list);
    }

    public int getParameterKeyTextId() {
        return this.mResolver.getParameterKeyTextId();
    }

    public int getParameterKeyTitleTextId() {
        return this.mResolver.getParameterKeyTitleTextId();
    }

    public Flash getDefaultFlash() {
        return this.mResolver.getDefaultFlash();
    }

    public DisplayFlash getDefaultDisplayFlash() {
        return this.mResolver.getDefaultDisplayFlash();
    }
}
