.class public Lcom/sonymobile/cameracommon/opengl/SimpleFrame;
.super Lcom/sonymobile/cameracommon/opengl/FrameBase;
.source "SimpleFrame.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SimpleFrame"


# instance fields
.field private mColor:[F

.field private mSimpleColorInGLSL:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/FrameBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSimpleColorInGLSL:I

    const/4 p1, 0x3

    .line 28
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    return-void
.end method


# virtual methods
.method protected doRender()V
    .locals 11

    .line 71
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexBuffers:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const v2, 0x8892

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 72
    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexInGLSL:I

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZII)V

    .line 79
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 82
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSimpleColorInGLSL:I

    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    aget v2, v2, v1

    iget-object v3, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v5, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget v6, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mAlpha:F

    invoke-static {v0, v2, v3, v5, v6}, Landroid/opengl/GLES20;->glUniform4f(IFFFF)V

    .line 84
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clearAndResetSurface():[Texture binder Error]"

    .line 85
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x10

    .line 89
    new-array v0, v0, [F

    .line 90
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v6, 0x0

    .line 93
    iget-object v7, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSequencedLocalMatrix:[F

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, v0

    move-object v9, v0

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 94
    iget-object v7, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mGlobalMatrix:[F

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 96
    iget p0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mMvpMatrixInGLSL:I

    invoke-static {p0, v4, v1, v0, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const/4 p0, 0x5

    const/4 v0, 0x4

    .line 104
    invoke-static {p0, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 105
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "clearAndResetSurface():[Draw frame Error]"

    .line 106
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected initializeShaderProgram()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .line 113
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mShaderProgram:I

    const-string v1, "simpleColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mSimpleColorInGLSL:I

    .line 116
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 117
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->initializeShaderProgram()V

    return-void
.end method

.method public release()V
    .locals 0

    .line 62
    invoke-super {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->release()V

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->finalizeShaderProgram()V

    return-void
.end method

.method public setColor(FFFF)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 51
    iget-object p1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 v0, 0x1

    aput p2, p1, v0

    .line 52
    iget-object p1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mColor:[F

    const/4 p2, 0x2

    aput p3, p1, p2

    .line 53
    iput p4, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mAlpha:F

    return-void
.end method

.method public updateVertexBuffer([F)V
    .locals 3

    .line 126
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexBuffers:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 132
    iget-object p0, p0, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->mVertexBuffers:[I

    aget p0, p0, v2

    const v0, 0x8892

    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 135
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result p0

    const/4 v1, 0x4

    mul-int/2addr v1, p0

    const p0, 0x88e8

    .line 133
    invoke-static {v0, v1, p1, p0}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 138
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method
