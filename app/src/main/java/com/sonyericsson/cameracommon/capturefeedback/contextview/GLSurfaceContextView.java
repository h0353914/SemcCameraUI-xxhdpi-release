package com.sonyericsson.cameracommon.capturefeedback.contextview;

import android.content.Context;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView$Renderer;
import android.opengl.Matrix;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import com.sonyericsson.android.camera.recorder.utility.ReferenceClock;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimation;
import com.sonyericsson.cameracommon.capturefeedback.animation.CaptureFeedbackAnimationCanvas;
import com.sonymobile.cameracommon.opengl.ExtendedGlSurfaceView;
import com.sonymobile.cameracommon.opengl.ShaderProgramFactory;
import com.sonymobile.cameracommon.opengl.SimpleFrame;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;

public class GLSurfaceContextView extends ExtendedGlSurfaceView implements GLSurfaceView$Renderer, CaptureFeedback {
    private static final long ANIMATION_CANCEL_WAITING_DURATION = 100;
    private static final float CENTER_X_POS = 0.0f;
    private static final float CENTER_Y_POS = 0.0f;
    private static final float CENTER_Z_POS = 0.2f;
    public static final String TAG = "GLSurfaceContextView";
    private CaptureFeedbackAnimation mAnimation;
    private final CaptureFeedbackAnimationCanvas mAnimationCanvas;
    private final ReferenceClock mAnimationElapsedTimeCount;
    private CountDownLatch mCountDownLatch;
    private SimpleFrame mFlashFeedback;
    private final GLSurfaceContextView$SetInvisibleTask mSetInvisibleTask;
    private int mSimpleFrameShader;
    private static final float[] EYE_SIGHT_MATRIX = new float[16];
    private static final float[] PERSPECTIVE_PROJECTION_MATRIX = new float[16];
    private static final float[] PARALLEL_PROJECTION_MATRIX = new float[16];
    private static final float[] ROOT_GM = new float[16];

    public static final void preload() {
    }

