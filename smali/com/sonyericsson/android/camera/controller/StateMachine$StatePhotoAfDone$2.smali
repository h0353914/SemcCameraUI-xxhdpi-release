.class Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone$2;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;->handleCaptureCancel([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;)V
    .locals 0

    .line 5962
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 5965
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    .line 5966
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    new-instance v2, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoAfDone;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/sonyericsson/android/camera/controller/StateMachine$StatePhotoReady;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$State;[Ljava/lang/Object;)V

    return-void
.end method
