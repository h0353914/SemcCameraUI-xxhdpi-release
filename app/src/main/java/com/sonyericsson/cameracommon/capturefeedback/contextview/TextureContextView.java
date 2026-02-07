package com.sonyericsson.cameracommon.capturefeedback.contextview;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.view.TextureView;
import android.view.TextureView$SurfaceTextureListener;
import com.sonyericsson.android.camera.recorder.utility.ReferenceClock;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.ThreadUtil;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class TextureContextView extends TextureView implements TextureView$SurfaceTextureListener, CaptureFeedback {
    private static final long DRAW_INTERVAL_MILLIS = 33;
    public static final String TAG = "TextureContextView";
    private static final String THREAD_NAME = "ShutterFeedback";
    private CaptureFeedbackAnimation mAnimation;
    private final ReferenceClock mAnimationElapsedTimeCount;
    private final TextureContextView$AnimationCanvas mCanvas;
    private final ScheduledExecutorService mExecutor;
    private boolean mIsAnimationRequested;
    private ScheduledFuture<?> mScheduledFuture;
    private final TextureContextView$SetInvisibleTask mSetInvisibleTask;

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void onPause() {
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void onResume() {
    }

    @Override // android.view.TextureView$SurfaceTextureListener
    public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView$SurfaceTextureListener
    public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // android.view.TextureView$SurfaceTextureListener
    public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    static /* synthetic */ TextureContextView$AnimationCanvas access$300(TextureContextView textureContextView) {
        return textureContextView.mCanvas;
    }

    static /* synthetic */ CaptureFeedbackAnimation access$400(TextureContextView textureContextView) {
        return textureContextView.mAnimation;
    }

    static /* synthetic */ ReferenceClock access$500(TextureContextView textureContextView) {
        return textureContextView.mAnimationElapsedTimeCount;
    }

    static /* synthetic */ TextureContextView$SetInvisibleTask access$600(TextureContextView textureContextView) {
        return textureContextView.mSetInvisibleTask;
    }

    static /* synthetic */ ScheduledFuture access$700(TextureContextView textureContextView) {
        return textureContextView.mScheduledFuture;
    }

    public TextureContextView(Context context) {
        super(context);
        this.mSetInvisibleTask = new TextureContextView$SetInvisibleTask(this, null);
        this.mCanvas = new TextureContextView$AnimationCanvas(this, null);
        setSurfaceTextureListener(this);
        this.mAnimationElapsedTimeCount = new ReferenceClock();
        this.mExecutor = ThreadUtil.buildScheduledExecutor("ShutterFeedback", 10);
    }

    @Override // android.view.TextureView$SurfaceTextureListener
    public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        if (this.mIsAnimationRequested) {
            this.mIsAnimationRequested = false;
            this.mScheduledFuture = this.mExecutor.scheduleAtFixedRate(new TextureContextView$DrawFrameTask(this, null), 0L, 33L, TimeUnit.MILLISECONDS);
        }
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void start(CaptureFeedbackAnimation captureFeedbackAnimation) {
        if (CamLog.VERBOSE) {
            CamLog.d("start");
        }
        this.mAnimation = captureFeedbackAnimation;
        this.mAnimationElapsedTimeCount.start();
        setVisibility(0);
        if (isAvailable()) {
            this.mScheduledFuture = this.mExecutor.scheduleAtFixedRate(new TextureContextView$DrawFrameTask(this, null), 0L, 33L, TimeUnit.MILLISECONDS);
        } else {
            this.mIsAnimationRequested = true;
        }
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void release() {
        if (CamLog.VERBOSE) {
            CamLog.d("release()");
        }
    }
}
