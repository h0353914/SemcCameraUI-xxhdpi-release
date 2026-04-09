.class public interface abstract Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStoreCompletedListener"
.end annotation


# virtual methods
.method public abstract onStoreCompleted(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)V
.end method

.method public abstract onStoreFailed(Landroid/net/Uri;Lcom/sonyericsson/cameracommon/storage/SavingRequest;I)V
.end method
