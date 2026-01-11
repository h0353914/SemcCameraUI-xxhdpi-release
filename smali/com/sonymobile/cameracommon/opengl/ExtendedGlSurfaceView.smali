.class public Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "ExtendedGlSurfaceView.java"


# static fields
.field public static final IS_OPENGL_DEBUG:Z = false

.field private static final TARGET_OPEN_GL_ES_VERSION:I = 0x2


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x2

    .line 48
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setEGLContextClientVersion(I)V

    const/4 p1, 0x3

    .line 51
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setDebugFlags(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x2

    .line 64
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setEGLContextClientVersion(I)V

    const/4 p1, 0x3

    .line 67
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->setDebugFlags(I)V

    return-void
.end method

.method public static allocByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2

    .line 121
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 122
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 124
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static allocFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 105
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x20

    div-int/lit8 v0, v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 106
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 109
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static bindTextureAndBitmap(ILandroid/graphics/Bitmap;)V
    .locals 2

    const/16 v0, 0xde1

    .line 276
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p0, 0x2800

    const v1, 0x46180400    # 9729.0f

    .line 279
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2801

    .line 283
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 p0, 0x2802

    const v1, 0x812f

    .line 289
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x2803

    .line 293
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p0, 0x1908

    const/4 v1, 0x0

    .line 299
    invoke-static {v0, v1, p0, p1, v1}, Landroid/opengl/GLUtils;->texImage2D(IIILandroid/graphics/Bitmap;I)V

    .line 307
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public static checkGlErrorWithException()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/cameracommon/opengl/OpenGlException;
        }
    .end annotation

    .line 76
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 78
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OpenGL error [0x%08x]."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    new-instance v1, Lcom/sonymobile/cameracommon/opengl/OpenGlException;

    invoke-direct {v1, v0}, Lcom/sonymobile/cameracommon/opengl/OpenGlException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static get4x4RotationMatrix(FFFF)[F
    .locals 7

    const/16 v0, 0x10

    .line 187
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 190
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v2, 0x0

    move-object v1, v0

    move v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    .line 195
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    return-object v0
.end method

.method private static get4x4ScalingMatrix(FFF)[F
    .locals 2

    const/16 v0, 0x10

    .line 207
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 210
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 215
    invoke-static {v0, v1, p0, p1, p2}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    return-object v0
.end method

.method private static get4x4TranslationMatrix(FFF)[F
    .locals 2

    const/16 v0, 0x10

    .line 169
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 172
    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 176
    invoke-static {v0, v1, p0, p1, p2}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-object v0
.end method

.method public static isGlErrorOccured()Z
    .locals 2

    .line 89
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "OpenGL error [0x%08x]."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TraceLog"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static loadShaderSourceCodesFrom(Landroid/content/Context;[I)Ljava/lang/String;
    .locals 7

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 140
    :goto_0
    :try_start_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 143
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    aget v6, p1, v2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 151
    :cond_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-object v1, v4

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, v4

    goto :goto_2

    :catch_1
    move-exception p0

    .line 155
    :goto_2
    const-string p1, "Can not load shader file."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_1

    .line 158
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p0

    .line 160
    const-string p1, "Fail to close BufferedReader."

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    :cond_1
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static rotate([FFFF)V
    .locals 10

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr p1, v0

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr p1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 245
    invoke-static {p1, v2, v3, v3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    move-object v8, p0

    .line 247
    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    mul-float/2addr p2, v0

    div-float/2addr p2, v1

    .line 248
    invoke-static {p2, v3, v2, v3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v6

    .line 250
    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    mul-float/2addr p3, v0

    div-float/2addr p3, v1

    .line 251
    invoke-static {p3, v3, v3, v2}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4RotationMatrix(FFFF)[F

    move-result-object v6

    .line 253
    invoke-static/range {v4 .. v9}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static scale([FFFF)V
    .locals 6

    .line 264
    invoke-static {p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4ScalingMatrix(FFF)[F

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p0

    .line 265
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public static translate([FFFF)V
    .locals 6

    .line 233
    invoke-static {p1, p2, p3}, Lcom/sonymobile/cameracommon/opengl/ExtendedGlSurfaceView;->get4x4TranslationMatrix(FFF)[F

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p0

    .line 234
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method
