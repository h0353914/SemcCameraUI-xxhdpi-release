.class public final Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$EyeGuideTutorialContent;
.super Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "EyeGuideTutorialContent"
.end annotation


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 1126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected canShowContent(Lcom/sonyericsson/android/camera/setting/StoredSettings;)Z
    .locals 1

    .line 1151
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p0

    .line 1152
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1153
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1154
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 1155
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected setupResource()V
    .locals 4

    .line 1130
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->setupResource()V

    .line 1131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$EyeGuideTutorialContent;->mPageResources:Ljava/util/ArrayList;

    .line 1132
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$EyeGuideTutorialContent;->isPortrait()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0c00a0

    goto :goto_0

    :cond_0
    const v1, 0x7f0c009f

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1131
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$EyeGuideTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    new-instance v1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 1139
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$EyeGuideTutorialContent;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0801fb

    goto :goto_1

    :cond_1
    const v2, 0x7f0801fa

    :goto_1
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    invoke-direct {v1, v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;-><init>(ILcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;)V

    .line 1137
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1145
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$EyeGuideTutorialContent;->mTitleResourceId:Ljava/util/ArrayList;

    const v1, 0x7f0f0155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1146
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$EyeGuideTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    const v0, 0x7f0f0156

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
