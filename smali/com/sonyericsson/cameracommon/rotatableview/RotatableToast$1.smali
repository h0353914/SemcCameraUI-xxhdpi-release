.class Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;
.super Ljava/lang/Object;
.source "RotatableToast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;->this$0:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;->this$0:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->-$$Nest$fgetmBaseView(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast$1;->this$0:Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;->-$$Nest$fgetmFadeoutAnimation(Lcom/sonyericsson/cameracommon/rotatableview/RotatableToast;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
