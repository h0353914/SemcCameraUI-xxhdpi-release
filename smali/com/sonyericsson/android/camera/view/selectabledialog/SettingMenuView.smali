.class public Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;
.super Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;
.source "SettingMenuView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;
    }
.end annotation


# instance fields
.field private final mIsSettingMenu:Z

.field private final mMenuDialogType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 35
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mMenuDialogType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    .line 37
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_MENU:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mIsSettingMenu:Z

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mIsSettingMenu:Z

    return p0
.end method

.method private adjustMonochromeLayout(II)V
    .locals 9

    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 278
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mOrientation:I

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    .line 279
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    .line 280
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 281
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v5, 0x7f07010b

    .line 282
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v5

    const v6, 0x7f07010a

    .line 283
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v6

    .line 285
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_2

    .line 286
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getRotation()F

    move-result v7

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_8

    int-to-float v7, v4

    div-float/2addr v7, v8

    .line 287
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotX(F)V

    int-to-float v8, v3

    sub-float/2addr v8, v7

    .line 288
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotY(F)V

    .line 289
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setRotation(F)V

    .line 291
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    if-nez v1, :cond_0

    sub-int/2addr v3, v4

    .line 292
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 294
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1

    .line 296
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int v5, v4, p2

    sub-int/2addr v1, v5

    add-int/2addr v1, v6

    add-int/2addr p2, v1

    if-ge p2, v4, :cond_1

    .line 298
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    sub-int/2addr v3, v2

    .line 300
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_0
    sub-int/2addr v4, p1

    .line 302
    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1

    .line 306
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getRotation()F

    move-result v7

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_5

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 307
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotX(F)V

    int-to-float v7, v3

    sub-float/2addr v7, v4

    .line 308
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotY(F)V

    .line 309
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setRotation(F)V

    .line 311
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    if-nez v1, :cond_3

    .line 312
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr v3, p2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 314
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 316
    :cond_3
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    sub-int/2addr v3, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 318
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    add-int v1, p2, v6

    if-le p1, v1, :cond_4

    .line 319
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v6

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 321
    :cond_4
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 325
    :cond_5
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    if-nez v1, :cond_6

    .line 326
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr v3, p2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 328
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 330
    :cond_6
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    sub-int/2addr v3, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 332
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    add-int v1, p2, v6

    if-le p1, v1, :cond_7

    .line 333
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v6

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 335
    :cond_7
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 341
    :cond_8
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private adjustRotatableLayoutGravityBottom(Landroid/view/ViewGroup;II)V
    .locals 4

    .line 123
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mIsSettingMenu:Z

    if-eqz p2, :cond_1

    .line 133
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    .line 134
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 135
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 140
    :goto_0
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mOrientation:I

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setOrientation(I)V

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 152
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    :goto_1
    sub-int v1, p2, v1

    .line 154
    iget v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    add-int v3, v1, p3

    sub-int/2addr p2, v3

    .line 155
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v2, 0x0

    .line 154
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 157
    invoke-virtual {p0, v2, v1, v2, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPadding(IIII)V

    .line 159
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 161
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginPortrait:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginPortrait:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v3, v3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginPortrait:I

    invoke-virtual {p2, p1, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 167
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mIsSettingMenu:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getCurrentStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-eq p1, p2, :cond_4

    .line 170
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getInitialDisplayHeight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 170
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setViewMargin(I)V

    goto :goto_2

    .line 174
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    .line 179
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    .line 174
    invoke-virtual {p2, v1, v2, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 182
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mIsSettingMenu:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    .line 183
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->getCurrentStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object p1

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-eq p1, p2, :cond_4

    .line 185
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mSomcScroller:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getInitialDisplayHeight()I

    move-result v1

    sub-int/2addr p2, v1

    .line 185
    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer;->setViewMargin(I)V

    .line 190
    :cond_4
    :goto_2
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$2;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$AbsSelectableDialog$HorizontalGravity:[I

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    goto :goto_3

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_6

    sub-int/2addr p3, v0

    int-to-float p1, p3

    .line 193
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setTranslationX(F)V

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    .line 195
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setTranslationX(F)V

    :goto_3
    return-void
.end method

.method private adjustRotatableLayoutGravityTop(Landroid/view/ViewGroup;II)V
    .locals 10

    .line 207
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 214
    new-instance v1, Landroid/graphics/Rect;

    .line 217
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 218
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    :cond_1
    const v1, 0x7f070190

    .line 221
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v2

    .line 222
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v4

    .line 223
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v1

    const v5, 0x7f0701aa

    .line 224
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v5

    .line 225
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 226
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v8

    if-eqz v8, :cond_2

    sub-int/2addr v7, p2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    goto :goto_0

    :cond_2
    sub-int/2addr v7, p2

    .line 229
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    goto :goto_1

    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 230
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 231
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v9

    if-eqz v9, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v9

    .line 234
    :goto_3
    iget-boolean v9, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mIsExpandedWhenOpened:Z

    if-eqz v9, :cond_8

    .line 235
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    add-int/2addr v0, p3

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v8

    if-ge v0, v9, :cond_6

    .line 236
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr p2, v5

    sub-int/2addr p2, v2

    add-int/2addr p2, v6

    goto :goto_6

    :cond_6
    neg-int v0, p3

    add-int/2addr v0, v8

    add-int/2addr v0, v6

    if-ne p3, p2, :cond_7

    sub-int/2addr v0, v2

    :goto_4
    move p2, v0

    goto :goto_6

    :cond_7
    add-int/2addr v0, v2

    goto :goto_4

    .line 242
    :cond_8
    iget v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    add-int/2addr v6, p3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    if-ge v6, v8, :cond_9

    .line 243
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr p2, v5

    sub-int/2addr p2, v2

    goto :goto_6

    :cond_9
    neg-int v5, p3

    .line 245
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    if-ne p3, p2, :cond_a

    sub-int/2addr v5, v2

    :goto_5
    move p2, v5

    goto :goto_6

    :cond_a
    add-int/2addr v5, v2

    goto :goto_5

    :goto_6
    neg-int p3, v1

    .line 250
    invoke-virtual {p0, v7, p2, v3, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPadding(IIII)V

    .line 251
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 252
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result p3

    if-nez p3, :cond_b

    .line 253
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    .line 257
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v4

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    .line 253
    invoke-virtual {p2, p3, v3, v0, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_7

    .line 261
    :cond_b
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginLandscape:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    invoke-virtual {p2, p1, v3, p3, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :goto_7
    return-void
.end method

.method private findItemWith(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
    .locals 0

    .line 345
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->findItemViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 347
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz p1, :cond_0

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method protected addContent(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 50
    new-instance v1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;Ljava/lang/String;Landroid/widget/ArrayAdapter;Z)V

    .line 51
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mArranges:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->addContentView(Landroid/view/View;)V

    .line 54
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 55
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 p1, -0x2

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method protected getScrollableContentLength()I
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 64
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mArranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mArranges:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView$ContentArrange;->computeArrangeHeight()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public selectTagItem(Ljava/lang/Object;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->findItemWith(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateDefaultScrollPosition()V
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mIsSettingMenu:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->updateDefaultScrollPosition()V

    :cond_0
    return-void
.end method

.method public updateRotatableLayout(Landroid/view/ViewGroup;II)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mMenuDialogType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_MONOCHROME:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->adjustMonochromeLayout(II)V

    goto :goto_1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 108
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->adjustRotatableLayoutGravityTop(Landroid/view/ViewGroup;II)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->adjustRotatableLayoutGravityBottom(Landroid/view/ViewGroup;II)V

    .line 113
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotX(F)V

    .line 114
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iget p3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p3, p3

    div-float/2addr p3, p2

    sub-float/2addr p1, p3

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotY(F)V

    .line 115
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mOrientation:I

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setRotation(F)V

    .line 116
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->requestLayout()V

    :goto_1
    return-void
.end method
