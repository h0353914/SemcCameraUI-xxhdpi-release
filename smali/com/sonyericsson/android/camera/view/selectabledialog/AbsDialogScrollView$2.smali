.class Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$2;
.super Ljava/lang/Object;
.source "AbsDialogScrollView.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getAnimationFactory()Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$AnimationFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$2;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p0, 0x0

    .line 307
    invoke-interface {p3, p0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public open(IILandroid/animation/Animator$AnimatorListener;)V
    .locals 0

    return-void
.end method
