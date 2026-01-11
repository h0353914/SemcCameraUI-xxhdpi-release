.class public Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoPowerOffTimerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 3121
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .line 3135
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->disableAutoPowerOffTimer()V

    return-void
.end method

.method public enable()V
    .locals 0

    .line 3130
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->enableAutoPowerOffTimer()V

    return-void
.end method

.method public resetTimer()V
    .locals 0

    .line 3125
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$AutoPowerOffTimerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->restartAutoPowerOffTimer()V

    return-void
.end method
