.class Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OnPreviewStartedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPreviewStartedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V
    .locals 0

    .line 9188
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$1;)V
    .locals 0

    .line 9188
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;)V

    return-void
.end method


# virtual methods
.method public onPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    .line 9193
    iget-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$500(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl$1;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
