.class Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;->onPreviewStarted(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;)V
    .locals 0

    .line 11391
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 11394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;->EVENT_ON_PREVIEW_STARTED:Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$OnPreviewStartedListenerImpl;->mIsStartup:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendStaticEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$StaticEvent;[Ljava/lang/Object;)V

    return-void
.end method
