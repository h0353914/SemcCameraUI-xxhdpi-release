.class public Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;
.super Ljava/lang/Object;
.source "ImageRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/ImageRetriever;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureImageRequest"
.end annotation


# instance fields
.field protected final callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

.field protected final handler:Landroid/os/Handler;

.field protected final isOneShot:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;ZLandroid/os/Handler;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->callback:Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;

    .line 103
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->isOneShot:Z

    .line 104
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/ImageRetriever$CaptureImageRequest;->handler:Landroid/os/Handler;

    return-void
.end method
