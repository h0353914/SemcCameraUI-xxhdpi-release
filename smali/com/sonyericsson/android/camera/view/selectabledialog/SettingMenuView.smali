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
.field private final mMenuDialogType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mMenuDialogType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    return-void
.end method

.method private adjustMonochromeLayout(II)V
    .locals 9

    .line 238
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 240
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mOrientation:I

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v1

    .line 241
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    .line 242
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 243
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v5, 0x7f070134

    .line 244
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v5

    const v6, 0x7f070133

    .line 245
    invoke-virtual {p0, v6}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v6

    .line 247
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    if-eqz v7, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getRotation()F

    move-result v7

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_8

    int-to-float v7, v4

    div-float/2addr v7, v8

    .line 249
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotX(F)V

    int-to-float v8, v3

    sub-float/2addr v8, v7

    .line 250
    invoke-virtual {p0, v8}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotY(F)V

    .line 251
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setRotation(F)V

    .line 253
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    if-nez v1, :cond_0

    sub-int/2addr v3, v4

    .line 254
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr v3, p1

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    sub-int/2addr v3, v6

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 256
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1

    .line 258
    :cond_0
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int v5, v4, p2

    sub-int/2addr v1, v5

    add-int/2addr v1, v6

    add-int/2addr p2, v1

    if-ge p2, v4, :cond_1

    .line 260
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_1
    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    sub-int/2addr v3, v2

    .line 262
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_0
    sub-int/2addr v4, p1

    .line 264
    div-int/lit8 v4, v4, 0x2

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto/16 :goto_1

    .line 268
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getRotation()F

    move-result v7

    cmpl-float v7, v1, v7

    if-eqz v7, :cond_5

    int-to-float v4, v4

    div-float/2addr v4, v8

    .line 269
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotX(F)V

    int-to-float v7, v3

    sub-float/2addr v7, v4

    .line 270
    invoke-virtual {p0, v7}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotY(F)V

    .line 271
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setRotation(F)V

    .line 273
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    if-nez v1, :cond_3

    .line 274
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr v3, p2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 276
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 278
    :cond_3
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    sub-int/2addr v3, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 280
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    add-int v1, p2, v6

    if-le p1, v1, :cond_4

    .line 281
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v6

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 283
    :cond_4
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 287
    :cond_5
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    if-nez v1, :cond_6

    .line 288
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr v3, p2

    sub-int/2addr v3, p1

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 290
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 292
    :cond_6
    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    sub-int/2addr v3, v1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    sub-int/2addr v1, p1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 294
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    add-int v1, p2, v6

    if-le p1, v1, :cond_7

    .line 295
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr p1, p2

    sub-int/2addr p1, v6

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    .line 297
    :cond_7
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 303
    :cond_8
    :goto_1
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private adjustRotatableLayoutGravityBottom(Landroid/view/ViewGroup;II)V
    .locals 4

    .line 124
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 125
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 127
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    :goto_0
    sub-int v1, p2, v1

    .line 129
    iget v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBottomMarginHint:I

    add-int v3, v1, p3

    sub-int/2addr p2, v3

    .line 130
    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 v2, 0x0

    .line 129
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 132
    invoke-virtual {p0, v2, v1, v2, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPadding(IIII)V

    .line 134
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginPortrait:I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginPortrait:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v3, v3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginPortrait:I

    invoke-virtual {p2, p1, v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget v1, v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    .line 148
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p1, p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    .line 143
    invoke-virtual {p2, v1, v2, v3, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 152
    :goto_1
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$2;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$AbsSelectableDialog$HorizontalGravity:[I

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    goto :goto_2

    .line 154
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result p1

    if-eqz p1, :cond_3

    sub-int/2addr p3, v0

    int-to-float p1, p3

    .line 155
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setTranslationX(F)V

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    .line 157
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setTranslationX(F)V

    :goto_2
    return-void
.end method

.method private adjustRotatableLayoutGravityTop(Landroid/view/ViewGroup;II)V
    .locals 10

    .line 169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 170
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v1

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 176
    new-instance v1, Landroid/graphics/Rect;

    .line 179
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 180
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v1

    :cond_1
    const v1, 0x7f0701bc

    .line 183
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v2

    .line 184
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v4

    .line 185
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v1

    const v5, 0x7f0701d6

    .line 186
    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->dimenToPixel(I)I

    move-result v5

    .line 187
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v8

    if-eqz v8, :cond_2

    sub-int/2addr v7, p2

    sub-int/2addr v7, v4

    add-int/2addr v7, v5

    goto :goto_0

    :cond_2
    sub-int/2addr v7, p2

    .line 191
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

    .line 192
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v8

    if-eqz v8, :cond_4

    iget v8, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_4
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    .line 193
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result v9

    if-eqz v9, :cond_5

    move v6, v3

    goto :goto_3

    :cond_5
    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v9

    .line 196
    :goto_3
    iget-boolean v9, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mIsExpandedWhenOpened:Z

    if-eqz v9, :cond_8

    .line 197
    iget v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    add-int/2addr v0, p3

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v9, v8

    if-ge v0, v9, :cond_6

    .line 198
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

    goto :goto_4

    :cond_7
    add-int/2addr v0, v2

    :goto_4
    move p2, v0

    goto :goto_6

    .line 204
    :cond_8
    iget v6, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    add-int/2addr v6, p3

    iget v8, v0, Landroid/graphics/Rect;->right:I

    mul-int/lit8 v9, v5, 0x2

    add-int/2addr v8, v9

    if-ge v6, v8, :cond_9

    .line 205
    iget p2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mTopMarginHint:I

    sub-int/2addr p2, v5

    sub-int/2addr p2, v2

    goto :goto_6

    :cond_9
    neg-int v5, p3

    .line 207
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    if-ne p3, p2, :cond_a

    sub-int/2addr v5, v2

    goto :goto_5

    :cond_a
    add-int/2addr v5, v2

    :goto_5
    move p2, v5

    :goto_6
    neg-int p3, v1

    .line 212
    invoke-virtual {p0, v7, p2, v3, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPadding(IIII)V

    .line 213
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 214
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->isPortrait()Z

    move-result p3

    if-nez p3, :cond_b

    .line 215
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p3, p3, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    .line 219
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v4

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    .line 215
    invoke-virtual {p2, p3, v3, v0, p0}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_7

    .line 223
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

    .line 307
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->findItemViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 309
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz p1, :cond_0

    .line 310
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

    .line 45
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 46
    new-instance v1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;Ljava/lang/String;Landroid/widget/ArrayAdapter;Z)V

    .line 47
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mArranges:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->addContentView(Landroid/view/View;)V

    .line 50
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$ListArrange;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    const/4 p1, -0x1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 51
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

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mArranges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 60
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mArranges:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 61
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

    .line 68
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->findItemWith(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView$1;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;Ljava/lang/Object;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;)V

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public updateDefaultScrollPosition()V
    .locals 0

    return-void
.end method

.method public updateRotatableLayout(Landroid/view/ViewGroup;II)V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mMenuDialogType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_MONOCHROME:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    if-ne v0, v1, :cond_0

    .line 101
    invoke-direct {p0, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->adjustMonochromeLayout(II)V

    goto :goto_1

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mBackground:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->adjustRotatableLayoutGravityTop(Landroid/view/ViewGroup;II)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->adjustRotatableLayoutGravityBottom(Landroid/view/ViewGroup;II)V

    .line 109
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setPivotX(F)V

    .line 110
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

    .line 111
    iget p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->mOrientation:I

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->setRotation(F)V

    .line 112
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;->requestLayout()V

    :goto_1
    return-void
.end method
