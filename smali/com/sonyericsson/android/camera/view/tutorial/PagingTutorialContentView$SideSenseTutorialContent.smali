.class public final Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SideSenseTutorialContent;
.super Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SideSenseTutorialContent"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1347
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected canShowContent(Lcom/sonyericsson/android/camera/setting/StoredSettings;)Z
    .locals 0

    .line 1367
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSideTouchSupported()Z

    move-result p0

    return p0
.end method

.method protected setupResource()V
    .locals 4

    .line 1352
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->setupResource()V

    .line 1353
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SideSenseTutorialContent;->mPageResources:Ljava/util/ArrayList;

    .line 1354
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SideSenseTutorialContent;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c00a0

    goto :goto_0

    :cond_0
    const v1, 0x7f0c009f

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1353
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1357
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SideSenseTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    const v2, 0x7f0e0001

    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->VIDEO:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;-><init>(ILcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SideSenseTutorialContent;->mTitleResourceId:Ljava/util/ArrayList;

    const v1, 0x7f0f028e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1363
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$SideSenseTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    const v0, 0x7f0f0292

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
