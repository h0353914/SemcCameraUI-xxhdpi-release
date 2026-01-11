.class public final Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;
.super Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "CommonTutorialContent"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V
    .locals 0

    .line 952
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    return-void
.end method

.method protected varargs constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I[Ljava/lang/Object;)V
    .locals 0

    .line 956
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;-><init>(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected canShowContent(Lcom/sonyericsson/android/camera/setting/StoredSettings;)Z
    .locals 7

    .line 1007
    sget-object v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_b

    const/4 v1, 0x5

    if-eq v0, v1, :cond_a

    const/4 v1, 0x6

    if-eq v0, v1, :cond_9

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    if-eqz p1, :cond_8

    .line 1019
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getUserSettings()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object v0

    .line 1020
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v1

    .line 1021
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1022
    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1023
    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_6

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 1047
    :pswitch_0
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-nez p0, :cond_0

    .line 1048
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1049
    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1050
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p0, v0, :cond_0

    .line 1051
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 1052
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_0
    return v5

    .line 1041
    :pswitch_1
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 1042
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_EYE_GUIDE:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 1043
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_1
    return v5

    .line 1036
    :pswitch_2
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-nez p0, :cond_2

    .line 1037
    sget-object p0, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_HAND_SHUTTER:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {v1, p0}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_2
    return v5

    .line 1033
    :pswitch_3
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_MANUAL_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 1034
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    .line 1025
    :pswitch_4
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq v2, p0, :cond_3

    .line 1026
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_VIDEO_FUSION:Lcom/sonyericsson/android/camera/setting/MessageType;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1028
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v6

    :cond_3
    return v5

    .line 1067
    :cond_4
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-nez p0, :cond_5

    .line 1068
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1069
    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1070
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p0, v0, :cond_5

    .line 1071
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION_SHOT:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 1072
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_5
    return v5

    .line 1057
    :cond_6
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p0

    if-nez p0, :cond_7

    .line 1058
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 1059
    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 1060
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne p0, v0, :cond_7

    .line 1061
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/setting/MessageType;->TUTORIAL_SUPER_SLOW_MOTION:Lcom/sonyericsson/android/camera/setting/MessageType;

    .line 1062
    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettings;->isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z

    move-result p0

    xor-int/2addr p0, v6

    return p0

    :cond_7
    return v5

    .line 1080
    :cond_8
    :goto_0
    invoke-super {p0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->canShowContent(Lcom/sonyericsson/android/camera/setting/StoredSettings;)Z

    move-result p0

    return p0

    .line 1014
    :cond_9
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSideTouchSupported()Z

    move-result p0

    return p0

    .line 1011
    :cond_a
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result p0

    return p0

    .line 1009
    :cond_b
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPageContentView(Landroid/content/Context;I)Landroid/view/ViewGroup;
    .locals 4

    .line 981
    invoke-super {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getPageContentView(Landroid/content/Context;I)Landroid/view/ViewGroup;

    move-result-object v0

    .line 982
    sget-object v1, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$5;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    if-lez p2, :cond_2

    const/4 v1, 0x3

    if-ge p2, v1, :cond_2

    .line 985
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->getTitleView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v1

    .line 986
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mPageResources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, p1, p2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->getStepText(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    .line 987
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 988
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    if-lez p2, :cond_2

    .line 993
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->getTitleView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v1

    .line 994
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mPageResources:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, p1, p2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->getStepText(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object p0

    .line 995
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected setupResource()V
    .locals 5

    .line 961
    invoke-super {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->setupResource()V

    .line 962
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 965
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getPageNum()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 966
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mPageResources:Ljava/util/ArrayList;

    .line 967
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->isPortrait()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0c00b6

    goto :goto_1

    :cond_1
    const v2, 0x7f0c00b5

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    new-instance v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 970
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getContentsImageIdList()[I

    move-result-object v3

    aget v3, v3, v0

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 971
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getMediaContentsResourceType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;-><init>(ILcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;)V

    .line 970
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 972
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTitleResourceId:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getContentsTitleIdList()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mDescriptionResourceId:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getContentsDescriptionIdList()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 974
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mDescriptionAddResourceId:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getContentsDescriptionAddIdList()[I

    move-result-object v2

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mRelatedSettingKey:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$CommonTutorialContent;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->getContentsSettingKeyList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
