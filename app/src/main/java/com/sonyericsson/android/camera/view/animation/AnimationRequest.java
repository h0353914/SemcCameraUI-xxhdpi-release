package com.sonyericsson.android.camera.view.animation;

import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;

/* JADX INFO: loaded from: classes.dex */
public class AnimationRequest {
    public final AnimationRequest$AnimationDegree mDegree;
    public final CapturingMode mFrom;
    public final CapturingMode mTarget;
    public final AnimationRequest$AnimationType mType;

    public AnimationRequest(AnimationRequest$AnimationType animationRequest$AnimationType, AnimationRequest$AnimationDegree animationRequest$AnimationDegree, CapturingMode capturingMode, CapturingMode capturingMode2) {
        this.mType = animationRequest$AnimationType;
        this.mDegree = animationRequest$AnimationDegree;
        this.mFrom = capturingMode;
        this.mTarget = capturingMode2;
    }
}
