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

    .line 227
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

    .line 235
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->setEnabled(Z)V

    .line 236
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->access$002(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;->this$0:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->access$002(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
