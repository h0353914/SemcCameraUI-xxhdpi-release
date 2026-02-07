package com.sonyericsson.android.camera.view;

import android.graphics.Point;
import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;

/* JADX INFO: loaded from: classes.dex */
class UserEventHandler$CaptureAreaTouchEventProcedureSelector extends UserEventHandler$TouchEventProcedure {
    private final UserEventHandler$PhotoCaptureAreaEventProcedure mPhoto;
    private final UserEventHandler$FrontPhotoCaptureAreaEventProcedure mPhotoFront;
    private final UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure mSuperSlow;
    private final UserEventHandler$VideoCaptureAreaEventProcedure mVideo;
    private final UserEventHandler$FrontVideoCaptureAreaEventProcedure mVideoFront;
    final /* synthetic */ UserEventHandler this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private UserEventHandler$CaptureAreaTouchEventProcedureSelector(UserEventHandler userEventHandler) {
        super(userEventHandler, null);
        this.this$0 = userEventHandler;
        this.mPhoto = new UserEventHandler$PhotoCaptureAreaEventProcedure(this.this$0, null);
        this.mPhotoFront = new UserEventHandler$FrontPhotoCaptureAreaEventProcedure(this.this$0, null);
        this.mVideo = new UserEventHandler$VideoCaptureAreaEventProcedure(this.this$0, null);
        this.mVideoFront = new UserEventHandler$FrontVideoCaptureAreaEventProcedure(this.this$0, null);
        this.mSuperSlow = new UserEventHandler$SuperSlowVideoCaptureAreaEventProcedure(this.this$0, null);
    }

    /* synthetic */ UserEventHandler$CaptureAreaTouchEventProcedureSelector(UserEventHandler userEventHandler, UserEventHandler$1 userEventHandler$1) {
        this(userEventHandler);
    }

    private UserEventHandler$TouchEventProcedure getCaptureAreaProcedure() {
        CapturingMode capturingMode = (CapturingMode) UserEventHandler.access$4600(this.this$0).get(UserSettingKey.CAPTURING_MODE);
        if (capturingMode.isVideo()) {
            if (capturingMode.isFront()) {
                return this.mVideoFront;
            }
            if (UserEventHandler.access$4700(this.this$0)) {
                return this.mSuperSlow;
            }
            return this.mVideo;
        }
        if (capturingMode.isFront()) {
            return this.mPhotoFront;
        }
        return this.mPhoto;
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    void doTouchDown() {
        getCaptureAreaProcedure().doTouchDown();
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    void doTouchUp(Point point) {
        getCaptureAreaProcedure().doTouchUp(point);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    void doClick(Point point) {
        getCaptureAreaProcedure().doClick(point);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    void doLongClick(Point point) {
        getCaptureAreaProcedure().doLongClick(point);
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    void doCancel() {
        getCaptureAreaProcedure().doCancel();
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    void doTouchAreaScaleReady() {
        getCaptureAreaProcedure().doTouchAreaScaleReady();
    }

    @Override // com.sonyericsson.android.camera.view.UserEventHandler$TouchEventProcedure
    void doTouchAreaScaling(float f) {
        getCaptureAreaProcedure().doTouchAreaScaling(f);
    }
}
