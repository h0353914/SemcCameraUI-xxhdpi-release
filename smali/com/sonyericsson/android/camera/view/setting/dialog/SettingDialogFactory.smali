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

.method public static createModeSelector(Landroid/content/Context;IIZ)Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;
    .locals 5

    .line 28
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const/4 v1, 0x1

    .line 29
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f070103

    aput v4, v2, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    .line 31
    new-array v2, v1, [I

    const v4, 0x7f070102

    aput v4, v2, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 32
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 33
    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    .line 34
    new-array p1, v1, [I

    const p2, 0x7f0701b1

    aput p2, p1, v3

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginLandscape:I

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 39
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->SLIDER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 40
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->RIGHT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 42
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;

    const/16 p2, 0x50

    invoke-direct {p1, p0, v0, p2, p3}, Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;IZ)V

    return-object p1
.end method

.method public static createMonochromeDialog(Landroid/content/Context;ZII)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 5

    .line 47
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const/4 v1, 0x1

    .line 48
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f070191

    aput v4, v2, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    .line 49
    new-array v1, v1, [I

    const v2, 0x7f070192

    aput v2, v1, v3

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 50
    iput p3, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 51
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 59
    :goto_0
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 60
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->LEFT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 62
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_MONOCHROME:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1
.end method

.method public static createSceneDialog(Landroid/content/Context;II)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 5

    .line 190
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    .line 191
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    const/4 v1, 0x1

    .line 192
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f070192

    aput v4, v2, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 193
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    const/4 p2, 0x2

    .line 194
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    .line 197
    new-array p1, v1, [I

    const p2, 0x7f0701b1

    aput p2, p1, v3

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginLandscape:I

    .line 198
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 200
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 202
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 203
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->RIGHT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 205
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_SCENE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    :array_0
    .array-data 4
        0x7f0700f4
        0x7f07017d
    .end array-data
.end method

.method public static createSecondLayerDialog(Landroid/content/Context;IIZ)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 6

    .line 87
    new-instance v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const/4 v0, 0x1

    .line 88
    new-array v1, v0, [I

    const/4 v3, 0x0

    const v4, 0x7f070191

    aput v4, v1, v3

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    .line 89
    new-array v1, v0, [I

    const v4, 0x7f070192

    aput v4, v1, v3

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 90
    new-array v1, v0, [I

    const v4, 0x7f070197

    aput v4, v1, v3

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    sub-int/2addr p2, v1

    iput p2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    const/4 p2, 0x2

    .line 92
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    .line 95
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 97
    new-array p1, v0, [I

    const p2, 0x7f0701aa

    aput p2, p1, v3

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    .line 98
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 100
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object v5, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_SECOND_LAYER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    const/16 v3, 0x30

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;IZLcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f07006c
        0x7f070197
    .end array-data
.end method

.method public static createSecondLayerDialogDetails(Landroid/content/Context;IIZ)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 6

    .line 106
    new-instance v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const/4 v0, 0x1

    .line 107
    new-array v1, v0, [I

    const/4 v3, 0x0

    const v4, 0x7f070191

    aput v4, v1, v3

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    const/4 v1, 0x2

    .line 108
    new-array v4, v1, [I

    fill-array-data v4, :array_0

    invoke-static {p0, v4}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v4

    iput v4, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 111
    new-array v4, v0, [I

    const v5, 0x7f070197

    aput v5, v4, v3

    invoke-static {p0, v4}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v4

    sub-int/2addr p2, v4

    iput p2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 113
    new-array p2, v1, [I

    fill-array-data p2, :array_1

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    .line 116
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006d

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 118
    new-array p1, v0, [I

    const p2, 0x7f0701aa

    aput p2, p1, v3

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->dropShadowSpace:I

    .line 119
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 121
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object v5, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_SECOND_LAYER_DETAIL:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    const/16 v3, 0x30

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;IZLcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x7f0701ac
        0x7f0701ab
    .end array-data

    :array_1
    .array-data 4
        0x7f07006c
        0x7f070197
    .end array-data
.end method

.method public static createSettingMenuDialog(Landroid/content/Context;IIZ)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 6

    .line 68
    new-instance v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    .line 69
    iput p2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    const/4 v0, 0x1

    .line 70
    new-array v1, v0, [I

    const/4 v3, 0x0

    const v4, 0x7f070192

    aput v4, v1, v3

    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v1

    iput v1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 71
    iput p2, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 72
    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    .line 73
    new-array p1, v0, [I

    const p2, 0x7f0701b1

    aput p2, p1, v3

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->rightMarginLandscape:I

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0a0006

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06006c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 78
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->SLIDER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 79
    sget-object p1, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->RIGHT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p1, v2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 81
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object v5, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_MENU:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    const/16 v3, 0x50

    move-object v0, p1

    move-object v1, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;IZLcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1
.end method

.method public static createShortcutDialog(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;II)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 5

    .line 136
    new-instance v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;-><init>()V

    const/4 v1, 0x1

    .line 137
    new-array v2, v1, [I

    const/4 v3, 0x0

    const v4, 0x7f070191

    aput v4, v2, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemWidth:I

    .line 138
    new-array v2, v1, [I

    const v4, 0x7f070192

    aput v4, v2, v3

    invoke-static {p0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result v2

    iput v2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->itemHeight:I

    .line 139
    iput p3, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightLandscape:I

    .line 140
    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->maxHeightPortrait:I

    const/4 p2, 0x2

    .line 141
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    .line 144
    iget p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginLandscape:I

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->leftMarginPortrait:I

    .line 145
    new-array p2, v1, [I

    const p3, 0x7f0701b1

    aput p3, p2, v3

    invoke-static {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->dimen(Landroid/content/Context;[I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    .line 146
    iget p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginLandscape:I

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->bottomMarginPortrait:I

    .line 147
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0a0006

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->scrollBarDefaultDelayBeforeFade:I

    .line 149
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f06006c

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->panelBackgroundColor:I

    .line 151
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;->FADE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    iput-object p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->animationType:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$AnimationType;

    .line 152
    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;->LEFT:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    iput-object p2, v0, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;->horizontalGavity:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$HorizontalGravity;

    .line 154
    sget-object p2, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 180
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_HDR:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 176
    :pswitch_1
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_VIDEO_HDR:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 172
    :pswitch_2
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_FUSION_MODE:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 168
    :pswitch_3
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_ASPECT_RATIO:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 164
    :pswitch_4
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_SELFTIMER:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    .line 160
    :pswitch_5
    new-instance p1, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    sget-object p2, Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;->SETTING_FLASH:Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;

    invoke-direct {p1, p0, v0, p2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$Params;Lcom/sonyericsson/android/camera/view/selectabledialog/AbsSelectableDialog$SelectableDialogType;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f0701b1
        0x7f0700f4
    .end array-data
.end method

.method private static varargs dimen(Landroid/content/Context;[I)I
    .locals 5

    .line 221
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p1, v1

    .line 222
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

    const-string v0, "layout_inflater"

    .line 210
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    .line 213
    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
