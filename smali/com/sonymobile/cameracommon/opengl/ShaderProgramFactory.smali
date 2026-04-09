.class public Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;
.super Ljava/lang/Object;
.source "ShaderProgramFactory.java"


# static fields
.field public static final GLSL_FIELD_ID_ALPHA_MASK_TEXTURE:Ljava/lang/String; = "uAlphaMaskTexture"

.field public static final GLSL_FIELD_ID_ATTRIB_TEXCOORD:Ljava/lang/String; = "aTexCoord"

.field public static final GLSL_FIELD_ID_ATTRIB_VERTEX:Ljava/lang/String; = "aVertex"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_BLUR_SPREAD:Ljava/lang/String; = "uBlurSpread"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_CENTER_WEIGHT:Ljava/lang/String; = "uCenterWeight"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_LOD:Ljava/lang/String; = "uLod"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_SPREAD_OFFSET:Ljava/lang/String; = "uSpreadOffset"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_HEIGHT:Ljava/lang/String; = "uTextureHeight"

.field public static final GLSL_FIELD_ID_BLURRED_YUV_FRAME_TEXTURE_WIDTH:Ljava/lang/String; = "uTextureWidth"

.field public static final GLSL_FIELD_ID_MASK_TEXTURE_COORD:Ljava/lang/String; = "aMaskTexCoord"

.field public static final GLSL_FIELD_ID_SAMPLER2D_TEXTURE:Ljava/lang/String; = "sTexture"

.field public static final GLSL_FIELD_ID_SIMPLE_COLOR:Ljava/lang/String; = "simpleColor"

.field public static final GLSL_FIELD_ID_TEXTURE_COORD:Ljava/lang/String; = "texCoord"

.field public static final GLSL_FIELD_ID_TEXTURE_RGB:Ljava/lang/String; = "uTextureRgb"

.field public static final GLSL_FIELD_ID_TEXTURE_U:Ljava/lang/String; = "textureU"

.field public static final GLSL_FIELD_ID_TEXTURE_V:Ljava/lang/String; = "textureV"

.field public static final GLSL_FIELD_ID_TEXTURE_VU:Ljava/lang/String; = "textureVu"

.field public static final GLSL_FIELD_ID_TEXTURE_Y:Ljava/lang/String; = "textureY"

.field public static final GLSL_FIELD_ID_UNIFORM_ALPHA:Ljava/lang/String; = "uAlpha"

.field public static final GLSL_FIELD_ID_UNIFORM_MVPMATRIX:Ljava/lang/String; = "uMvpMatrix"

.field public static final GLSL_FIELD_ID_VERTEX:Ljava/lang/String; = "vertex"

.field public static final GLSL_FIELD_ID_VERTEX_ALPHA:Ljava/lang/String; = "vertexAlpha"

.field public static final GLSL_FIELD_ID_VERTEX_MVP_MATRIX:Ljava/lang/String; = "mvpMatrix"

