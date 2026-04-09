.class Lcom/sonyericsson/android/camera/controller/GestureShutter$1;
.super Ljava/lang/Object;
.source "GestureShutter.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/GestureShutterView$AnimationStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/controller/GestureShutter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/controller/GestureShutter;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$1;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleConfirmingFinished()V
    .locals 0

    .line 170
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$1;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$000(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->handleConfirmingFinished()V

    return-void
.end method

.method public handleProceedFinished()V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$1;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$000(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->handleProceedFinished()V

    return-void
.end method

.method public handleRewindFinished()V
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/sonyericsson/android/camera/controller/GestureShutter$1;->this$0:Lcom/sonyericsson/android/camera/controller/GestureShutter;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter;->access$000(Lcom/sonyericsson/android/camera/controller/GestureShutter;)Lcom/sonyericsson/android/camera/controller/GestureShutter$State;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/GestureShutter$State;->handleRewindFinished()V

    return-void
.end method
