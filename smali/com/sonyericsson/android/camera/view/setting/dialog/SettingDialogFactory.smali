.class public Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;
.super Ljava/lang/Object;
.source "SettingDialogFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createModeSelector(Landroid/content/Context;IIZZ)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;
    .locals 6

    .line 29
    new-instance v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const v0, 0x7f07012c

    .line 30
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v0

    iput v0, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    const v0, 0x7f07012b

    .line 32
    filled-new-array {v0}, [I

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v0

    iput v0, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 33
    iput p2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 34
    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    const p1, 0x7f070200

    .line 35
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginLandscape:I

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 40
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->SLIDER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 41
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->RIGHT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 43
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/16 v3, 0x50

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;IZZ)V

    return-object p1
.end method

.method public static createMonochromeDialog(Landroid/content/Context;ZII)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 2

    .line 49
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const v1, 0x7f0701bd

    .line 50
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    const v1, 0x7f0701be

    .line 51
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 52
    iput p3, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 53
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 61
    :goto_0
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 62
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->LEFT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 64
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_MONOCHROME:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1
.end method

.method public static createSceneDialog(Landroid/content/Context;II)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 2

    .line 138
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    .line 139
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    const v1, 0x7f0701be

    .line 140
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 141
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    const p2, 0x7f07011a

    const v1, 0x7f0701ab

    .line 142
    filled-new-array {p2, v1}, [I

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    const p1, 0x7f070200

    .line 145
    filled-new-array {p1}, [I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginLandscape:I

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 150
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 151
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->RIGHT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 153
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_SCENE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1
.end method

.method public static createShortcutDialog(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;II)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 2

    .line 79
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const v1, 0x7f0701bd

    .line 80
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    const v1, 0x7f0701be

    .line 81
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 82
    iput p3, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 83
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    const p2, 0x7f07011a

    const p3, 0x7f070200

    .line 84
    filled-new-array {p3, p2}, [I

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    .line 87
    iget p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginPortrait:I

    .line 88
    filled-new-array {p3}, [I

    move-result-object p2

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    .line 89
    iget p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginPortrait:I

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0a0006

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 92
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06006c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 94
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 95
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->LEFT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 97
    sget-object p2, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 128
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_NIGHT_MODE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 124
    :pswitch_1
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_HDR:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 120
    :pswitch_2
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_VIDEO_HDR:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 116
    :pswitch_3
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_FUSION_MODE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 112
    :pswitch_4
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_ASPECT_RATIO:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 108
    :pswitch_5
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_SELFTIMER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 104
    :pswitch_6
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_FLASH:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static varargs dimen(Landroid/content/Context;[I)I
    .locals 5

    .line 169
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p1, v1

    .line 170
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static inflate(Landroid/content/Context;I)Landroid/view/View;
    .locals 1

    .line 158
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
