.class Lcom/sonyericsson/android/camera/device/BypassCameraController$2;
.super Ljava/lang/Object;
.source "BypassCameraController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/BypassCameraController;->finalizeCaptureImageReader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V
    .locals 0

    .line 1737
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1740
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/BypassCameraController$2;->this$0:Lcom/sonyericsson/android/camera/device/BypassCameraController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/BypassCameraController;->-$$Nest$mfinalizeCaptureImageReaderInternal(Lcom/sonyericsson/android/camera/device/BypassCameraController;)V

    return-void
.end method
