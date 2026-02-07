package com.sonyericsson.cameracommon.viewfinder.recordingindicator;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.sonyericsson.cameracommon.utility.CommonUtility;

/* JADX INFO: loaded from: classes.dex */
public class RecordingProgressBar extends ImageView {
    public static final String TAG = "RecordingProgressBar";
    private int mProgressBarWidth;
    private Drawable mProgressIcon;
    private int mProgressRatio;

    public RecordingProgressBar(Context context) {
        super(context);
        this.mProgressRatio = 0;
        this.mProgressBarWidth = 0;
    }

    public RecordingProgressBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mProgressRatio = 0;
        this.mProgressBarWidth = 0;
    }

    public RecordingProgressBar(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mProgressRatio = 0;
        this.mProgressBarWidth = 0;
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mProgressIcon = getResources().getDrawable(2131231418, null);
        this.mProgressBarWidth = getResources().getDimensionPixelSize(2131165513);
    }

    public void setProgress(int i, int i2) {
        this.mProgressRatio = i2 != 0 ? (int) ((((double) i) / ((double) i2)) * ((double) ((this.mProgressBarWidth - getPaddingLeft()) - getPaddingRight()))) : 0;
        invalidate();
    }

    public int getProgress() {
        return this.mProgressRatio;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int paddingTop = ((getPaddingTop() + getHeight()) - getPaddingTop()) - getPaddingBottom();
        if (CommonUtility.isMirroringRequired(getContext())) {
            this.mProgressIcon.setBounds((this.mProgressBarWidth - getPaddingRight()) - this.mProgressRatio, getPaddingTop(), this.mProgressBarWidth - getPaddingRight(), paddingTop);
        } else {
            this.mProgressIcon.setBounds(getPaddingLeft(), getPaddingTop(), getPaddingLeft() + this.mProgressRatio, paddingTop);
        }
        this.mProgressIcon.draw(canvas);
    }
}
