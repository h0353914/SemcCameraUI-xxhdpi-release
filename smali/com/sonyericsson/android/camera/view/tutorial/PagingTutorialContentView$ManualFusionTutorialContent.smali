.class public final Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;
.super Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ManualFusionTutorialContent"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 1206
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected canShowContent(Lcom/sonyericsson/android/camera/setting/StoredSettings;)Z
    .locals 0

    .line 1246
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_MANUAL_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 1247
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected setupResource()V
    .locals 4

    .line 1210
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->setupResource()V

    .line 1211
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->mPageResources:Ljava/util/ArrayList;

    .line 1212
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->isPortrait()Z

    move-result v1

    const v2, 0x7f0c009f

    const v3, 0x7f0c00a0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->mPageResources:Ljava/util/ArrayList;

    .line 1217
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1216
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 1224
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f08020b

    goto :goto_1

    :cond_2
    const v2, 0x7f08020a

    :goto_1
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;-><init>(ILcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;)V

    .line 1222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1229
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 1231
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0802b3

    goto :goto_2

    :cond_3
    const v2, 0x7f0802b2

    :goto_2
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;-><init>(ILcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;)V

    .line 1229
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->mTitleResourceId:Ljava/util/ArrayList;

    const v1, 0x7f0f01d4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->mTitleResourceId:Ljava/util/ArrayList;

    const v1, 0x7f0f01d2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    const v1, 0x7f0f01d5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1241
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$ManualFusionTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    const v0, 0x7f0f01d3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
