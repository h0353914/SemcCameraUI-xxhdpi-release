.class abstract Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
.super Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "PagingTutorialContent"
.end annotation


# instance fields
.field protected mDescriptionAddResourceId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDescriptionResourceId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mMediaContentsResourceId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;",
            ">;"
        }
    .end annotation
.end field

.field protected mNavigatorType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

.field protected mPageIndex:I

.field protected mPageResources:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mRelatedSettingKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;"
        }
    .end annotation
.end field

.field protected mTitleResourceId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mTutorialContents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;",
            ">;"
        }
    .end annotation
.end field

.field protected mTutorialTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 611
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;-><init>(I)V

    const/4 p1, 0x0

    .line 606
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    return-void
.end method

.method protected constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V
    .locals 0

    .line 615
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    const/4 p1, 0x0

    .line 606
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    return-void
.end method

.method protected varargs constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I[Ljava/lang/Object;)V
    .locals 0

    .line 620
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 606
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    return-void
.end method

.method private generateSettingItems(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;",
            ">;"
        }
    .end annotation

    .line 808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 810
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_3

    .line 812
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->getOptions()[Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, p1, v4

    .line 813
    new-instance v6, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder-IA;)V

    .line 814
    invoke-virtual {v6, v5}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->setUserSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;

    move-result-object v6

    .line 815
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->setNameResId(I)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;

    move-result-object v6

    .line 816
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;->getDefaultValue()Lcom/sonyericsson/android/camera/configuration/parameters/ZoomFrames;

    move-result-object v7

    if-ne v5, v7, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v3

    :goto_1
    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->setIsSelected(Z)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;

    move-result-object v6

    .line 817
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mParams:[Ljava/lang/Object;

    aget-object v7, v7, v3

    if-eqz v7, :cond_3

    .line 818
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mParams:[Ljava/lang/Object;

    aget-object v7, v7, v3

    if-ne v5, v7, :cond_2

    move v5, v1

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->setIsSelected(Z)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;

    .line 821
    :cond_3
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->build()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method private getInitialSelectedValuePos(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;",
            ">;)I"
        }
    .end annotation

    .line 832
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;

    .line 833
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p1
.end method


# virtual methods
.method protected getCurrentTutorialPageInfo()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;
    .locals 1

    .line 625
    iget v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getCurrentTutorialPageInfo(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    move-result-object p0

    return-object p0
.end method

.method protected getCurrentTutorialPageInfo(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;
    .locals 5

    .line 631
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTutorialTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 634
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTutorialContents:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->getPages()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v4, v2, -0x1

    if-gt p1, v4, :cond_0

    .line 636
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTutorialTypes:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-direct {p1, p0, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    return-object p1

    :cond_0
    sub-int/2addr v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 640
    :cond_1
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTutorialTypes:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-direct {p1, p0, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    return-object p1
.end method

.method public final getDescriptionAddResources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 782
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mDescriptionAddResourceId:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getDescriptionResources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 778
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getDescriptionView(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x7f09020f

    .line 752
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public final getMediaContentsResources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;",
            ">;"
        }
    .end annotation

    .line 786
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getNavigatorType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mNavigatorType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    return-object p0
.end method

.method protected getOptionView(Landroid/view/ViewGroup;)Landroid/widget/ListView;
    .locals 0

    const p0, 0x7f090212

    .line 756
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    return-object p0
.end method

.method protected getPageContentView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 7

    .line 678
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageResources:Ljava/util/ArrayList;

    .line 679
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 682
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getTitleView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v2

    .line 683
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTitleResourceId:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 685
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTitleResourceId:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 684
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 688
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getDescriptionView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v2

    .line 689
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mDescriptionAddResourceId:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    .line 690
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 691
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mDescriptionAddResourceId:Ljava/util/ArrayList;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 692
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 693
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 695
    :cond_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 697
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 696
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 v3, 0x1

    .line 701
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVerticalScrollBarEnabled(Z)V

    .line 702
    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 704
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getOptionView(Landroid/view/ViewGroup;)Landroid/widget/ListView;

    move-result-object v2

    .line 705
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mRelatedSettingKey:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 706
    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 707
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 709
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 711
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mRelatedSettingKey:Ljava/util/ArrayList;

    .line 712
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->generateSettingItems(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Ljava/util/List;

    move-result-object p2

    .line 713
    new-instance v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;

    .line 715
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getInitialSelectedValuePos(Ljava/util/List;)I

    move-result v4

    invoke-direct {v3, p1, p2, v4}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ValueArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    .line 713
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 717
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f080388

    invoke-virtual {p1, v3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 716
    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 718
    new-instance p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent$1;

    invoke-direct {p1, p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent$1;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;Ljava/util/List;)V

    invoke-virtual {v2, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1

    :cond_1
    const/16 p0, 0x8

    .line 729
    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_1
    return-object v0
.end method

.method public final getPageResources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 770
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageResources:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getPages()I
    .locals 0

    .line 800
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageResources:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getRelatedSettingKeys()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;"
        }
    .end annotation

    .line 790
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mRelatedSettingKey:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getStepText(Landroid/content/Context;II)Ljava/lang/String;
    .locals 0

    .line 765
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 766
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const p2, 0x7f0f0444

    .line 763
    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTitleResources()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 774
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTitleResourceId:Ljava/util/ArrayList;

    return-object p0
.end method

.method protected getTitleView(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 0

    const p0, 0x7f090211

    .line 742
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getTutorialContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;
    .locals 2

    const/4 v0, 0x0

    .line 645
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTutorialTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTutorialTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    if-ne v1, p1, :cond_0

    .line 648
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTutorialContents:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getTutorialTypes()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTutorialTypes:Ljava/util/List;

    return-object p0
.end method

.method protected isSimpleTutorialContent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected setupResource()V
    .locals 1

    .line 660
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageResources:Ljava/util/ArrayList;

    .line 661
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mTitleResourceId:Ljava/util/ArrayList;

    .line 662
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    .line 663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mDescriptionAddResourceId:Ljava/util/ArrayList;

    .line 664
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    .line 665
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mRelatedSettingKey:Ljava/util/ArrayList;

    .line 667
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mNavigatorType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    if-nez v0, :cond_0

    .line 668
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;->NORMAL:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mNavigatorType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0c0078

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0077

    .line 674
    :goto_0
    iput v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mLayoutId:I

    return-void
.end method
