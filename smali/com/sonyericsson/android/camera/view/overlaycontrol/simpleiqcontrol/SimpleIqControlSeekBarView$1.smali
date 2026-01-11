.class Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$1;
.super Ljava/lang/Object;
.source "SimpleIqControlSeekBarView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->startFadeEffectAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;)V
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView$1;->this$0:Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->-$$Nest$fgetmCurrentProgress(Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/simpleiqcontrol/SimpleIqControlSeekBarView;->setProgress(I)V

    return-void
.end method
