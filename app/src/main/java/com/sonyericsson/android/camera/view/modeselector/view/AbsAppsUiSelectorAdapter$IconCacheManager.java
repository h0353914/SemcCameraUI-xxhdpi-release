package com.sonyericsson.android.camera.view.modeselector.view;

import android.content.Context;
import com.sonyericsson.android.camera.view.modeselector.ImageLoader;
import java.util.ArrayList;
import java.util.List;

class AbsAppsUiSelectorAdapter$IconCacheManager {
    private static ArrayList<AbsAppsUiSelectorAdapter> sCacheClientStack;
    private static ImageLoader sImageLoader;

    private AbsAppsUiSelectorAdapter$IconCacheManager() {
    }

    public static void registerClient(AbsAppsUiSelectorAdapter absAppsUiSelectorAdapter, Context context) {
        if (sCacheClientStack == null) {
            sCacheClientStack = new ArrayList<>();
        }
        if (!sCacheClientStack.contains(absAppsUiSelectorAdapter)) {
            sCacheClientStack.add(absAppsUiSelectorAdapter);
        }
        if (sImageLoader == null) {
            sImageLoader = ImageLoader.getInstance(context);
            sImageLoader.setImageFadeIn(true);
            sImageLoader.setLoadingImage(2131230944);
        }
    }

    public static ImageLoader getImageLoader() {
        return sImageLoader;
    }

    public static void unregisterClient(AbsAppsUiSelectorAdapter absAppsUiSelectorAdapter, List<AbsPanelView$PanelAttributes> list) {
        if (sCacheClientStack == null) {
            return;
        }
        sCacheClientStack.remove(absAppsUiSelectorAdapter);
        if (sCacheClientStack.isEmpty()) {
            sCacheClientStack = null;
            releaseCache(list);
        }
    }

    public static void unregisterToUntilClient(AbsAppsUiSelectorAdapter absAppsUiSelectorAdapter, List<AbsPanelView$PanelAttributes> list) {
        if (sCacheClientStack == null) {
            return;
        }
        int iIndexOf = sCacheClientStack.indexOf(absAppsUiSelectorAdapter);
        for (int i = 0; i <= iIndexOf; i++) {
            sCacheClientStack.remove(0);
        }
        if (sCacheClientStack.isEmpty()) {
            sCacheClientStack = null;
            releaseCache(list);
        }
    }

    private static void releaseCache(List<AbsPanelView$PanelAttributes> list) {
        if (sImageLoader != null) {
            if (list != null && !list.isEmpty()) {
                for (int i = 0; i < list.size(); i++) {
                    String iconUri = list.get(i).getIconUri();
                    if (iconUri != null) {
                        sImageLoader.removeCache(iconUri);
                    }
                }
            }
            sImageLoader.release();
            sImageLoader = null;
        }
    }
}
