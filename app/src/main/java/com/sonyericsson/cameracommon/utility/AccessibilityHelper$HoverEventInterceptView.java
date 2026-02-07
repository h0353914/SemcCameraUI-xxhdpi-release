package com.sonyericsson.cameracommon.utility;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class AccessibilityHelper$HoverEventInterceptView extends FrameLayout {
    public AccessibilityHelper$HoverEventInterceptView(Context context) {
        super(context);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptHoverEvent(MotionEvent motionEvent) {
        super.onInterceptHoverEvent(motionEvent);
        AccessibilityHelper.requestAccessibilityFocus(this, motionEvent);
        return true;
    }
}
