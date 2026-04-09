.class Lcom/sonyericsson/android/camera/device/CameraActionSound$2;
.super Ljava/lang/Object;
.source "CameraActionSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/device/CameraActionSound;->play(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

.field final synthetic val$sound:Landroid/media/MediaActionSound;

.field final synthetic val$soundName:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraActionSound;Landroid/media/MediaActionSound;I)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$2;->this$0:Lcom/sonyericsson/android/camera/device/CameraActionSound;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$2;->val$sound:Landroid/media/MediaActionSound;

    iput p3, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$2;->val$soundName:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$2;->val$sound:Landroid/media/MediaActionSound;

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraActionSound$2;->val$soundName:I

    invoke-virtual {v0, p0}, Landroid/media/MediaActionSound;->play(I)V

    return-void
.end method
