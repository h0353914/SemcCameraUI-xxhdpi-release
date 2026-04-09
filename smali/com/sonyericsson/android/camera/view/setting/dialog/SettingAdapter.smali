.class public Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
        ">;"
    }
.end annotation


# static fields
.field public static final INVALID_VALUE:I = -0x1

.field public static final TAG:Ljava/lang/String; = "SettingAdapter"


# instance fields
.field private final mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

.field private mIsDeviceInSecurityLock:Z

.field private mItemHeight:I

.field private mSetRoundBackgroundTop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;Z)V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 44
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    .line 45
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    .line 46
    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mIsDeviceInSecurityLock:Z

    const/4 p1, -0x1

    .line 47
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mItemHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;Z)V

    return-void
.end method

.method private generateItemLayoutParams(Landroid/view/ViewGroup;I)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;
    .locals 10

    .line 208
    instance-of v0, p1, Landroid/widget/GridView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Landroid/widget/GridView;

    invoke-virtual {p1}, Landroid/widget/GridView;->getNumColumns()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v0

    div-int/2addr v0, p1

    sub-int/2addr v0, v1

    .line 213
    div-int v2, p2, p1

    add-int/lit8 v3, p1, -0x1

    .line 215
    rem-int/2addr p2, p1

    .line 217
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    iget v5, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mItemHeight:I

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    if-nez v2, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v4

    :goto_1
    if-ne v2, v0, :cond_2

    move v7, v1

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    if-nez p2, :cond_3

    move v8, v1

    goto :goto_3

    :cond_3
    move v8, v4

    :goto_3
    if-ne p2, v3, :cond_4

    move v9, v1

    goto :goto_4

    :cond_4
    move v9, v4

    :goto_4
    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;-><init>(IZZZZ)V

    return-object p1
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 2

    .line 193
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 194
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    if-eqz v1, :cond_0

    .line 195
    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getDialogItemType()I

    move-result p0

    return p0

    .line 197
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItemViewType(I)I

    move-result p0

    return p0
.end method

.method public getSelected()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 3

    const/4 v0, 0x0

    .line 111
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 112
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 113
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSelectedPosition()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 124
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 125
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 126
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 158
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "getView()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 162
    invoke-direct {p0, p3, p1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->generateItemLayoutParams(Landroid/view/ViewGroup;I)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;

    move-result-object p1

    if-eqz p2, :cond_5

    .line 166
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    const-string v1, "  has convertView"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 167
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    if-eqz v1, :cond_5

    .line 168
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    const-string p0, "  has dialogItem"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 169
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    .line 171
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p2

    if-eq p2, v0, :cond_4

    .line 172
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_3

    const-string p2, "  update item"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 174
    :cond_3
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->setItem(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    .line 176
    :cond_4
    invoke-virtual {p0, p3, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 177
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0

    .line 182
    :cond_5
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_6

    const-string p2, "  create new dialogItem"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 183
    :cond_6
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mIsDeviceInSecurityLock:Z

    invoke-virtual {p2, v0, p3, p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;->create(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;Landroid/view/ViewGroup;Z)Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;

    move-result-object p0

    .line 185
    invoke-virtual {p0, p3, p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getViewTypeCount()I
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;->getDialogItemTypeCount()I

    move-result p0

    return p0
.end method

.method public selectByData(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .line 82
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 85
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 86
    invoke-interface {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->compareData(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 88
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_1

    .line 90
    :cond_0
    invoke-interface {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public selectByItem(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 101
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 102
    invoke-interface {p1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->compareData(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 103
    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_1

    .line 105
    :cond_1
    invoke-interface {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setItemHeight(I)V
    .locals 1

    .line 65
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mItemHeight:I

    if-eq v0, p1, :cond_0

    .line 66
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mItemHeight:I

    .line 67
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setRoundTopItemBackground(Z)V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    if-eq v0, p1, :cond_0

    .line 76
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->mSetRoundBackgroundTop:Z

    .line 77
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method
