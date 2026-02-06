package com.sonymobile.sidetouchgesturedetector;

import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings$System;

class SideTouchGestureDetector$DynamicSettings {
    final /* synthetic */ SideTouchGestureDetector this$0;
    private boolean mRegistered = false;
    private ContentObserver mContentObserver = new SideTouchGestureDetector$DynamicSettings$1(this, new Handler());

    static /* synthetic */ void access$000(SideTouchGestureDetector$DynamicSettings sideTouchGestureDetector$DynamicSettings) {
        sideTouchGestureDetector$DynamicSettings.loadSettings();
    }

    public SideTouchGestureDetector$DynamicSettings(SideTouchGestureDetector sideTouchGestureDetector) {
        this.this$0 = sideTouchGestureDetector;
        registerObserver();
        loadSettings();
    }

    public void registerObserver() {
        if (this.mRegistered) {
            return;
        }
        SideTouchGestureDetector.access$100(this.this$0).getContentResolver().registerContentObserver(Settings$System.getUriFor("somc.side_sense_double_tap_timeout"), false, this.mContentObserver);
        this.mRegistered = true;
    }

    public void unregisterObserver() {
        if (this.mRegistered) {
            SideTouchGestureDetector.access$100(this.this$0).getContentResolver().unregisterContentObserver(this.mContentObserver);
            this.mRegistered = false;
        }
    }

    private void loadSettings() {
        this.this$0.setDoubleTapTimeout(Settings$System.getInt(SideTouchGestureDetector.access$100(this.this$0).getContentResolver(), "somc.side_sense_double_tap_timeout", 360));
        if (SideTouchGestureDetector.access$200(this.this$0) != null) {
            SideTouchGestureDetector.access$200(this.this$0).onConfigurationLoaded();
        }
    }
}
