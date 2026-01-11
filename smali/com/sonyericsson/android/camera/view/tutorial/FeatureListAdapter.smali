.class public Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;
.super Landroid/widget/BaseExpandableListAdapter;
.source "FeatureListAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeatureListGroup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/widget/BaseExpandableListAdapter;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mContext:Landroid/content/Context;

    .line 32
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItemListBuilder;->create(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mFeatureListGroup:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChild(II)Ljava/lang/Object;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mFeatureListGroup:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;->getChild()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getChildId(II)J
    .locals 0

    int-to-long p0, p2

    return-wide p0
.end method

.method public getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 48
    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const p4, 0x7f0c0046

    const/4 p5, 0x0

    .line 49
    invoke-virtual {p3, p4, p5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const p4, 0x7f090111

    .line 50
    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    .line 51
    iget-object p5, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mFeatureListGroup:Ljava/util/List;

    invoke-interface {p5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;->getChild()Ljava/util/List;

    move-result-object p1

    .line 52
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 53
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getFeatureListTitleId()I

    move-result p5

    invoke-virtual {p2, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget-object p2, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p4, p2}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    const p2, 0x7f0900eb

    .line 56
    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 58
    :try_start_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 59
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getFeatureListThumbnailId()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 60
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    const-string p0, "Image resource is not found"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :goto_0
    return-object p3
.end method

.method public getChildrenCount(I)I
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mFeatureListGroup:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;->getChild()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getGroup(I)Ljava/lang/Object;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mFeatureListGroup:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getGroupCount()I
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mFeatureListGroup:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getGroupId(I)J
    .locals 0

    int-to-long p0, p1

    return-wide p0
.end method

.method public getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 90
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0048

    const/4 p4, 0x0

    .line 91
    invoke-virtual {p2, p3, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f090111

    .line 92
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 93
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListAdapter;->mFeatureListGroup:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;->getGroup()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    sget-object p0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->MEDIUM:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {p3, p0}, Lcom/sonymobile/cameracommon/font/FontUtil;->setRobotoFont(Landroid/widget/TextView;Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Z

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isChildSelectable(II)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
