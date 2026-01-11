.class final Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkCallbackImpl;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "CameraNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NetworkCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager$NetworkCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/qrdetection/CameraNotificationManager;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    return-void
.end method

.method public onUnavailable()V
    .locals 0

    return-void
.end method
