.class public interface abstract Lcom/sonyericsson/android/camera/recorder/RecorderController;
.super Ljava/lang/Object;
.source "RecorderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/RecorderController$RecorderListener;,
        Lcom/sonyericsson/android/camera/recorder/RecorderController$Result;
    }
.end annotation


# virtual methods
.method public abstract getRecordingTimeMillis()J
.end method

.method public abstract isPaused()Z
.end method

.method public abstract isReady()Z
.end method

.method public abstract isRecording()Z
.end method

.method public abstract isStarting()Z
.end method

.method public abstract isStopping()Z
.end method

.method public abstract pause()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation
.end method

.method public abstract prepare(Lcom/sonyericsson/android/camera/recorder/RecorderParameters;)Z
.end method

.method public abstract release()Z
.end method

.method public abstract resume()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation
.end method

.method public abstract setLocation(Landroid/location/Location;)V
.end method

.method public abstract setMaxDurationMillis(J)V
.end method

.method public abstract setMaxFileSizeBytes(J)V
.end method

.method public abstract setOrientationHint(I)V
.end method

.method public abstract setOutputFilePath(Ljava/lang/String;)V
.end method

.method public abstract setStorageWriteNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;)V
    .param p1    # Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setUserSoundSetting(Z)V
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation
.end method

.method public abstract stopAudioRecording()V
.end method

.method public abstract stopOnCameraError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/android/camera/recorder/RecorderException;
        }
    .end annotation
.end method
