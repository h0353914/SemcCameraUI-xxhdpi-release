.class Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$2;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;)V
    .locals 0

    .line 10462
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 10465
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask$2;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$RequestStoreTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_STORE_REQUESTED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
