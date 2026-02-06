package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.content.Context;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout$LayoutParams;
import android.widget.TextView;
import com.sonyericsson.android.camera.util.CoordinateUtil;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.cameracommon.font.FontUtil;
import com.sonymobile.cameracommon.font.FontUtil$RobotoFontType;

class ImageQualityControlTab extends LinearLayout {
    private RelativeLayout mContainer;
    private final Context mContext;
    private ImageView mIcon;
    private ImageView mValueIcon;
    private TextView mValueText;

    public ImageQualityControlTab(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        setWillNotDraw(false);
        this.mContainer = (RelativeLayout) findViewById(2131296363);
        this.mIcon = (ImageView) findViewById(2131296423);
        this.mValueText = (TextView) findViewById(2131296691);
        this.mValueIcon = (ImageView) findViewById(2131296690);
        if (getResources().getDisplayMetrics().densityDpi > DisplayMetrics.DENSITY_DEVICE_STABLE) {
            float f = (DisplayMetrics.DENSITY_DEVICE_STABLE * 1.0f) / 160.0f;
            RelativeLayout$LayoutParams relativeLayout$LayoutParams = (RelativeLayout$LayoutParams) this.mIcon.getLayoutParams();
            relativeLayout$LayoutParams.height = (int) (CoordinateUtil.convertPx2Dip(this.mContext, relativeLayout$LayoutParams.height) * f);
            this.mIcon.setLayoutParams(relativeLayout$LayoutParams);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams2 = (RelativeLayout$LayoutParams) this.mValueText.getLayoutParams();
            relativeLayout$LayoutParams2.height = (int) (CoordinateUtil.convertPx2Dip(this.mContext, relativeLayout$LayoutParams2.height) * f);
            this.mValueText.setLayoutParams(relativeLayout$LayoutParams2);
            RelativeLayout$LayoutParams relativeLayout$LayoutParams3 = (RelativeLayout$LayoutParams) this.mValueIcon.getLayoutParams();
            relativeLayout$LayoutParams3.height = (int) (CoordinateUtil.convertPx2Dip(this.mContext, relativeLayout$LayoutParams3.height) * f);
            this.mValueIcon.setLayoutParams(relativeLayout$LayoutParams3);
        }
        FontUtil.setRobotoFont(this.mValueText, FontUtil$RobotoFontType.MEDIUM);
    }

    public void setIcon(int i) {
        this.mIcon.setImageResource(i);
        this.mIcon.setVisibility(0);
    }

    public void setValueText(String str, boolean z) {
        this.mValueText.setText(str);
        if (!z) {
            this.mValueText.setTextColor(-1);
        } else {
            this.mValueText.setTextColor(getResources().getColor(2131099718));
        }
        this.mValueText.setVisibility(0);
    }

    public void setValueIcon(int i) {
        this.mValueIcon.setImageResource(i);
        this.mValueIcon.setVisibility(0);
    }

    public void setUiOrientation(int i) {
        this.mContainer.setRotation(RotationUtil.getAngle(i));
    }
}
