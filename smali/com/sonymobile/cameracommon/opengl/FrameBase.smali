.class public abstract Lcom/sonymobile/cameracommon/opengl/FrameBase;
.super Lcom/sonymobile/cameracommon/opengl/RenderBase;
.source "FrameBase.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/opengl/AlphaBlendable;


# static fields
.field private static final DEFAULT_TEXCOORD_INDEX:I = 0x1

.field private static final DEFAULT_VERTEX_INDEX:I = 0x0

.field private static final INVALID_INDEX_IN_GLSL:I = -0x1

.field public static final TAG:Ljava/lang/String; = "FrameBase"


# instance fields
.field protected mAlpha:F

.field protected mMvpMatrixInGLSL:I

.field protected mShaderProgram:I

.field protected mTexCoordBuffers:[I

.field protected mTexCoordInGLSL:I

.field protected mVertexBuffers:[I

.field protected mVertexInGLSL:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/RenderBase;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const/4 p1, 0x1

    .line 39
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    .line 40
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 43
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mAlpha:F

    return-void
.end method

.method private checkAndBindAttriLocation()V
    .locals 4

    .line 121
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 122
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndBindAttriLocation: mVertexInGLSL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mTexCoordInGLSL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 127
    iput v3, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    .line 128
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    iget v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    const-string v3, "vertex"

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 132
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    .line 133
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    const-string v2, "texCoord"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 135
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 138
    iget p0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 139
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    :cond_1
    return-void
.end method

.method private enableShaderProgram()Z
    .locals 2

    .line 237
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, ".enableYuv2RgbShaderProgram():[Program is Invalid]"

    .line 238
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    .line 241
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 242
    iget p0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glValidateProgram(I)V

    .line 243
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, ".enableYuv2RgbShaderProgram():[Program Error]"

    .line 244
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private finalizeVertexAndTextureCoordinatesBuffer()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    array-length v0, v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 276
    iget-object v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    array-length v0, v0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    invoke-static {v0, p0, v2}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    return-void
.end method


# virtual methods
.method protected disableLocalFunctions()Z
    .locals 2

    .line 253
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 254
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 256
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    if-eq v0, v1, :cond_1

    .line 257
    iget p0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    invoke-static {p0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method protected abstract doRender()V
.end method

.method protected enableLocalFunctions()Z
    .locals 2

    .line 218
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 219
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 221
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    if-eq v0, v1, :cond_1

    .line 222
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->enableShaderProgram()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "enableFunctions():[Enable shader program failed.]"

    .line 227
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method protected finalizeShaderProgram()V
    .locals 1

    const/4 v0, 0x0

    .line 265
    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    .line 268
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->finalizeVertexAndTextureCoordinatesBuffer()V

    return-void
.end method

.method protected initializeShaderProgram()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .line 69
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const-string v1, "vertex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexInGLSL:I

    .line 72
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 75
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const-string v1, "texCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordInGLSL:I

    .line 78
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 80
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->checkAndBindAttriLocation()V

    .line 83
    iget v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const-string v1, "mvpMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mMvpMatrixInGLSL:I

    .line 86
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    const/4 v0, 0x1

    .line 89
    new-array v0, v0, [I

    .line 90
    iget v1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    const/4 v2, 0x0

    const v3, 0x8b82

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 92
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 95
    aget v0, v0, v2

    if-nez v0, :cond_0

    const-string p0, "TimeShiftSlider.initializeYuv2RgbShader():[Program link Error]"

    .line 97
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 98
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->initializeVertexAndTextureCoordinatesBuffer()V

    return-void
.end method

.method protected initializeVertexAndTextureCoordinatesBuffer()V
    .locals 7

    const/16 v0, 0xc

    .line 145
    new-array v0, v0, [F

    .line 146
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    mul-float/2addr v1, v2

    const/4 v3, 0x0

    aput v1, v0, v3

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v1, v4

    const/4 v5, 0x1

    aput v1, v0, v5

    const/4 v1, 0x0

    const/4 v5, 0x2

    aput v1, v0, v5

    .line 147
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v5

    mul-float/2addr v5, v2

    const/4 v6, 0x3

    aput v5, v0, v6

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v5

    mul-float/2addr v5, v2

    const/4 v6, 0x4

    aput v5, v0, v6

    const/4 v5, 0x5

    aput v1, v0, v5

    .line 148
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v5

    mul-float/2addr v5, v4

    const/4 v6, 0x6

    aput v5, v0, v6

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v5

    mul-float/2addr v5, v4

    const/4 v6, 0x7

    aput v5, v0, v6

    const/16 v5, 0x8

    aput v1, v0, v5

    .line 149
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getWidthNorm()F

    move-result v6

    mul-float/2addr v4, v6

    const/16 v6, 0x9

    aput v4, v0, v6

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->getHeightNorm()F

    move-result v4

    mul-float/2addr v2, v4

    const/16 v4, 0xa

    aput v2, v0, v4

    const/16 v2, 0xb

    aput v1, v0, v2

    .line 152
    new-array v1, v5, [F

    fill-array-data v1, :array_0

    .line 160
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    array-length v2, v2

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 161
    iget-object v2, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    array-length v2, v2

    iget-object v4, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    invoke-static {v2, v4, v3}, Landroid/opengl/GLES20;->glGenBuffers(I[II)V

    .line 164
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateVertexBuffer([F)V

    .line 165
    invoke-virtual {p0, v1}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->updateTextureBuffer([F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public render()V
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->enableLocalFunctions()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "render():[Enable functions failed.]"

    .line 204
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->doRender()V

    .line 210
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->disableLocalFunctions()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "render():[Disable functions failed.]"

    .line 211
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    :cond_2
    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 289
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mAlpha:F

    return-void
.end method

.method public setShaderProgram(I)V
    .locals 0

    .line 52
    iput p1, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mShaderProgram:I

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/FrameBase;->initializeShaderProgram()V
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OpenGL initialize Error."

    .line 58
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public updateTextureBuffer([F)V
    .locals 3

    .line 182
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 184
    iget-object p0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mTexCoordBuffers:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const v1, 0x8892

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 187
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result p0

    const/4 v2, 0x4

    mul-int/2addr v2, p0

    const p0, 0x88e8

    .line 185
    invoke-static {v1, v2, p1, p0}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 190
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method

.method public updateVertexBuffer([F)V
    .locals 3

    .line 170
    invoke-static {p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->allocFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    .line 172
    iget-object p0, p0, Lcom/sonymobile/cameracommon/opengl/FrameBase;->mVertexBuffers:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const v1, 0x8892

    invoke-static {v1, p0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    .line 175
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->limit()I

    move-result p0

    const/4 v2, 0x4

    mul-int/2addr v2, p0

    const p0, 0x88e8

    .line 173
    invoke-static {v1, v2, p1, p0}, Landroid/opengl/GLES20;->glBufferData(IILjava/nio/Buffer;I)V

    .line 178
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    return-void
.end method
