.class public abstract Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;
.super Landroid/widget/RelativeLayout;
.source "TutorialContentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;,
        Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;
    }
.end annotation


# static fields
.field private static final TWO_CLICK_EVENT_INTERVAL_TIME:I = 0x1f4


# instance fields
.field protected mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

.field private mLastClickTime:J

.field private mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 94
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mLastClickTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 94
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mLastClickTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 94
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mLastClickTime:J

    return-void
.end method


# virtual methods
.method protected notifyOnDoneClicked(Landroid/view/View;)V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;

    if-eqz p0, :cond_0

    .line 113
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;->onClickCloseButton(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mLastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mLastClickTime:J

    .line 102
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->notifyOnDoneClicked(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onLayoutToLandscape()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onUpdateViewContent()V

    return-void
.end method

.method protected onLayoutToPortrait()V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onUpdateViewContent()V

    return-void
.end method

.method protected abstract onUpdateViewContent()V
.end method

.method protected final setContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mContent:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    .line 55
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onLayoutToPortrait()V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->onLayoutToLandscape()V

    :goto_0
    return-void
.end method

.method protected final setOnClickCloseButtonListener(Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView;->mOnClickCloseButtonListener:Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$OnClickCloseButtonListener;

    return-void
.end method
