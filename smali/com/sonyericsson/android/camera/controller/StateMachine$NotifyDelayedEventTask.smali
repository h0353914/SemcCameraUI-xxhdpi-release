.class Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyDelayedEventTask"
.end annotation


# instance fields
.field private final mArgs:[Ljava/lang/Object;

.field private final mEvent:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V
    .locals 0

    .line 2867
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2868
    iput-object p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;->mEvent:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    .line 2869
    iput-object p3, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;->mArgs:[Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;-><init>(Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2874
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke NotifyDelayedEventTask"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 2875
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;->mEvent:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$NotifyDelayedEventTask;->mArgs:[Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