.field public static final TAG:Ljava/lang/String; = "ShaderProgramFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAlphaMaskedBlurredYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 229
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0e0004

    aput v3, v1, v2

    new-array v0, v0, [I

    const v3, 0x7f0e0003

    aput v3, v0, v2

    invoke-static {p0, v1, v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result p0

    return p0
.end method

.method public static createAlphaMaskedYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 205
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0e0006

    aput v3, v1, v2

    new-array v0, v0, [I

    const v3, 0x7f0e0005

    aput v3, v0, v2

    invoke-static {p0, v1, v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result p0

    return p0
.end method

.method public static createBlurredYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 181
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0e0008

    aput v3, v1, v2

    new-array v0, v0, [I

    const v3, 0x7f0e0007

    aput v3, v0, v2

    invoke-static {p0, v1, v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result p0

    return p0
.end method

.method public static createCopyFrameShaderProgram(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 158
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0e000a

    aput v3, v1, v2

    new-array v0, v0, [I

    const v3, 0x7f0e0009

    aput v3, v0, v2

    invoke-static {p0, v1, v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result p0

    return p0
.end method

.method public static createRgbFrameShaderProgram(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 111
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0e000c

    aput v3, v1, v2

    new-array v0, v0, [I

    const v3, 0x7f0e000b

    aput v3, v0, v2

    invoke-static {p0, v1, v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result p0

    return p0
.end method

.method private static createShaderProgram(Landroid/content/Context;[I[I)I
    .locals 5

    const/4 v0, 0x1

    .line 288
    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 292
    :try_start_0
    invoke-static {p0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->loadShaderSourceCodesFrom(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p1

    const v3, 0x8b31

    .line 295
    invoke-static {v3}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v3
    :try_end_0
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_0 .. :try_end_0} :catch_3

    .line 297
    :try_start_1
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 300
    invoke-static {v3, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 305
    invoke-static {v3}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 307
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    const p1, 0x8b81

    .line 310
    invoke-static {v3, p1, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 316
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 319
    aget v4, v1, v2

    if-nez v4, :cond_0

    const-string p0, "ShaderProgramFactory.createShaderProgram():[VS Compile Error]"

    .line 321
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 322
    invoke-static {v3}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 323
    new-array p2, v0, [Ljava/lang/String;

    aput-object p1, p2, v2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 324
    new-instance p1, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {p1, p0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 328
    :cond_0
    invoke-static {p0, p2}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->loadShaderSourceCodesFrom(Landroid/content/Context;[I)Ljava/lang/String;

    move-result-object p0

    const p2, 0x8b30

    .line 331
    invoke-static {p2}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p2
    :try_end_1
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_1 .. :try_end_1} :catch_2

    .line 333
    :try_start_2
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 336
    invoke-static {p2, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 341
    invoke-static {p2}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 343
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 346
    invoke-static {p2, p1, v1, v2}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 352
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 355
    aget p0, v1, v2

    if-nez p0, :cond_1

    const-string p0, "ShaderProgramFactory.createShaderProgram():[FS Compile Error]"

    .line 357
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 358
    invoke-static {p2}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object p1

    .line 359
    new-array v0, v0, [Ljava/lang/String;

    aput-object p1, v0, v2

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 360
    new-instance p1, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {p1, p0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 364
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result p0
    :try_end_2
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_2 .. :try_end_2} :catch_1

    .line 367
    :try_start_3
    invoke-static {p0, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 369
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 372
    invoke-static {p0, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 374
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 377
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 379
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 382
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 384
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 387
    invoke-static {p0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 389
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->checkGlErrorWithException()V

    .line 392
    aget p1, v1, v2

    if-nez p1, :cond_2

    const-string p1, "ShaderProgramFactory.createShaderProgram():[Program link Error]"

    .line 394
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 395
    new-instance v0, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v0, p1}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lcom/sonymobile/cameracommon/opengl/OpenGlException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    return p0

    :catch_0
    move-exception p1

    move v2, p0

    move-object p0, p1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    move p2, v2

    goto :goto_0

    :catch_3
    move-exception p0

    move p2, v2

    move v3, p2

    :goto_0
    const-string p1, "Fail to create ShaderProgram."

    .line 399
    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v3, :cond_3

    .line 402
    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_3
    if-eqz p2, :cond_4

    .line 405
    invoke-static {p2}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 408
    :cond_4
    invoke-static {v2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->deleteShaderProgram(I)V

    .line 411
    throw p0
.end method

.method public static createShaderProgramFromClientApplicationContext(Landroid/content/Context;II)I
    .locals 3

    const/4 v0, 0x1

    .line 253
    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    new-array p1, v0, [I

    aput p2, p1, v2

    invoke-static {p0, v1, p1}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result p0

    return p0
.end method

.method public static createShaderProgramFromClientApplicationContext(Landroid/content/Context;[I[I)I
    .locals 0

    .line 270
    invoke-static {p0, p1, p2}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result p0

    return p0
.end method

.method public static createSimpleFrameShaderProgram(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 134
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0e000e

    aput v3, v1, v2

    new-array v0, v0, [I

    const v3, 0x7f0e000d

    aput v3, v0, v2

    invoke-static {p0, v1, v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result p0

    return p0
.end method

.method public static createVertexAlphYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 88
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0e0010

    aput v3, v1, v2

    new-array v0, v0, [I

    const v3, 0x7f0e000f

    aput v3, v0, v2

    invoke-static {p0, v1, v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result p0

    return p0
.end method

.method public static createYuvFrameShaderProgram(Landroid/content/Context;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 64
    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f0e0012

    aput v3, v1, v2

    new-array v0, v0, [I

    const v3, 0x7f0e0011

    aput v3, v0, v2

    invoke-static {p0, v1, v0}, Lcom/sonymobile/cameracommon/opengl/ShaderProgramFactory;->createShaderProgram(Landroid/content/Context;[I[I)I

    move-result p0

    return p0
.end method

.method public static deleteShaderProgram(I)V
    .locals 0

    if-eqz p0, :cond_0

    .line 428
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 429
    invoke-static {}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->isGlErrorOccured()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "deleteShaderProgram():[Delete Program Error]"

    .line 430
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
