.class Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPreviewStartedListenerImpl"
.end annotation


# instance fields
.field private final mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 0

    .line 1329
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1330
    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-void
.end method


# virtual methods
.method public onPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    .line 1335
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;->mCameraSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    if-ne v0, p1, :cond_0

    .line 1336
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$OnPreviewStartedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->reportFullyDrawnOnce()V

    :cond_0
    return-void
.end method
