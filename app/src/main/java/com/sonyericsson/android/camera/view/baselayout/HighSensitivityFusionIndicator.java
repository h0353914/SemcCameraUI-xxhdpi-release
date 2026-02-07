package com.sonyericsson.android.camera.view.baselayout;

import android.support.annotation.NonNull;
import android.view.View;
import android.view.View$OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout$LayoutParams;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.utility.RotationUtil;

/* JADX INFO: loaded from: classes.dex */
public class HighSensitivityFusionIndicator {
    private View$OnClickListener mListener;
    private final ViewGroup mRootView;

    static /* synthetic */ View$OnClickListener access$000(HighSensitivityFusionIndicator highSensitivityFusionIndicator) {
        return highSensitivityFusionIndicator.mListener;
    }

    public HighSensitivityFusionIndicator(@NonNull ViewGroup viewGroup) {
        this.mRootView = viewGroup;
        ImageView imageView = (ImageView) this.mRootView.findViewById(2131296694);
        imageView.setOnClickListener(new HighSensitivityFusionIndicator$1(this));
        imageView.setContentDescription(viewGroup.getContext().getString(2131689569));
    }

    public void setChecked(boolean z) {
        ImageView imageView = (ImageView) this.mRootView.findViewById(2131296694);
        if (imageView.isActivated() != z) {
            imageView.setActivated(z);
        }
    }

    public void setEnabled(boolean z) {
        ImageView imageView = (ImageView) this.mRootView.findViewById(2131296694);
        if (z) {
            imageView.setImageResource(2131231096);
        } else {
            imageView.setImageResource(2131231099);
        }
    }

    public void show() {
        if (this.mRootView.getVisibility() != 0) {
            this.mRootView.setVisibility(0);
        }
    }

    public void hide() {
        if (this.mRootView.getVisibility() != 8) {
            this.mRootView.setVisibility(8);
        }
    }

    public void setListener(View$OnClickListener view$OnClickListener) {
        this.mListener = view$OnClickListener;
    }

    public void setSensorOrientation(int i) {
        this.mRootView.setRotation(RotationUtil.getAngle(i));
        ImageView imageView = (ImageView) this.mRootView.findViewById(2131296694);
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) imageView.getLayoutParams();
        frameLayout$LayoutParams.gravity = 48;
        imageView.setLayoutParams(frameLayout$LayoutParams);
    }

    public View getAnimationTarget() {
        return this.mRootView.findViewById(2131296694);
    }
}
