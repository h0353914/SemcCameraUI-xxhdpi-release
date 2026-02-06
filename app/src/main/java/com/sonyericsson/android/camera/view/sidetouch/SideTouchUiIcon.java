package com.sonyericsson.android.camera.view.sidetouch;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout$LayoutParams;

public abstract class SideTouchUiIcon implements SideTouchUi$Icon {
    protected final Context mContext;
    protected SideTouchUi$Icon$OnDetachedListener mOnDetachedListener;

    protected abstract void attachView(ViewGroup viewGroup);

    protected abstract View getIconView();

    protected void onSidePositionAttached(boolean z) {
    }

    protected SideTouchUiIcon(Context context) {
        this.mContext = context;
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public View attach(ViewGroup viewGroup, Point point) {
        attachView(viewGroup);
        Rect rect = new Rect();
        viewGroup.getGlobalVisibleRect(rect);
        adjustSidePosition(rect, point);
        return getIconView();
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void detach(ViewGroup viewGroup) {
        viewGroup.removeView(getIconView());
        if (this.mOnDetachedListener != null) {
            this.mOnDetachedListener.onDetached(this);
            this.mOnDetachedListener = null;
        }
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void setOnDetachedListener(SideTouchUi$Icon$OnDetachedListener sideTouchUi$Icon$OnDetachedListener) {
        this.mOnDetachedListener = sideTouchUi$Icon$OnDetachedListener;
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUi$Icon
    public void onFocusChanged(boolean z) {
        getIconView().setVisibility(z ? 0 : 4);
    }

    private void adjustSidePosition(Rect rect, Point point) {
        int iWidth;
        View iconView = getIconView();
        if (iconView == null) {
            return;
        }
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) iconView.getLayoutParams();
        if (frameLayout$LayoutParams.width <= 0 || frameLayout$LayoutParams.height <= 0) {
            return;
        }
        frameLayout$LayoutParams.leftMargin = point.y - (frameLayout$LayoutParams.width / 2);
        if (frameLayout$LayoutParams.leftMargin < 0) {
            frameLayout$LayoutParams.leftMargin = 0;
        }
        if (rect.height() < frameLayout$LayoutParams.leftMargin + frameLayout$LayoutParams.width) {
            frameLayout$LayoutParams.leftMargin = rect.height() - frameLayout$LayoutParams.width;
        }
        int iWidth2 = (rect.width() - point.x) - (frameLayout$LayoutParams.height / 2);
        if (iWidth2 < frameLayout$LayoutParams.height) {
            iWidth = 0;
        } else {
            iWidth = iWidth2 > rect.width() - frameLayout$LayoutParams.height ? rect.width() - frameLayout$LayoutParams.height : iWidth2;
        }
        frameLayout$LayoutParams.topMargin = iWidth;
        iconView.setLayoutParams(frameLayout$LayoutParams);
        onSidePositionAttached(iWidth == 0);
    }

    int getDimensionPixelSize(int i) {
        return this.mContext.getResources().getDimensionPixelSize(i);
    }

    String getStringResource(int i) {
        return this.mContext.getResources().getString(i);
    }
}