    @Override // android.opengl.GLSurfaceView$Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
    }

    static /* synthetic */ SimpleFrame access$300(GLSurfaceContextView gLSurfaceContextView) {
        return gLSurfaceContextView.mFlashFeedback;
    }

    static /* synthetic */ SimpleFrame access$302(GLSurfaceContextView gLSurfaceContextView, SimpleFrame simpleFrame) {
        gLSurfaceContextView.mFlashFeedback = simpleFrame;
        return simpleFrame;
    }

    static /* synthetic */ void access$400(GLSurfaceContextView gLSurfaceContextView) {
        gLSurfaceContextView.releaseAllShaders();
    }

    static /* synthetic */ void access$600(GLSurfaceContextView gLSurfaceContextView, int i, int i2) {
        gLSurfaceContextView.setupDynamicConfig(i, i2);
    }

    static /* synthetic */ void access$700(GLSurfaceContextView gLSurfaceContextView) {
        gLSurfaceContextView.createAllShaders();
    }

    static /* synthetic */ int access$800(GLSurfaceContextView gLSurfaceContextView) {
        return gLSurfaceContextView.mSimpleFrameShader;
    }

    static {
        Matrix.setLookAtM(EYE_SIGHT_MATRIX, 0, 0.0f, 0.0f, 100.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f);
        Matrix.orthoM(PARALLEL_PROJECTION_MATRIX, 0, -1.0f, 1.0f, -1.0f, 1.0f, 0.0f, 200.0f);
        Matrix.frustumM(PERSPECTIVE_PROJECTION_MATRIX, 0, -1.0f, 1.0f, -1.0f, 1.0f, 50.0f, 150.0f);
    }

    public GLSurfaceContextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mFlashFeedback = null;
        this.mSimpleFrameShader = 0;
        this.mSetInvisibleTask = new GLSurfaceContextView$SetInvisibleTask(this, null);
        this.mAnimationCanvas = new GLSurfaceContextView$AnimationCanvas(this, null);
        if (CamLog.VERBOSE) {
            CamLog.d("AnimationContextView()");
        }
        this.mAnimationElapsedTimeCount = new ReferenceClock();
        setEGLConfigChooser(8, 8, 8, 8, 16, 0);
        setZOrderOnTop(true);
        setRenderer(this);
        setRenderMode(0);
        getHolder().setFormat(-2);
    }

    @Override // android.opengl.GLSurfaceView$Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        if (CamLog.VERBOSE) {
            CamLog.d("onSurfaceChanged() : width = " + i + ", height = " + i2);
        }
        setupRelatedToSurfaceSize();
    }

    @Override // android.opengl.GLSurfaceView$Renderer
    public void onDrawFrame(GL10 gl10) {
        render();
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void start(CaptureFeedbackAnimation captureFeedbackAnimation) {
        if (CamLog.VERBOSE) {
            CamLog.d("start()");
        }
        removeCallbacks(this.mSetInvisibleTask);
        this.mCountDownLatch = null;
        this.mAnimation = captureFeedbackAnimation;
        this.mAnimationElapsedTimeCount.start();
        setVisibility(0);
        setRenderMode(1);
        requestRender();
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceHolder$Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        if (CamLog.VERBOSE) {
            CamLog.d("surfaceDestroyed() : E");
        }
        release();
        super.surfaceDestroyed(surfaceHolder);
        if (CamLog.VERBOSE) {
            CamLog.d("surfaceDestroyed() : X");
        }
    }

    @Override // com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void release() {
        if (CamLog.VERBOSE) {
            CamLog.d("release()");
        }
        queueEvent(new GLSurfaceContextView$ReleaseTask(this, null));
    }

    public void setupRelatedToSurfaceSize() {
        queueEvent(new GLSurfaceContextView$SetupRelatedToSurfaceSizeTask(this, null));
    }

    private void setupDynamicConfig(int i, int i2) {
        if (i2 < i) {
            GLES20.glViewport(0, (-1) * ((i - i2) / 2), i, i);
        } else {
            GLES20.glViewport((-1) * ((i2 - i) / 2), 0, i2, i2);
        }
    }

    private void render() {
        if (!enableGlobalFunctions()) {
            CamLog.e("render():[Enable functions failed.]");
            return;
        }
        doRender();
        if (disableGlobalFunctions()) {
            return;
        }
        CamLog.e("render():[Disable functions failed.]");
    }

    private boolean enableGlobalFunctions() {
        GLES20.glEnable(3042);
        GLES20.glBlendFunc(770, 771);
        GLES20.glEnable(2929);
        return true;
    }

    private boolean disableGlobalFunctions() {
        GLES20.glDisable(3042);
        GLES20.glDisable(2929);
        return true;
    }

    private void clearSurface() {
        GLES20.glClearColor(0.0f, 0.0f, 0.0f, 0.0f);
        GLES20.glClear(17664);
    }

    @Override // android.opengl.GLSurfaceView, com.sonyericsson.cameracommon.capturefeedback.CaptureFeedback
    public void onPause() {
        if (isShown() && this.mAnimation != null && this.mCountDownLatch == null) {
            this.mCountDownLatch = new CountDownLatch(1);
            try {
                if (!this.mCountDownLatch.await(100L, TimeUnit.MILLISECONDS)) {
                    CamLog.d("onPause() : timed-out");
                }
            } catch (InterruptedException unused) {
                if (CamLog.VERBOSE) {
                    CamLog.d("onPause() : mCountDownLatch.await() interrupted");
                }
            }
        }
        super.onPause();
    }

    private void doRender() {
        CountDownLatch countDownLatch = this.mCountDownLatch;
        if (countDownLatch != null) {
            clearSurface();
            if (0 < countDownLatch.getCount()) {
                this.mAnimationElapsedTimeCount.stop();
                post(this.mSetInvisibleTask);
                countDownLatch.countDown();
                return;
            }
            return;
        }
        clearSurface();
        if (this.mFlashFeedback == null) {
            return;
        }
        Matrix.setIdentityM(ROOT_GM, 0);
        Matrix.multiplyMM(ROOT_GM, 0, EYE_SIGHT_MATRIX, 0, ROOT_GM, 0);
        Matrix.multiplyMM(ROOT_GM, 0, PARALLEL_PROJECTION_MATRIX, 0, ROOT_GM, 0);
        this.mFlashFeedback.setGlobalMatrix(ROOT_GM);
        CaptureFeedbackAnimation captureFeedbackAnimation = this.mAnimation;
        boolean zDraw = true;
        if (captureFeedbackAnimation != null) {
            GLES20.glBlendFunc(770, 1);
            zDraw = true ^ captureFeedbackAnimation.draw(this.mAnimationCanvas, this.mAnimationElapsedTimeCount.elapsedTimeMillis());
            GLES20.glBlendFunc(770, 771);
        }
        CountDownLatch countDownLatch2 = this.mCountDownLatch;
        if (countDownLatch2 == null) {
            if (zDraw) {
                this.mAnimationElapsedTimeCount.stop();
                post(this.mSetInvisibleTask);
                return;
            }
            return;
        }
        clearSurface();
        if (0 < countDownLatch2.getCount()) {
            this.mAnimationElapsedTimeCount.stop();
            post(this.mSetInvisibleTask);
            countDownLatch2.countDown();
        }
    }

    private void createAllShaders() {
        if (CamLog.VERBOSE) {
            CamLog.d("createAllShaders() : E");
        }
        if (this.mSimpleFrameShader != 0) {
            ShaderProgramFactory.deleteShaderProgram(this.mSimpleFrameShader);
        }
        this.mSimpleFrameShader = ShaderProgramFactory.createSimpleFrameShaderProgram(getContext());
        if (CamLog.VERBOSE) {
            CamLog.d("createAllShaders() : X");
        }
    }

    private void releaseAllShaders() {
        if (CamLog.VERBOSE) {
            CamLog.d("releaseAllShaders() : E");
        }
        ShaderProgramFactory.deleteShaderProgram(this.mSimpleFrameShader);
        this.mSimpleFrameShader = 0;
        if (CamLog.VERBOSE) {
            CamLog.d("releaseAllShaders() : X");
        }
    }
}
