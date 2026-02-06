package com.sonyericsson.cameracommon.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton$OnCheckedChangeListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

public class Switch extends LinearLayout {
    private static final int DISABLED_FILTER = 2131099706;
    private static final int OFF_POSITION = 0;
    public static final String TAG = "Switch";
    private boolean mIsChecked;
    private CompoundButton$OnCheckedChangeListener mOnCheckedChangeListener;
    private int mOnPosition;
    protected View mSwitchBundle;
    private ImageView mSwitchKnob;
    private ImageView mSwitchTrack;
    protected TextView mText;

    static /* synthetic */ void access$100(Switch r0) {
        r0.changeState();
    }

    public Switch(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mOnPosition = 0;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.mSwitchTrack = (ImageView) findViewById(2131296642);
        this.mSwitchKnob = (ImageView) findViewById(2131296640);
        this.mText = (TextView) findViewById(2131296639);
        this.mSwitchBundle = findViewById(2131296638);
        setOnClickListener(new Switch$SwitchOnClickListener(this, null));
    }

    public void setText(CharSequence charSequence) {
        this.mText.setText(charSequence);
    }

    public void setChecked(boolean z) {
        this.mIsChecked = z;
        updateIcon();
        updatePosition();
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        if (isEnabled()) {
            this.mText.setTextColor(getResources().getColor(2131099700, null));
            this.mSwitchTrack.clearColorFilter();
        } else {
            this.mText.setTextColor(getResources().getColor(2131099711, null));
            this.mSwitchTrack.setColorFilter(2131099706);
        }
    }

    public void setOnCheckedChangeListener(CompoundButton$OnCheckedChangeListener compoundButton$OnCheckedChangeListener) {
        this.mOnCheckedChangeListener = compoundButton$OnCheckedChangeListener;
    }

    private void changeState() {
        this.mIsChecked = !this.mIsChecked;
        setChecked(this.mIsChecked);
        if (this.mOnCheckedChangeListener != null) {
            this.mOnCheckedChangeListener.onCheckedChanged(null, this.mIsChecked);
        }
    }

    private void updatePosition() {
        this.mSwitchKnob.setTranslationX(this.mIsChecked ? this.mOnPosition : 0);
    }

    private void updateIcon() {
        if (this.mIsChecked) {
            this.mSwitchTrack.setImageResource(2131231310);
            this.mSwitchKnob.setImageResource(2131231311);
        } else {
            this.mSwitchTrack.setImageResource(2131231308);
            this.mSwitchKnob.setImageResource(2131231309);
        }
        this.mOnPosition = this.mSwitchTrack.getDrawable().getIntrinsicWidth() - this.mSwitchKnob.getDrawable().getIntrinsicWidth();
    }
}
