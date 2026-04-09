.class public Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
.super Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;
.source "SettingMenu.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;IZLcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V
    .locals 8

    .line 46
    invoke-direct {p0, p1, p2, p4}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Z)V

    .line 48
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;

    invoke-direct {v0, p1, p5}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenuView;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 52
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_MENU:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    if-ne p1, p5, :cond_0

    const/4 p1, 0x1

    :goto_0
    move v2, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 54
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->computeWidth()I

    move-result v5

    move-object v3, p2

    move-object v4, p0

    move v6, p3

    move v7, p4

    .line 52
    invoke-virtual/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setup(ZLcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$OnScrollListener;IIZ)V

    .line 56
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_MENU:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    if-ne p1, p5, :cond_1

    if-eqz p4, :cond_1

    .line 57
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->FULLSCREEN:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->setScrollStatus(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V
    .locals 6

    const/16 v3, 0x50

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;IZLcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-void
.end method

.method private isSettingMenu()Z
    .locals 1

    .line 122
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_MENU:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public closeImmediate()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->isSettingMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->removeBottomView()V

    .line 168
    :cond_0
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->closeImmediate()V

    return-void
.end method

.method public getGlobalVisibleItemRect(Landroid/graphics/Rect;Ljava/lang/Object;)Z
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->findItemViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hitTest(II)Z
    .locals 3

    .line 105
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->isSettingMenu()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 107
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getContentLayout()Landroid/widget/LinearLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_0
    return v2

    .line 113
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getBackgroundLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 114
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    return p0

    :cond_2
    return v2
.end method

.method public isOperationAcceptable()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getScrollStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 131
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu$2;->$SwitchMap$com$sonyericsson$android$camera$view$selectabledialog$ScrollContainer$Status:[I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getScrollStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onOrientationChanged(I)V
    .locals 2

    .line 81
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->isSettingMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->isSecondLayerDialogOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    .line 83
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getScrollStatus()Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->IDLE:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->reopenSecondLayerDialog()V

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->addBottomView()V

    goto :goto_0

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->removeBottomView()V

    .line 92
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog;->onOrientationChanged(I)V

    return-void
.end method

.method public onScrollFinished(Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;)V
    .locals 1

    .line 152
    sget-object v0, Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;->EXIT:Lcom/sonyericsson/android/camera/view/selectabledialog/ScrollContainer$Status;

    if-ne p1, v0, :cond_0

    .line 153
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu$1;-><init>(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;)V

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public open(Landroid/view/ViewGroup;)V
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->openImmediate(Landroid/view/ViewGroup;)V

    .line 64
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->startOpenAnimation()V

    return-void
.end method

.method public openImmediate(Landroid/view/ViewGroup;)V
    .locals 2

    .line 68
    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mParent:Landroid/widget/FrameLayout;

    .line 70
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mParent:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 72
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mParent:Landroid/widget/FrameLayout;

    .line 73
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mParent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    .line 72
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mParams:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iget v0, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->value:I

    const/16 v1, 0x50

    or-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->adjustLayout()V

    return-void
.end method

.method public select(Ljava/lang/Object;)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->mDialogScrollView:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsDialogScrollView;->selectTagItem(Ljava/lang/Object;)V

    return-void
.end method
