package com.sonyericsson.android.camera.view.sidetouch;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout$LayoutParams;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.sonyericsson.android.camera.view.ViewFinderImpl$RecordingTimeReceiverProxy;
import com.sonyericsson.android.camera.view.ViewFinderImpl$SideTouchUiButtonListenerFactory;
import com.sonyericsson.android.camera.view.baselayout.onscreenbutton.OnScreenButtonItemFactory$ButtonType;
import com.sonyericsson.cameracommon.utility.RotationUtil;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.DurationParameterSet;
import com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingTimeIndicator;
import com.sonymobile.cameracommon.font.FontUtil;
import com.sonymobile.cameracommon.font.FontUtil$RobotoFontType;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
protected class SideTouchUiIcon$RecordingIcon extends SideTouchUiIcon$ScreenButtonIcon implements RecordingTimeIndicator {
    private TextView mRecTimeView;
    private DurationParameterSet mRecordingTime;

    protected SideTouchUiIcon$RecordingIcon(Context context, int i, ViewFinderImpl$SideTouchUiButtonListenerFactory viewFinderImpl$SideTouchUiButtonListenerFactory, ViewFinderImpl$RecordingTimeReceiverProxy viewFinderImpl$RecordingTimeReceiverProxy) {
        super(context, i, viewFinderImpl$SideTouchUiButtonListenerFactory);
        viewFinderImpl$RecordingTimeReceiverProxy.bindReceiver(this);
        this.mRecordingTime = new DurationParameterSet();
        this.mRecordingTime.update(viewFinderImpl$RecordingTimeReceiverProxy.getCurrentTime());
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon$ScreenButtonIcon, com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon
    protected void attachView(ViewGroup viewGroup) {
        super.attachView(viewGroup);
        this.mRecTimeView = (TextView) this.mOnScreenButtonGroup.findViewById(2131296526);
        this.mRecTimeView.setRotation(RotationUtil.getAngle(this.mOrientation));
        this.mRecTimeView.setVisibility(0);
        this.mOnScreenButtonGroup.findViewById(2131296343).setBackgroundResource(2131231321);
        FontUtil.setRobotoFont(this.mRecTimeView, FontUtil$RobotoFontType.BOLD);
        int i = this.mRecTimeView.getLayoutParams().height;
        if (this.mOrientation == 1) {
            int i2 = this.mRecTimeView.getLayoutParams().width;
            this.mOnScreenButtonGroup.getLayoutParams().width += i;
            this.mOnScreenButtonGroup.getLayoutParams().width += getDimensionPixelSize(2131165625);
            this.mRecTimeView.setX(this.mRecTimeView.getX() - ((i2 / 2.0f) - (i / 2.0f)));
        } else {
            this.mOnScreenButtonGroup.getLayoutParams().height += i;
            this.mOnScreenButtonGroup.getLayoutParams().height += getDimensionPixelSize(2131165625);
        }
        updateRecordingTimeView();
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon
    protected void onSidePositionAttached(boolean z) {
        FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams) ((LinearLayout) this.mOnScreenButtonGroup.findViewById(2131296343)).getLayoutParams();
        FrameLayout$LayoutParams frameLayout$LayoutParams2 = (FrameLayout$LayoutParams) this.mRecTimeView.getLayoutParams();
        if (this.mOrientation == 1) {
            frameLayout$LayoutParams.gravity = 5;
            frameLayout$LayoutParams2.gravity = 19;
            return;
        }
        frameLayout$LayoutParams2.gravity = 1;
        if (z) {
            frameLayout$LayoutParams2.gravity = 80 | frameLayout$LayoutParams2.gravity;
        } else {
            frameLayout$LayoutParams2.gravity |= 48;
            frameLayout$LayoutParams.gravity = 80;
        }
    }

    @Override // com.sonyericsson.android.camera.view.sidetouch.SideTouchUiIcon$ScreenButtonIcon
    protected void setupButtons() {
        setupButtonMain(OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_STOP_RECORDING, this.mOrientation, false);
        setupButtonOption1(OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_PAUSE_RECORDING, this.mOrientation, false);
        setupButtonOption2(OnScreenButtonItemFactory$ButtonType.SIDE_TOUCH_SNAPSHOT_RECORDING, this.mOrientation, true);
    }

    @Override // com.sonyericsson.cameracommon.viewfinder.recordingindicator.RecordingTimeIndicator
    public void onTimeTicked(int i) {
        if (this.mRecordingTime == null || getIconView() == null || !getIconView().isAttachedToWindow()) {
            return;
        }
        this.mRecordingTime.update(i);
        updateRecordingTimeView();
    }

    private void updateRecordingTimeView() {
        String str;
        if (this.mRecordingTime.hour < 1) {
            str = String.format(Locale.US, this.mContext.getString(2131689547), Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec));
        } else {
            str = String.format(Locale.US, this.mContext.getString(2131689546), Integer.valueOf(this.mRecordingTime.hour), Integer.valueOf(this.mRecordingTime.min), Integer.valueOf(this.mRecordingTime.sec));
        }
        this.mRecTimeView.setText(str);
    }
}
