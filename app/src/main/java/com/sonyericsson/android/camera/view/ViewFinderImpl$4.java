package com.sonyericsson.android.camera.view;

import android.graphics.Rect;
import android.util.Size;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;

/* JADX INFO: loaded from: classes.dex */
class ViewFinderImpl$4 implements Runnable {
    final /* synthetic */ ViewFinderImpl this$0;
    final /* synthetic */ Rect val$previewRect;

    ViewFinderImpl$4(ViewFinderImpl viewFinderImpl, Rect rect) {
        this.this$0 = viewFinderImpl;
        this.val$previewRect = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (ViewFinderImpl.access$2400(this.this$0) != null) {
            Size sizeAccordingToLayoutOrientation = LayoutOrientationResolver.getInstance().getSizeAccordingToLayoutOrientation(new Size(this.val$previewRect.width(), this.val$previewRect.height()));
            ViewFinderImpl.access$2400(this.this$0).updateDevicePreviewSize(sizeAccordingToLayoutOrientation.getWidth(), sizeAccordingToLayoutOrientation.getHeight());
        }
        ViewFinderImpl.access$2502(this.this$0, true);
        this.this$0.updateCaptureAreaSize();
        ViewFinderImpl.access$2600(this.this$0);
    }
}
