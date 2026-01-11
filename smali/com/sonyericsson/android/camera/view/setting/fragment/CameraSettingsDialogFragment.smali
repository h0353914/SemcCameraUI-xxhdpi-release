.class public Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "CameraSettingsDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$ValueArrayAdapter;,
        Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final STATE_ITEM_KEY:Ljava/lang/String; = "CameraSettingItem"


# instance fields
.field private mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

.field private final mOnItemClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnItemSelectedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;

.field private final mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCameraSettingItem(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnItemSelectedListener(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mOnItemSelectedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 44
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$1;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mOnItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 62
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$2;-><init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    return-void
.end method

.method private getSelectedValuePos()I
    .locals 2

    .line 142
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 143
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static newInstance(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;
    .locals 1

    .line 78
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;-><init>()V

    .line 79
    iput-object p0, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 86
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 95
    const-string v0, "CameraSettingItem"

    const-class v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    .line 100
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 102
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 103
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getTitleResId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 104
    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$ValueArrayAdapter;

    .line 105
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$ValueArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 106
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->getSelectedValuePos()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mOnItemClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 104
    invoke-virtual {p1, v2, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 107
    invoke-virtual {p1, v1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 108
    invoke-virtual {p1, v1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 109
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 111
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    .line 112
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p0

    .line 87
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "create with no activity."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onPause()V
    .locals 1

    .line 129
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mOnItemSelectedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 119
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 121
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 122
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;

    if-eqz v1, :cond_0

    .line 123
    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mOnItemSelectedListener:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment$OnItemSelectedListener;

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 136
    const-string v0, "CameraSettingItem"

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDialogFragment;->mCameraSettingItem:Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 137
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
