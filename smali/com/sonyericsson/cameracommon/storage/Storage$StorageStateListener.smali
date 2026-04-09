.class public interface abstract Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageStateListener"
.end annotation


# virtual methods
.method public abstract onStorageSizeChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V
.end method

.method public abstract onStorageStateChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;)V
.end method
