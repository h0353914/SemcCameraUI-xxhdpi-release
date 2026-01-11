.class public final Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;
.super Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CustomTutorialContent"
.end annotation


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;",
            ">;)V"
        }
    .end annotation

    .line 846
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;-><init>(I)V

    .line 847
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mTutorialTypes:Ljava/util/List;

    .line 848
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mTutorialContents:Ljava/util/List;

    const/4 p1, 0x0

    .line 849
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getNavigatorType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mNavigatorType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$TutorialNavigatorType;

    .line 850
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mergeContents(Ljava/util/List;)V

    return-void
.end method

.method private mergeContents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;",
            ">;)V"
        }
    .end annotation

    .line 912
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    .line 914
    instance-of v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    if-nez v1, :cond_1

    goto :goto_0

    .line 917
    :cond_1
    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getPageResources()Ljava/util/List;

    move-result-object v1

    .line 918
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 919
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mPageResources:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 921
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getTitleResources()Ljava/util/List;

    move-result-object v1

    .line 922
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 923
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mTitleResourceId:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 926
    :cond_3
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getDescriptionResources()Ljava/util/List;

    move-result-object v1

    .line 927
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 928
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 931
    :cond_4
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getDescriptionAddResources()Ljava/util/List;

    move-result-object v1

    .line 932
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 933
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mDescriptionAddResourceId:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 936
    :cond_5
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getMediaContentsResources()Ljava/util/List;

    move-result-object v1

    .line 937
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 938
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 941
    :cond_6
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getRelatedSettingKeys()Ljava/util/List;

    move-result-object v0

    .line 942
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 943
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mRelatedSettingKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_7
    return-void
.end method


# virtual methods
.method protected getPageContentView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 5

    .line 868
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->getCurrentTutorialPageInfo()Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 869
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->getCurrentTutorialPageInfo(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->pageIndexByType:I

    .line 870
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->getTutorialContent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    move-result-object v2

    .line 873
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getPageContentView(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object p2

    .line 874
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 894
    :cond_0
    iget-object v0, v2, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mParams:[Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v1, :cond_3

    .line 896
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->getDescriptionView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object p0

    .line 899
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x7f0f0425

    .line 898
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 900
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 901
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-lez v1, :cond_3

    if-ge v1, v3, :cond_3

    .line 886
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->getTitleView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    .line 887
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mPageResources:Ljava/util/ArrayList;

    .line 888
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v4

    .line 887
    invoke-virtual {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->getStepText(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    .line 889
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    if-lez v1, :cond_3

    .line 877
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->getTitleView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    .line 878
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mPageResources:Ljava/util/ArrayList;

    .line 879
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .line 878
    invoke-virtual {p0, p1, v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->getStepText(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    .line 880
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 881
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-object p2
.end method

.method protected setupResource()V
    .locals 3

    .line 855
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->setupResource()V

    .line 856
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mTutorialContents:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mTutorialContents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;

    .line 858
    iget v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mOrientation:I

    iput v2, v1, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->mOrientation:I

    .line 859
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialContent;->setupResource()V

    goto :goto_0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mTutorialContents:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CustomTutorialContent;->mergeContents(Ljava/util/List;)V

    :cond_1
    return-void
.end method
