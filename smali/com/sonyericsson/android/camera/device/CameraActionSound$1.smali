.class Lcom/sonyericsson/android/camera/device/CameraActionSound$1;
.super Ljava/lang/Object;
.source "CameraActionSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraActionSound;->load(Lcom/sonyericsson/android/camera/device/CameraActionSound$Type;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

.field final synthetic val$soundState:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$1;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$1;->val$soundState:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$1;->val$soundState:Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;

    if-eqz p0, :cond_0

    .line 141
    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;->-$$Nest$mload(Lcom/sonyericsson/android/camera/device/CameraActionSound$Sound;)V

    :cond_0
    return-void
.end method
