.class public Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItemListBuilder;
.super Ljava/lang/Object;
.source "FeatureGroupItemListBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-static {}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListBuilder;->getNewFeatureList()Ljava/util/ArrayList;

    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 23
    new-instance v2, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;

    const v3, 0x7f0f01ed

    .line 24
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;

    const v2, 0x7f0f01ee

    .line 30
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureListBuilder;->getLegacyFeatureList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
