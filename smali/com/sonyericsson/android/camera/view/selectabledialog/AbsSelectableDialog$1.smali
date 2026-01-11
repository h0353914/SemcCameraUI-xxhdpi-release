.class Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;
.super Ljava/lang/Object;
.source "AbsSelectableDialog.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->startOpenAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 233
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->setEnabled(Z)V

    .line 234
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->-$$Nest$fputmAnimation(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->-$$Nest$fputmAnimation(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;Landroid/animation/Animator;)V

    return-void
.end method
