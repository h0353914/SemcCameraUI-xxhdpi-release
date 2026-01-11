.class Lcom/sonyericsson/android/camera/controller/StateMachine$20;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;->updatedDebugInfoInViewFinder(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field final synthetic val$info:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11729
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$20;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$20;->val$info:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 11732
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$20;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;->EVENT_ON_VIEWFINDER_DEBUGINFO_CHANGED:Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$20;->val$info:Ljava/lang/String;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$20;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$fgetmCameraDeviceHandler(Lcom/sonyericsson/android/camera/controller/StateMachine;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object p0

    .line 11734
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getCurrentCameraType()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 11732
    invoke-interface {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinder;->sendViewUpdateEvent(Lcom/sonyericsson/android/camera/view/ViewFinder$ViewUpdateEvent;[Ljava/lang/Object;)V

    return-void
.end method
