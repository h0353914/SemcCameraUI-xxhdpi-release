package com.sonyericsson.android.camera.view.baselayout;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup$LayoutParams;
import android.widget.FrameLayout;
import android.widget.FrameLayout$LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver;
import com.sonyericsson.cameracommon.utility.LayoutOrientationResolver$LayoutOrientationType;
import com.sonyericsson.cameracommon.utility.ResourceUtil;

/* JADX INFO: loaded from: classes.dex */
class BaseLayout$PreviewContainerLayout extends RelativeLayout {
    private Context mContext;
    public final FrameLayout mPreviewContainer;
    public final FrameLayout mPreviewOverlayContainer;

    public BaseLayout$PreviewContainerLayout(Context context) {
        super(context);
        this.mContext = context;
        this.mPreviewContainer = new FrameLayout(context);
        addView(this.mPreviewContainer);
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = new RelativeLayout$LayoutParams(-2, -1);
        relativeLayout$LayoutParams.addRule(9, -1);
        relativeLayout$LayoutParams.addRule(10, -1);
        relativeLayout$LayoutParams.setMargins(0, 0, 0, 0);
        this.mPreviewContainer.setPadding(0, 0, 0, 0);
        this.mPreviewContainer.setLayoutParams(relativeLayout$LayoutParams);
        this.mPreviewContainer.setId(View.generateViewId());
        FrameLayout frameLayout = new FrameLayout(context);
        addView(frameLayout);
        frameLayout.setLayoutParams(new RelativeLayout$LayoutParams(-1, -1));
        this.mPreviewOverlayContainer = new FrameLayout(context);
        frameLayout.addView(this.mPreviewOverlayContainer);
        FrameLayout$LayoutParams frameLayout$LayoutParams = new FrameLayout$LayoutParams(-1, -1);
        frameLayout$LayoutParams.gravity = 3;
        frameLayout$LayoutParams.setMargins(0, 0, 0, 0);
        this.mPreviewOverlayContainer.setPadding(0, 0, 0, 0);
        this.mPreviewOverlayContainer.setLayoutParams(frameLayout$LayoutParams);
        frameLayout.addView((ViewGroup) LayoutInflater.from(context).inflate(2131493026, (ViewGroup) null));
    }

    public void updatePreviewContainerLayout(Rect rect, LayoutDependencyResolver$ScreenAspect layoutDependencyResolver$ScreenAspect) {
        RelativeLayout$LayoutParams relativeLayout$LayoutParams = (RelativeLayout$LayoutParams) this.mPreviewContainer.getLayoutParams();
        ViewGroup$LayoutParams layoutParams = getLayoutParams();
        if (layoutParams == null || relativeLayout$LayoutParams == null) {
            return;
        }
        int dimensionPixelSize = ResourceUtil.getDimensionPixelSize(this.mContext, this.mContext.getPackageName(), 2131165428);
        int dimensionPixelSize2 = ResourceUtil.getDimensionPixelSize(this.mContext, this.mContext.getPackageName(), 2131165456);
        if (LayoutOrientationResolver.getInstance().getOrientation() == LayoutOrientationResolver$LayoutOrientationType.PORTRAIT) {
            if (layoutDependencyResolver$ScreenAspect == LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE) {
                setPadding(0, dimensionPixelSize, 0, dimensionPixelSize2);
                relativeLayout$LayoutParams.addRule(9, 0);
                relativeLayout$LayoutParams.addRule(10, -1);
                relativeLayout$LayoutParams.addRule(15, 0);
                relativeLayout$LayoutParams.addRule(14, -1);
            }
            if (layoutParams.width != rect.height()) {
                layoutParams.width = rect.height();
                layoutParams.height = rect.width();
                requestLayout();
                return;
            }
            return;
        }
        if (layoutDependencyResolver$ScreenAspect == LayoutDependencyResolver$ScreenAspect.EIGHTEEN_NINE) {
            setPadding(dimensionPixelSize, 0, dimensionPixelSize2, 0);
            relativeLayout$LayoutParams.addRule(9, -1);
            relativeLayout$LayoutParams.addRule(10, 0);
            relativeLayout$LayoutParams.addRule(14, 0);
            relativeLayout$LayoutParams.addRule(15, -1);
        }
        if (layoutParams.width != rect.width()) {
            layoutParams.width = rect.width();
            layoutParams.height = rect.height();
            requestLayout();
        }
    }
}
