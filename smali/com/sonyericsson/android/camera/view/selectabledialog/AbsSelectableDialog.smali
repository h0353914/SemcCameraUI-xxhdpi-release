.class public abstract Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;
.super Ljava/lang/Object;
.source "AbsSelectableDialog.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogInterface;
.implements Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;,
        Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;
    }
.end annotation


# instance fields
.field private mAnimation:Landroid/animation/Animator;

.field protected mBottomMarginHint:I

.field protected final mContext:Landroid/content/Context;

.field protected mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

.field protected mDialogType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

.field protected mIsExpandedWhenOpened:Z

.field protected mOrientation:I

.field protected final mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

.field protected mParent:Landroid/widget/FrameLayout;

.field protected mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Z)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mContext:Landroid/content/Context;

    .line 119
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    const/4 p1, 0x0

    .line 120
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mBottomMarginHint:I

    .line 121
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mIsExpandedWhenOpened:Z

    return-void
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mAnimation:Landroid/animation/Animator;

    return-object p1
.end method

.method private computeContentsHeight()I
    .locals 1

    .line 300
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mIsExpandedWhenOpened:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getTotalArrangeHeight()I

    move-result p0

    return p0

    .line 303
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getArrangeHeightAtIndex(I)I

    move-result p0

    return p0
.end method

.method private getSideEdgeMargin()I
    .locals 0

    .line 296
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method private updateRotatableLayout()V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeHeight()I

    move-result p0

    invoke-virtual {v0, v1, v2, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->updateRotatableLayout(Landroid/view/ViewGroup;II)V

    return-void
.end method


# virtual methods
.method public addPanel(Landroid/widget/ArrayAdapter;)V
    .locals 1

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->addPanel(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method public addPanel(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->addContent(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    return-void
.end method

.method protected adjustLayout()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->updateDefaultScrollPosition()V

    .line 191
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->updateRotatableLayout()V

    return-void
.end method

.method public close()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getScrollStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-ne v0, v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->closeImmediate()V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->startCloseAnimation()V

    :goto_0
    return-void
.end method

.method public closeImmediate()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParent:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParent:Landroid/widget/FrameLayout;

    .line 148
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mAnimation:Landroid/animation/Animator;

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 153
    :cond_1
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 154
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    return-void
.end method

.method protected computeHeight()I
    .locals 2

    .line 291
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeContentsHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->getSideEdgeMargin()I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 290
    :goto_0
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method protected computeWidth()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->getSideEdgeMargin()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public hitTest(II)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isExpanded()Z
    .locals 0

    .line 308
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mIsExpandedWhenOpened:Z

    return p0
.end method

.method public isOperationAcceptable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected isPortrait()Z
    .locals 1

    .line 181
    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mOrientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onOrientationChanged(I)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setUiOrientation(I)V

    .line 186
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->updateRotatableLayout()V

    return-void
.end method

.method public onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V
    .locals 0

    return-void
.end method

.method public onScrollProgressChanged(F)V
    .locals 5

    .line 317
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrollcontainer currentProgress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 320
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mIsExpandedWhenOpened:Z

    goto :goto_0

    .line 322
    :cond_1
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mIsExpandedWhenOpened:Z

    :goto_0
    return-void
.end method

.method public setBottomMarginHint(I)V
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setBottomMarginHint(I)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    if-eqz v0, :cond_0

    .line 176
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1

    .line 159
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 160
    iput p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mOrientation:I

    .line 162
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->onOrientationChanged(I)V

    :cond_0
    return-void
.end method

.method public setSettingDialogStack(Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    return-void
.end method

.method public setTopMarginHint(I)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setTopMarginHint(I)V

    return-void
.end method

.method protected startCloseAnimation()V
    .locals 4

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->setEnabled(Z)V

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeHeight()I

    move-result v2

    new-instance v3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$2;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->startCloseAnimation(IILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected startOpenAnimation()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->computeHeight()I

    move-result v2

    new-instance v3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;

    invoke-direct {v3, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$1;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->startOpenAnimation(IILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
