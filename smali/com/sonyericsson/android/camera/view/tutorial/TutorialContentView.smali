.class public abstract Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;
.super Landroid/widget/RelativeLayout;
.source "TutorialContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;
    }
.end annotation


# instance fields
.field protected mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

.field private mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected notifyOnDoneClicked(Landroid/view/View;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;->onClickCloseButton(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->notifyOnDoneClicked(Landroid/view/View;)V

    return-void
.end method

.method protected onLayoutToLandscape()V
    .locals 0

    .line 78
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onUpdateViewContent()V

    return-void
.end method

.method protected onLayoutToPortrait()V
    .locals 0

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onUpdateViewContent()V

    return-void
.end method

.method protected abstract onUpdateViewContent()V
.end method

.method protected final setContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    .line 56
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onLayoutToPortrait()V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onLayoutToLandscape()V

    :goto_0
    return-void
.end method

.method protected final setOnClickCloseButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;

    return-void
.end method
