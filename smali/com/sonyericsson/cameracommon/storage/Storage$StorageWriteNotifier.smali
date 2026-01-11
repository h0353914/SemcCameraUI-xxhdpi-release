.class public interface abstract Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageWriteNotifier"
.end annotation


# virtual methods
.method public abstract getStorageType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
.end method

.method public abstract notifyWriteStorage()V
.end method
