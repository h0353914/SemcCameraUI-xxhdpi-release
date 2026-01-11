.class Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;
.super Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenOffReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenOffReceiver"


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/ScreenOffReceiverBase;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;-><init>(Lcom/sonyericsson/android/camera/CameraActivity;)V

    return-void
.end method


# virtual methods
.method public onScreenOff()V
    .locals 1

    .line 688
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Received SCREEN_OFF"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 690
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$ScreenOffReceiver;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->onScreenOff()V

    return-void
.end method
