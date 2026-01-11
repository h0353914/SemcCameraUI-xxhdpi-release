.class Lcom/sonyericsson/android/camera/controller/StateMachine$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;->onPreviewSessionConfigured(Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field final synthetic val$sessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 370
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->val$sessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_SESSION_CONFIGURED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$1;->val$sessionType:Lcom/sonyericsson/android/camera/controller/StateMachine$SessionType;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
