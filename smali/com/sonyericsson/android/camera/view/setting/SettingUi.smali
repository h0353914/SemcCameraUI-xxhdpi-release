.class public Lcom/sonyericsson/android/camera/view/setting/SettingUi;
.super Ljava/lang/Object;
.source "SettingUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;,
        Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;,
        Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;,
        Lcom/sonyericsson/android/camera/view/setting/SettingUi$CloseExecutor;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingUi"


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private final mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

.field private final mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

.field private final mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

.field private final mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private final mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetting(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSettingDialogStack(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewFinder(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 88
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 89
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 90
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 91
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    .line 92
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-void
.end method

.method private createSettingChangeExecutor(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation

    .line 671
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger-IA;)V

    .line 673
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/16 v2, 0xd

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 695
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/SettingUi$CloseExecutor;

    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;)V

    invoke-direct {p1, p0, v2, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$CloseExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Lcom/sonyericsson/android/camera/view/setting/SettingUi$CloseExecutor-IA;)V

    return-object p1

    .line 691
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;

    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;)V

    invoke-direct {p1, p0, v2, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor-IA;)V

    return-object p1

    .line 688
    :cond_0
    :pswitch_1
    new-instance p0, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x17
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private generateChildrenSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/cameracommon/storage/Storage;",
            ")",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 362
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 364
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v3, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    .line 365
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v4, :cond_4

    .line 369
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 370
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 371
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v5

    .line 370
    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowFullHdSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v5

    .line 372
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v4, v8, :cond_1

    if-eqz v5, :cond_1

    .line 373
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const v8, 0x7f0f0492

    .line 374
    invoke-direct {v0, v8}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 377
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 378
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    const v10, 0x7f0f0493

    .line 379
    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 380
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getDialogItemTypeForSecondLayer(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 381
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->createSettingChangeExecutor(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    if-ne v3, v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 382
    :goto_0
    invoke-virtual {v9, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    .line 383
    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->subText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    .line 384
    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    sget-object v8, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 385
    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    .line 386
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_1
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const v8, 0x7f0f0497

    .line 390
    invoke-direct {v0, v8}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 392
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 393
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 394
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 395
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getDialogItemTypeForSecondLayer(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 396
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->createSettingChangeExecutor(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    if-eq v3, v5, :cond_3

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-ne v4, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v6, 0x1

    .line 397
    :goto_2
    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    .line 398
    invoke-virtual {v0, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->subText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    .line 399
    invoke-virtual {v0, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 400
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    .line 401
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 405
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    .line 407
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v5, v8}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 408
    iget-object v8, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v8, v9}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    .line 409
    iget-object v9, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v9, v10}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 410
    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v10, v11}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 411
    iget-object v11, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v12, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ISO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v11, v12}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v11

    check-cast v11, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    .line 412
    iget-object v12, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v13, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SHUTTER_SPEED:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v12, v13}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v12

    check-cast v12, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    .line 414
    array-length v13, v4

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v13, :cond_16

    aget-object v15, v4, v14

    if-eqz v15, :cond_15

    if-ne v3, v15, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    .line 417
    :goto_4
    invoke-static {v15, v9, v5, v10}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isVideoSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 418
    invoke-static {v15, v9, v11, v12}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isFlashSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Iso;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x1

    goto :goto_5

    :cond_6
    const/16 v16, 0x0

    .line 419
    :goto_5
    sget-object v17, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 421
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_7

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v8, v7, :cond_7

    goto/16 :goto_8

    .line 423
    :cond_7
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_8

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v8, v7, :cond_8

    goto/16 :goto_8

    .line 425
    :cond_8
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_9

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v8, v7, :cond_9

    goto/16 :goto_8

    .line 427
    :cond_9
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_a

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v8, v7, :cond_a

    goto/16 :goto_8

    .line 429
    :cond_a
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_b

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v8, v7, :cond_b

    goto/16 :goto_8

    .line 431
    :cond_b
    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v7, :cond_c

    sget-object v7, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v8, v7, :cond_c

    goto/16 :goto_8

    :cond_c
    if-nez v16, :cond_d

    .line 436
    sget-object v17, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    :cond_d
    move-object/from16 v7, v17

    .line 440
    invoke-static {v15}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    move-object/from16 v16, v3

    .line 441
    invoke-interface {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 442
    invoke-interface {v15}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 443
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getDialogItemTypeForSecondLayer(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 444
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->createSettingChangeExecutor(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 445
    invoke-virtual {v1, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 446
    invoke-virtual {v1, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 448
    sget-object v3, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v6

    aget v3, v3, v6

    const/4 v6, 0x2

    if-eq v3, v6, :cond_f

    const/4 v6, 0x4

    if-eq v3, v6, :cond_e

    goto :goto_7

    .line 450
    :cond_e
    check-cast v15, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v15, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getDescriptionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->subText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    .line 451
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 452
    invoke-virtual {v15, v3}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getDescriptionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 451
    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    goto :goto_7

    .line 456
    :cond_f
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_VIDEO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne v3, v6, :cond_10

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v3, :cond_10

    const v3, 0x7f0f048d

    .line 458
    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    goto :goto_7

    .line 459
    :cond_10
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v15, v3, :cond_13

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v3, :cond_11

    goto :goto_6

    .line 462
    :cond_11
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v15, v3, :cond_12

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v15, v3, :cond_14

    :cond_12
    const v3, 0x7f0f048b

    .line 464
    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    goto :goto_7

    :cond_13
    :goto_6
    const v3, 0x7f0f0487

    .line 461
    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    .line 471
    :cond_14
    :goto_7
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_15
    :goto_8
    move-object/from16 v16, v3

    :goto_9
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    goto/16 :goto_3

    :cond_16
    return-object v2
.end method

.method private generateMonochromeAdpter(ZLcom/sonyericsson/android/camera/view/modeselector/Mode;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .locals 7

    .line 198
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;)V

    .line 201
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    sget-object v2, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->MONOCHROME_PHOTO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    .line 203
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const v3, 0x7f080239

    .line 204
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const v3, 0x7f0f02d4

    .line 205
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const/4 v3, 0x2

    .line 206
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    new-instance v4, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, p2, v5}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;ZLcom/sonyericsson/android/camera/view/modeselector/Mode;Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor-IA;)V

    .line 207
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const/4 v4, 0x0

    .line 208
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    sget-object v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 209
    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    .line 210
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v2, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->MONOCHROME_VIDEO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    .line 212
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const v6, 0x7f08023a

    .line 213
    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const v6, 0x7f0f02d6

    .line 214
    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    .line 215
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;

    invoke-direct {v3, p0, p1, p2, v5}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;ZLcom/sonyericsson/android/camera/view/modeselector/Mode;Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor-IA;)V

    .line 216
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object p0

    .line 217
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 218
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->addAll(Ljava/util/Collection;)V

    return-object v0
.end method

.method private getDialogItemTypeForSecondLayer(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 4

    .line 613
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    return v2

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_1
    return v3

    .line 622
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    array-length p0, p0

    if-le p0, v2, :cond_1

    return v2

    :cond_1
    return v3

    :cond_2
    return v1

    .line 651
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v1

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getManualIqControlDefaultValue(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 3

    .line 555
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 572
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Undefined default value for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 569
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    return-object p0

    .line 566
    :pswitch_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0

    .line 563
    :pswitch_2
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object p0

    .line 560
    :pswitch_3
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    .line 557
    :pswitch_4
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getManualIqControlTabDescription(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 3

    .line 585
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 603
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Undefined description for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const p0, 0x7f0f007c

    return p0

    :pswitch_1
    const p0, 0x7f0f007f

    return p0

    :pswitch_2
    const p0, 0x7f0f0076

    return p0

    :pswitch_3
    const p0, 0x7f0f02b5

    return p0

    :pswitch_4
    const p0, 0x7f0f0080

    return p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0

    .line 754
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isCameraKeySupport(Landroid/content/Context;)Z
    .locals 0

    .line 351
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f050007

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method private static isFlashSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/Iso;Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;)Z
    .locals 2

    .line 536
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 537
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v1, :cond_1

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v0, p1, :cond_1

    .line 538
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    if-eq p2, p1, :cond_1

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    if-eq p3, p1, :cond_1

    .line 539
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->ON:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq p0, p1, :cond_0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-eq p0, p1, :cond_0

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->RED_EYE:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    if-ne p0, p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 544
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p0

    return p0
.end method

.method public static isSelectableValues(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/parameter/Parameters;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z
    .locals 3

    .line 492
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    move p1, v2

    goto :goto_0

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 495
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v1

    .line 496
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p2, p1, v0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isVideoSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p1

    .line 502
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private static isVideoSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 3

    .line 516
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq p3, v0, :cond_0

    return v1

    .line 521
    :cond_0
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 522
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v2, v0, :cond_2

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 523
    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 524
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 525
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-ne p0, v0, :cond_1

    return v1

    .line 528
    :cond_1
    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isVideoStabilizerSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    return p0

    .line 531
    :cond_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public closeDialogs()Z
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 332
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs(Z)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public openModeSelectDialog(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;)V
    .locals 2

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 171
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMessageSettings()Lcom/sonyericsson/android/camera/setting/MessageSettings;

    move-result-object v1

    .line 170
    invoke-virtual {v0, p1, p2, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->openModeSelectorDialog(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;Lcom/sonyericsson/android/camera/setting/MessageSettings;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 173
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    :cond_0
    return-void
.end method

.method public openMonochromeDialog(ZILcom/sonyericsson/android/camera/view/modeselector/Mode;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 187
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateMonochromeAdpter(ZLcom/sonyericsson/android/camera/view/modeselector/Mode;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object p0

    .line 186
    invoke-virtual {v0, p0, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->openMonochromeDialog(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;I)Z

    return-void
.end method

.method public openShortcutSettingDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 4

    .line 287
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;)V

    .line 290
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateChildrenSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Ljava/util/List;

    move-result-object v1

    .line 291
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 292
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 296
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackgroundWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 297
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackgroundHeight()I

    move-result v3

    .line 295
    invoke-static {v1, p1, v2, v3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->createShortcutDialog(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;II)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 300
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v3

    .line 299
    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->addPanel(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    .line 302
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 305
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    :cond_1
    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 322
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->setUiOrientation(I)V

    return-void
.end method
