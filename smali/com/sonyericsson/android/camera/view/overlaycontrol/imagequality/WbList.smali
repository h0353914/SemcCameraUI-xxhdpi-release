.class Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;
.super Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;
.source "WbList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .locals 2

    .line 43
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItem;-><init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    .line 45
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mContext:Landroid/content/Context;

    .line 46
    new-instance p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$1;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    .line 47
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v1, 0x7f0c008d

    invoke-virtual {p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    .line 49
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    const p2, 0x7f0900c4

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    iput-object p0, p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->updateSelected(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-void
.end method

.method private createIcon(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Landroid/widget/ImageView;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 134
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 136
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 137
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v2, 0x7f080338

    .line 138
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 139
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 141
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 143
    new-instance v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$1;-><init>(Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v1
.end method

.method private updateSelected(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V
    .locals 4

    .line 113
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    if-eq v1, p1, :cond_0

    .line 115
    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    goto :goto_0

    .line 119
    :cond_1
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->select()V

    move v0, v2

    .line 122
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 124
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_2

    const/4 v3, 0x1

    .line 125
    invoke-virtual {v1, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_2

    .line 127
    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public refresh()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 169
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object v2, v2, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 172
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 174
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setSelected(Z)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->updateSelected(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)V

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 2

    .line 105
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result p1

    const/4 v0, 0x0

    .line 106
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public update(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter$ItemLayoutParams;)V
    .locals 5

    .line 54
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "update()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700c8

    .line 58
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    const v0, 0x7f0700c6

    .line 61
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f0700c7

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0700b9

    .line 67
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v2, v0

    .line 73
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    if-le p1, v3, :cond_1

    .line 74
    sget p1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float p1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr p1, v3

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr p1, v3

    .line 75
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    float-to-int p2, p2

    .line 76
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 77
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v1, v1

    .line 78
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/util/CoordinateUtil;->convertPx2Dip(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    const/4 p1, 0x0

    .line 82
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->createIcon(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Landroid/widget/ImageView;

    move-result-object v3

    .line 84
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->mHolder:Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;

    iget-object v4, v4, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList$ViewHolder;->mList:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 88
    iput p2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 89
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 90
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/imagequality/WbList;->getItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq p1, v4, :cond_2

    .line 93
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
