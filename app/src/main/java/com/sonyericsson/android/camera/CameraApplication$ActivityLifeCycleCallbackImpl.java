package com.sonyericsson.android.camera;

import android.app.Activity;
import android.app.Application$ActivityLifecycleCallbacks;
import android.os.Bundle;
import android.support.annotation.NonNull;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class CameraApplication$ActivityLifeCycleCallbackImpl implements Application$ActivityLifecycleCallbacks {
    List<Activity> mForegroundActivity = new LinkedList();
    List<CameraApplication$Pausable> mPausables;

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }

    public CameraApplication$ActivityLifeCycleCallbackImpl(@NonNull List<CameraApplication$Pausable> list) {
        this.mPausables = list;
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (activity instanceof CameraActivity) {
            if (this.mForegroundActivity.isEmpty()) {
                Iterator<CameraApplication$Pausable> it = this.mPausables.iterator();
                while (it.hasNext()) {
                    it.next().resume();
                }
            }
            this.mForegroundActivity.add(activity);
        }
    }

    @Override // android.app.Application$ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (activity instanceof CameraActivity) {
            this.mForegroundActivity.remove(activity);
            if (this.mForegroundActivity.isEmpty()) {
                Iterator<CameraApplication$Pausable> it = this.mPausables.iterator();
                while (it.hasNext()) {
                    it.next().pause();
                }
            }
        }
    }
}
