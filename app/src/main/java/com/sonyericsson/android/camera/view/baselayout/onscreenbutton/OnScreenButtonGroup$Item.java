package com.sonyericsson.android.camera.view.baselayout.onscreenbutton;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class OnScreenButtonGroup$Item {
    private final boolean mIsSoundEffectsEnabled;
    private final OnScreenButtonListener mOnScreenButtonListener;
    private final List<OnScreenButtonGroup$OnItemUpdatedListener> mOnUpdatedListeners = new ArrayList();
    private boolean mIsEnabled = true;

    public abstract OnScreenButton$Resource getResource();

    public OnScreenButtonGroup$Item(OnScreenButtonListener onScreenButtonListener, boolean z) {
        this.mOnScreenButtonListener = onScreenButtonListener;
        this.mIsSoundEffectsEnabled = z;
    }

    public OnScreenButtonListener getOnScreenButtonListener() {
        return this.mOnScreenButtonListener;
    }

    public boolean isSoundEffectsEnabled() {
        return this.mIsSoundEffectsEnabled;
    }

    public void setEnabled(boolean z) {
        this.mIsEnabled = z;
        notifyUpdated();
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    void addOnUpdatedListener(OnScreenButtonGroup$OnItemUpdatedListener onScreenButtonGroup$OnItemUpdatedListener) {
        if (this.mOnUpdatedListeners.contains(onScreenButtonGroup$OnItemUpdatedListener)) {
            return;
        }
        this.mOnUpdatedListeners.add(onScreenButtonGroup$OnItemUpdatedListener);
    }

    void removeOnUpdatedListener(OnScreenButtonGroup$OnItemUpdatedListener onScreenButtonGroup$OnItemUpdatedListener) {
        this.mOnUpdatedListeners.remove(onScreenButtonGroup$OnItemUpdatedListener);
    }

    void notifyUpdated() {
        Iterator<OnScreenButtonGroup$OnItemUpdatedListener> it = this.mOnUpdatedListeners.iterator();
        while (it.hasNext()) {
            it.next().onUpdated(this);
        }
    }
}
