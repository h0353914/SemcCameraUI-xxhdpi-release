.class public Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;
.super Ljava/lang/Object;
.source "HandSignsNativeWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HandSignsNativeWrapper"


# instance fields
.field private mNativeHandle:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    :try_start_0
    const-string v0, "handsigns_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    const-string v0, "HandSignsNativeWrapper"

    const-string v1, "GestureShutter is not supported."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->mNativeHandle:J

    .line 33
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->create()V

    return-void
.end method

.method private declared-synchronized create()V
    .locals 4

    monitor-enter p0

    .line 37
    :try_start_0
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 38
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->nativeCreate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->mNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private native nativeCreate()J
.end method

.method private native nativeDetect(JIILjava/nio/ByteBuffer;ILcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)Z
.end method

.method private native nativeDetect(JII[BILcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)Z
.end method

.method private native nativeRelease(J)V
.end method

.method private static final native nativeShrinkByteArrayYvu420Sp([BII[BI)I
.end method

.method public static final shrinkYvu420Sp([BII[BLcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;)V
    .locals 0

    .line 103
    iget p4, p4, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper$ShrinkRatio;->shrinkSize:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->nativeShrinkByteArrayYvu420Sp([BII[BI)I

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Error Code Returned : "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public declared-synchronized detect(IILjava/nio/ByteBuffer;ILcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)Z
    .locals 8

    monitor-enter p0

    .line 63
    :try_start_0
    iget-wide v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 64
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->nativeDetect(JIILjava/nio/ByteBuffer;ILcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 66
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized detect(II[BILcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)Z
    .locals 8

    monitor-enter p0

    .line 54
    :try_start_0
    iget-wide v1, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->mNativeHandle:J

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    .line 55
    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->nativeDetect(JII[BILcom/sonyericsson/android/camera/gestureshutter/HandSignsDetector$DetectResult;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 57
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 5

    monitor-enter p0

    .line 75
    :try_start_0
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->mNativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 76
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->nativeRelease(J)V

    .line 77
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/gestureshutter/HandSignsNativeWrapper;->mNativeHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
