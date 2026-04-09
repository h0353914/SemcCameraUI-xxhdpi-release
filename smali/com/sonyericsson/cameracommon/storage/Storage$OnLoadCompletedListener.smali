.class public interface abstract Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;
.super Ljava/lang/Object;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadCompletedListener"
.end annotation


# virtual methods
.method public abstract onDataLoadCompleted(IZLjava/util/LinkedList;Landroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDataLoadFailed(I)V
.end method

.method public abstract onLoadCompleted(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
.end method

.method public abstract onLoadFailed(Landroid/net/Uri;I)V
.end method
