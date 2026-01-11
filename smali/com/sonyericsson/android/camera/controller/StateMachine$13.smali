.class Lcom/sonyericsson/android/camera/controller/StateMachine$13;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine;->onRecordProgress(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9704
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$13;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iput p2, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$13;->val$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 9707
    iget-object v0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$13;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    iget p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$13;->val$progress:I

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mupdateRecordingProgress(Lcom/sonyericsson/android/camera/controller/StateMachine;I)V

    return-void
.end method
