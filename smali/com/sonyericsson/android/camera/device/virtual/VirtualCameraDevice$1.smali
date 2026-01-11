.class Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;
.super Ljava/lang/Object;
.source "VirtualCameraDevice.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 2

    .line 143
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Receive final image data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmRemindedFinalJpgNum(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 145
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    new-array v1, v1, [B

    .line 148
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 149
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice$1;->this$0:Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;->-$$Nest$fgetmListeners(Lcom/sonyericsson/android/camera/device/virtual/VirtualCameraDevice;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;

    .line 150
    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/device/virtual/VirtualTakePictureListener;->onPictureTaken([B)V

    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method
