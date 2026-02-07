package com.sonyericsson.android.camera.view.overlaycontrol.imagequality;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonymobile.cameracommon.font.FontUtil;
import com.sonymobile.cameracommon.font.FontUtil$RobotoFontType;

/* JADX INFO: loaded from: classes.dex */
class ImageQualityControlResetButton extends RelativeLayout {
    private RelativeLayout mContainer;
    private TextView mTextView;

    public ImageQualityControlResetButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContainer = (RelativeLayout) findViewById(2131296363);
        this.mTextView = (TextView) findViewById(2131296532);
        if ("Reset".equalsIgnoreCase(this.mTextView.getText().toString())) {
            this.mTextView.setText("RESET");
        }
        FontUtil.setRobotoFont(this.mTextView, FontUtil$RobotoFontType.CONDENSED_BOLD);
    }

    public void setUiOrientation(int i) {
        this.mContainer.setRotation(RotationUtil.getAngle(i));
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (z) {
            this.mTextView.setTextColor(Color.parseColor("#FFFFFFFF"));
        } else {
            this.mTextView.setTextColor(Color.parseColor("#4CFFFFFF"));
        }
    }
}
