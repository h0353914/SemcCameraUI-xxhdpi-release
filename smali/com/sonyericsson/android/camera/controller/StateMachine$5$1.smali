.class Lcom/sonyericsson/android/camera/controller/StateMachine$5$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$5;->onRecordProgress(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$5;I)V
    .locals 0

    .line 7860
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iput p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$1;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 7863
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$5;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/controller/StateMachine$5;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$5$1;->val$progress:I

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->access$14500(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V

    return-void
.end method
