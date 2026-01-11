.class Lcom/sonyericsson/android/camera/controller/StateMachine$2;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;->onCaptureRequested(Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field final synthetic val$isAfSuccessed:Z

.field final synthetic val$photoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 379
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$2;->val$photoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$2;->val$isAfSuccessed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$2;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_CAPTURE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$2;->val$photoSavingRequestBuilder:Lcom/sonyericsson/cameracommon/storage/RequestFactory$PhotoSavingRequestBuilder;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$2;->val$isAfSuccessed:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
