.class public interface abstract Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;
.super Ljava/lang/Object;
.source "DataLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/DataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataLoadCallback"
.end annotation


# virtual methods
.method public abstract onDataLoaded(ZLjava/util/LinkedList;IZLandroid/graphics/Bitmap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;IZ",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation
.end method
