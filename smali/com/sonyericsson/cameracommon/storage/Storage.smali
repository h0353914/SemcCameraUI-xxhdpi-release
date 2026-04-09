.class public interface abstract Lcom/sonyericsson/cameracommon/storage/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;,
        Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;,
        Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;,
        Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;,
        Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;,
        Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;,
        Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;,
        Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    }
.end annotation


# virtual methods
.method public abstract addStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V
.end method

.method public abstract addStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V
.end method

.method public abstract canPushStoreRequest(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
.end method

.method public abstract cancelDataLoad(J)V
.end method

.method public abstract cancelDataLoad(Z)V
.end method

.method public abstract checkValidUri(Landroid/net/Uri;)Z
.end method

.method public abstract createNotifier(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;I)Lcom/sonyericsson/cameracommon/storage/Storage$StorageWriteNotifier;
.end method

.method public abstract getAvailableStorage()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
.end method

.method public abstract getRemainStorage(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J
.end method

.method public abstract getSdGrantedUri()Landroid/net/Uri;
.end method

.method public abstract isStorageActivated()Z
.end method

.method public abstract isStorageReadable()Z
.end method

.method public abstract isStorageReadable(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z
.end method

.method public abstract removeStorageReadyStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyStateListener;)V
.end method

.method public abstract removeStorageStateListener(Lcom/sonyericsson/cameracommon/storage/Storage$StorageStateListener;)V
.end method

.method public abstract requestCreateContentInfoSync(Ljava/util/ArrayList;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;",
            "Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract requestDataLoad(ILandroid/net/Uri;ZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
.end method

.method public abstract requestDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
.end method

.method public abstract requestLastDataLoad(IZLcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
.end method

.method public abstract requestLoad(Landroid/net/Uri;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
.end method

.method public abstract requestLoad([BILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
.end method

.method public abstract requestStore(Lcom/sonyericsson/cameracommon/storage/SavingRequest;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Lcom/sonyericsson/cameracommon/storage/Storage$OnStoreCompletedListener;)Z
.end method
