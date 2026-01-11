.class public interface abstract Lcom/sonyericsson/android/camera/device/zsl/DataFactory;
.super Ljava/lang/Object;
.source "DataFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract clearData()V
.end method

.method public abstract input(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)V"
        }
    .end annotation
.end method

.method public abstract isRunning()Z
.end method

.method public abstract setDataListener(Lcom/sonyericsson/android/camera/device/zsl/DataListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/device/zsl/DataListener<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
