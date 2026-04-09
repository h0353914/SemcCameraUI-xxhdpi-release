.class public Lcom/sonymobile/android/media/MediaRecorderWrapper;
.super Ljava/lang/Object;
.source "MediaRecorderWrapper.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "MediaRecorderWrapper"


# instance fields
.field private mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

.field private mOldRecorder:Landroid/media/MediaRecorder;

.field private final mUseNew:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-boolean p1, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    .line 51
    iget-boolean p1, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz p1, :cond_0

    .line 52
    new-instance p1, Lcom/sonymobile/android/media/MediaRecorder;

    invoke-direct {p1}, Lcom/sonymobile/android/media/MediaRecorder;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Landroid/media/MediaRecorder;

    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    :goto_0
    return-void
.end method

.method public static final getAudioSourceMax()I
    .locals 1

    .line 120
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    return v0
.end method


# virtual methods
.method public adjustAudioStartVolume(I)V
    .locals 1

    .line 499
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 500
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->adjustAudioStartVolume(I)V

    :cond_0
    return-void
.end method

.method public adjustAudioTimestamp(J)V
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 487
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->adjustAudioTimestamp(J)V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 527
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->dump(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMaxAmplitude()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 412
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 413
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, " getMaxAmplitude unsupported"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 415
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result p0

    return p0
.end method

.method public getSurface()Landroid/view/Surface;
    .locals 1

    .line 82
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0

    .line 85
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method public isAsyncStopSupported()Z
    .locals 0

    .line 346
    iget-boolean p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    return p0
.end method

.method public pause()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->pause()V

    goto :goto_0

    .line 370
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->pause()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 314
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->prepare()V

    goto :goto_0

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 398
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 399
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->release()V

    goto :goto_0

    .line 401
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->release()V

    :goto_0
    return-void
.end method

.method public requestProgressInfo(I)Z
    .locals 6

    .line 446
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 447
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->requestProgressInfo(I)V

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 452
    :try_start_0
    const-class v2, Landroid/media/MediaRecorder;

    const-string v3, "setParameter"

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    .line 453
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 454
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 455
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "param-track-time-status="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->reset()V

    goto :goto_0

    .line 393
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    :goto_0
    return-void
.end method

.method public resume()Z
    .locals 1

    .line 381
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->resume()V

    goto :goto_0

    .line 384
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->resume()V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setAudioChannels(I)V
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 274
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioChannels(I)V

    goto :goto_0

    .line 276
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    :goto_0
    return-void
.end method

.method public setAudioEncoder(I)V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_0

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    :goto_0
    return-void
.end method

.method public setAudioEncodingBitRate(I)V
    .locals 1

    .line 281
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    goto :goto_0

    .line 284
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    :goto_0
    return-void
.end method

.method public setAudioSamplingRate(I)V
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioSamplingRate(I)V

    goto :goto_0

    .line 268
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    :goto_0
    return-void
.end method

.method public setAudioSource(I)V
    .locals 1

    .line 112
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setAudioSource(I)V

    goto :goto_0

    .line 115
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    :goto_0
    return-void
.end method

.method public setCamera(Landroid/hardware/Camera;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 74
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 75
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    return-void
.end method

.method public setCaptureRate(D)V
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setCaptureRate(D)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setCaptureRate(D)V

    :goto_0
    return-void
.end method

.method public setDebugMode(Z)V
    .locals 0

    .line 513
    iget-boolean p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    return-void
.end method

.method public setInputSurface(Landroid/view/Surface;)V
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    :goto_0
    return-void
.end method

.method public setLocation(FF)V
    .locals 1

    .line 170
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setLocation(FF)V

    goto :goto_0

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setLocation(FF)V

    :goto_0
    return-void
.end method

.method public setMaxDuration(I)V
    .locals 1

    .line 233
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setMaxDuration(I)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setMaxDuration(I)V

    :goto_0
    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 1

    .line 241
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 242
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setMaxFileSize(J)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setMaxFileSize(J)V

    :goto_0
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V
    .locals 1

    .line 421
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    goto :goto_0

    .line 424
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    :goto_0
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V
    .locals 1

    .line 430
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 431
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    goto :goto_0

    .line 433
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    :goto_0
    return-void
.end method

.method public setOrientationHint(I)V
    .locals 1

    .line 162
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOrientationHint(I)V

    goto :goto_0

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    :goto_0
    return-void
.end method

.method public setOutputFile(Ljava/io/FileDescriptor;)V
    .locals 1

    .line 297
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 298
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/FileDescriptor;)V

    :goto_0
    return-void
.end method

.method public setOutputFile(Ljava/lang/String;)V
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 306
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setOutputFormat(I)V
    .locals 1

    .line 178
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 179
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setOutputFormat(I)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    :goto_0
    return-void
.end method

.method public setPreviewDisplay(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 105
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setPreviewDisplay unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    return-void
.end method

.method public setProfile(Landroid/media/CamcorderProfile;)V
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 142
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    goto :goto_0

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    :goto_0
    return-void
.end method

.method public setVideoBitRateMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 217
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoBitRateMode(I)V

    return-void

    .line 220
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setVideoBitRateMode unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVideoColorAspects(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .line 225
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoColorAspects(III)V

    return-void

    .line 228
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "setVideoColorAspects unsupported"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setVideoEncoder(I)V
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 258
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoEncoder(I)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    :goto_0
    return-void
.end method

.method public setVideoEncodingBitRate(I)V
    .locals 1

    .line 289
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 290
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    goto :goto_0

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    :goto_0
    return-void
.end method

.method public setVideoEncodingProfileLevel(II)V
    .locals 7

    .line 202
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 203
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    goto :goto_0

    .line 207
    :cond_0
    :try_start_0
    const-class v0, Landroid/media/MediaRecorder;

    const-string v1, "setVideoEncodingProfileLevel"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    .line 208
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 210
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setVideoFrameRate(I)V
    .locals 1

    .line 194
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoFrameRate(I)V

    goto :goto_0

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    :goto_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoSize(II)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1, p2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    :goto_0
    return-void
.end method

.method public setVideoSource(I)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->setVideoSource(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->start()V

    goto :goto_0

    .line 324
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->start()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 329
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 330
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->stop()V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->stop()V

    :goto_0
    return-void
.end method

.method public stopAsync()V
    .locals 1

    .line 350
    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->isAsyncStopSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->stopAsync()V

    :cond_0
    return-void
.end method

.method public stopAudioRecording()V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->stopAudioRecording()V

    :cond_0
    return-void
.end method

.method public stopOnError()V
    .locals 1

    .line 337
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 338
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->stopOnError()V

    goto :goto_0

    .line 340
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mOldRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->stop()V

    :goto_0
    return-void
.end method

.method public useIntelligentActive(Z)V
    .locals 1

    .line 471
    iget-boolean v0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mUseNew:Z

    if-eqz v0, :cond_0

    .line 472
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0, p1}, Lcom/sonymobile/android/media/MediaRecorder;->useIntelligentActive(Z)V

    :cond_0
    return-void
.end method

.method public waitUntilStopCompleted()V
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorderWrapper;->isAsyncStopSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object p0, p0, Lcom/sonymobile/android/media/MediaRecorderWrapper;->mNewRecorder:Lcom/sonymobile/android/media/MediaRecorder;

    invoke-virtual {p0}, Lcom/sonymobile/android/media/MediaRecorder;->waitUntilStopCompleted()V

    :cond_0
    return-void
.end method
