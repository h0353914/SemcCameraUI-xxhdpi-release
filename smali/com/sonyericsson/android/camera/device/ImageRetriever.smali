.class public interface abstract Lcom/sonyericsson/android/camera/device/ImageRetriever;
.super Ljava/lang/Object;
.source "ImageRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;,
        Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;
    }
.end annotation


# virtual methods
.method public abstract registerPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
.end method

.method public abstract requestOneShotPreviewCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;Landroid/os/Handler;)V
.end method

.method public abstract unregisterPreviewStreamingCallback(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;)V
.end method
