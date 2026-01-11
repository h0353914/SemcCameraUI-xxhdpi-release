.class Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture$1;
.super Ljava/lang/Object;
.source "StateMachine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->handleOnTakePictureDone([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;)V
    .locals 0

    .line 6140
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 6143
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture$1;->this$1:Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/StateMachine$StateMultiFrameCapture;->this$0:Lcom/sonyericsson/android/camera/controller/StateMachine;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->-$$Nest$mcancelAutoFocus(Lcom/sonyericsson/android/camera/controller/StateMachine;Z)V

    return-void
.end method
