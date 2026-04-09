.class public Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;
.super Landroid/widget/FrameLayout;
.source "TutorialContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView$TutorialView;
    }
.end annotation


# instance fields
.field private mViewFlipper:Landroid/widget/ViewFlipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getViewFlipper()Landroid/widget/ViewFlipper;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->mViewFlipper:Landroid/widget/ViewFlipper;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 46
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const v0, 0x7f090093

    .line 47
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContainerView;->mViewFlipper:Landroid/widget/ViewFlipper;

    return-void
.end method
