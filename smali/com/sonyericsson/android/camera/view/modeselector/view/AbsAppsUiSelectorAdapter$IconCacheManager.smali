.class Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;
.super Ljava/lang/Object;
.source "AbsAppsUiSelectorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IconCacheManager"
.end annotation


# static fields
.field private static sCacheClientStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageLoader()Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;
    .locals 1

    .line 144
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    return-object v0
.end method

.method public static registerClient(Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;Landroid/content/Context;)V
    .locals 1

    .line 128
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    .line 132
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    if-nez p0, :cond_2

    .line 137
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    move-result-object p0

    sput-object p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    const/4 p1, 0x1

    .line 138
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->setImageFadeIn(Z)V

    .line 139
    sget-object p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    const p1, 0x7f0800e9

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->setLoadingImage(I)V

    :cond_2
    return-void
.end method

.method private static releaseCache(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;",
            ">;)V"
        }
    .end annotation

    .line 186
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_1

    .line 187
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 188
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 189
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;->getIconUri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 191
    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    invoke-virtual {v2, v1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->removeCache(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->release()V

    const/4 p0, 0x0

    .line 196
    sput-object p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sImageLoader:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    :cond_2
    return-void
.end method

.method public static unregisterClient(Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;",
            ">;)V"
        }
    .end annotation

    .line 150
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 156
    sget-object p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    .line 157
    sput-object p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    .line 159
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->releaseCache(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public static unregisterToUntilClient(Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;",
            ">;)V"
        }
    .end annotation

    .line 166
    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-gt v1, p0, :cond_1

    .line 174
    sget-object v2, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    :cond_1
    sget-object p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 178
    sput-object p0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->sCacheClientStack:Ljava/util/ArrayList;

    .line 181
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsAppsUiSelectorAdapter$IconCacheManager;->releaseCache(Ljava/util/List;)V

    :cond_2
    return-void
.end method
