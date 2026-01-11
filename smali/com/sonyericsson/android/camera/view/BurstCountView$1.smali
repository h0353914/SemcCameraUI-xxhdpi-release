.class Lcom/sonyericsson/android/camera/view/BurstCountView$1;
.super Ljava/lang/Object;
.source "BurstCountView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/BurstCountView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/BurstCountView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/BurstCountView;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView$1;->this$0:Lcom/sonyericsson/android/camera/view/BurstCountView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 40
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView$1;->this$0:Lcom/sonyericsson/android/camera/view/BurstCountView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setVisibility(I)V

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/BurstCountView$1;->this$0:Lcom/sonyericsson/android/camera/view/BurstCountView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/BurstCountView$1;->this$0:Lcom/sonyericsson/android/camera/view/BurstCountView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setVisibility(I)V

    .line 35
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/BurstCountView$1;->this$0:Lcom/sonyericsson/android/camera/view/BurstCountView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/BurstCountView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
