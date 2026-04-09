.class Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/ImageRetriever$OnImageRetrieverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestOneImageRetrieverCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$1;)V
    .locals 0

    .line 307
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public onRetrieved(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$RequestOneImageRetrieverCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->access$000(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onPreviewFrameUpdated(Ljava/nio/ByteBuffer;ILandroid/graphics/Rect;)V

    return-void
.end method
