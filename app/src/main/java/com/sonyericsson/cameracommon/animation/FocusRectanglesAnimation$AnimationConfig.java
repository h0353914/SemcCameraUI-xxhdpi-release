package com.sonyericsson.cameracommon.animation;

public class FocusRectanglesAnimation$AnimationConfig {
    public final int mDuration;
    public final int mFromHeight;
    public final int mFromWidth;
    public final int mToHeight;
    public final int mToWidth;
    final /* synthetic */ FocusRectanglesAnimation this$0;

    public FocusRectanglesAnimation$AnimationConfig(FocusRectanglesAnimation focusRectanglesAnimation, int i, int i2, int i3, int i4) {
        this.this$0 = focusRectanglesAnimation;
        float fFloatValue = Float.valueOf(FocusRectanglesAnimation.access$000(focusRectanglesAnimation).getResources().getString(i3)).floatValue();
        this.mToWidth = FocusRectanglesAnimation.access$000(focusRectanglesAnimation).getResources().getDimensionPixelSize(i);
        this.mToHeight = FocusRectanglesAnimation.access$000(focusRectanglesAnimation).getResources().getDimensionPixelSize(i2);
        this.mFromWidth = (int) (this.mToWidth * fFloatValue);
        this.mFromHeight = (int) (this.mToHeight * fFloatValue);
        this.mDuration = FocusRectanglesAnimation.access$000(focusRectanglesAnimation).getResources().getInteger(i4);
    }
}
