.class Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraController$CropRegionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnCropRegionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;)V
    .locals 0

    .line 6715
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraController;Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;-><init>(Lcom/sonyericsson/android/camera/device/CameraController;)V

    return-void
.end method


# virtual methods
.method public onCropRegionChanged(Landroid/graphics/Rect;)V
    .locals 0

    .line 6723
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onCropRegionChanged(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onCropRegionReady()V
    .locals 0

    .line 6718
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraController$OnCropRegionCallback;->this$0:Lcom/sonyericsson/android/camera/device/CameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraController;->-$$Nest$fgetmCallback(Lcom/sonyericsson/android/camera/device/CameraController;)Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/device/CameraController$CameraControllerCallback;->onCropRegionReady()V

    return-void
.end method
