.class public Lcom/sonyericsson/android/camera/view/setting/SettingUi;
.super Ljava/lang/Object;
.source "SettingUi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;,
        Lcom/sonyericsson/android/camera/view/setting/SettingUi$CloseExecutor;,
        Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;,
        Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;,
        Lcom/sonyericsson/android/camera/view/setting/SettingUi$SettingDialogListenerImpl;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingUi"


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private final mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

.field private final mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

.field private mIsDeviceInSecurityLock:Z

.field private final mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

.field private final mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

.field private final mSettingMenuAdapter:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;",
            "[",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingMenuList:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;

.field private final mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

.field private final mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;Lcom/sonyericsson/android/camera/controller/StateMachine;Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;Z)V
    .locals 2

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingMenuAdapter:Ljava/util/Map;

    .line 116
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 117
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 118
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;-><init>(Z)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingMenuList:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;

    .line 119
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 120
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SettingDialogListenerImpl;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SettingDialogListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->setContextualMenuListener(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogListener;)V

    .line 121
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 122
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 123
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    .line 124
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mIsDeviceInSecurityLock:Z

    .line 125
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    .line 126
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getUserSetting()Lcom/sonyericsson/android/camera/setting/UserSettings;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->clearSettingMenuAdapter()V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/controller/StateMachine;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mIsDeviceInSecurityLock:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateParameterItemAdapter(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->openSecondLayerDialog(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/setting/UserSettings;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/CameraActivity;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->setVideoStabilizerByVideoHdrChanged()V

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sonyericsson/android/camera/view/setting/SettingUi;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mCameraDevice:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->updateTouchCapture(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V

    return-void
.end method

.method private clearSettingMenuAdapter()V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingMenuAdapter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 323
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingMenuAdapter:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_0
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

    .line 1232
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$ParameterChanger;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V

    .line 1234
    sget-object v2, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/16 v2, 0xd

    if-eq p1, v2, :cond_0

    const/16 v2, 0x17

    if-eq p1, v2, :cond_0

    const/16 v2, 0x19

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 1254
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/SettingUi$CloseExecutor;

    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;)V

    invoke-direct {p1, p0, v2, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$CloseExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V

    return-object p1

    .line 1250
    :pswitch_0
    new-instance p1, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;

    new-instance v2, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;

    invoke-direct {v2, v0}, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;)V

    invoke-direct {p1, p0, v2, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$SlowMotionExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V

    return-object p1

    .line 1247
    :cond_0
    :pswitch_1
    new-instance p0, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/executor/SettingChangerInterface;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
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

    .line 868
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 870
    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v3, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    .line 871
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/4 v7, 0x1

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v4, :cond_4

    .line 875
    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v4, v5}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 876
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    .line 877
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v5

    .line 876
    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowFullHdSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v5

    .line 878
    sget-object v8, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v4, v8, :cond_1

    if-eqz v5, :cond_1

    .line 879
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const v8, 0x7f0f02f9

    .line 880
    invoke-direct {v0, v8}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 883
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 884
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    const v10, 0x7f0f02fa

    .line 885
    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 886
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getDialogItemTypeForSecondLayer(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 887
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->createSettingChangeExecutor(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    if-ne v3, v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 888
    :goto_0
    invoke-virtual {v9, v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    .line 889
    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->subText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    .line 890
    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    sget-object v8, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 891
    invoke-virtual {v5, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v5

    .line 892
    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 895
    :cond_1
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const v8, 0x7f0f02fd

    .line 896
    invoke-direct {v0, v8}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 898
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 899
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 900
    invoke-interface {v5}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 901
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getDialogItemTypeForSecondLayer(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v9

    .line 902
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
    move v6, v7

    .line 903
    :goto_2
    invoke-virtual {v0, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    .line 904
    invoke-virtual {v0, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->subText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    .line 905
    invoke-virtual {v0, v8}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 906
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v0

    .line 907
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v2

    .line 911
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v4

    .line 913
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->GEO_TAG:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v5, :cond_5

    .line 916
    move-object v5, v3

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    iget-object v8, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v5, v8}, Lcom/sonyericsson/cameracommon/mediasaving/location/GeotagManager;->isGeoTagEnabled(Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 918
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Geotag;

    .line 922
    :cond_5
    sget-object v5, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SIDE_SENSE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v5, :cond_6

    .line 923
    invoke-static {v7}, Lcom/sonyericsson/android/camera/util/SettingUtil;->isSideSenseEnabled(Z)Z

    move-result v5

    if-nez v5, :cond_6

    .line 924
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SideSense;

    .line 928
    :cond_6
    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v8, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v5, v8}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 929
    iget-object v8, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v9, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_CODEC:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v8, v9}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v8

    check-cast v8, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    .line 930
    iget-object v9, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v10, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v9, v10}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 931
    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v11, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v10, v11}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v10

    check-cast v10, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 933
    array-length v11, v4

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v11, :cond_12

    aget-object v13, v4, v12

    if-eqz v13, :cond_11

    if-ne v3, v13, :cond_7

    move v14, v7

    goto :goto_4

    :cond_7
    const/4 v14, 0x0

    .line 936
    :goto_4
    invoke-static {v13, v9, v5, v10}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isVideoSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result v15

    .line 937
    sget-object v16, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 939
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v13, v6, :cond_8

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v8, v6, :cond_8

    goto/16 :goto_8

    .line 941
    :cond_8
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v13, v6, :cond_9

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne v8, v6, :cond_9

    goto/16 :goto_8

    .line 945
    :cond_9
    sget-object v6, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v6, :cond_e

    .line 946
    move-object v6, v13

    check-cast v6, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 947
    invoke-interface/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/storage/Storage;->getAvailableStorage()Ljava/util/List;

    move-result-object v15

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 952
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v15

    move-object/from16 v17, v4

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v15, v4, :cond_a

    move-object v4, v3

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 953
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v4

    sget-object v15, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v4, v15, :cond_a

    .line 954
    invoke-interface/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/storage/Storage;->getAvailableStorage()Ljava/util/List;

    move-result-object v4

    sget-object v15, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :goto_5
    const/4 v15, 0x1

    goto :goto_6

    .line 957
    :cond_a
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v4

    sget-object v15, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v4, v15, :cond_b

    move-object v4, v3

    check-cast v4, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;

    .line 958
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v4

    sget-object v15, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v4, v15, :cond_b

    .line 960
    invoke-interface/range {p2 .. p2}, Lcom/sonyericsson/cameracommon/storage/Storage;->getAvailableStorage()Ljava/util/List;

    move-result-object v4

    sget-object v15, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-interface {v4, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto :goto_5

    .line 962
    :cond_b
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/configuration/parameters/DestinationToSave;->getType()Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    move-result-object v4

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    if-ne v4, v6, :cond_d

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNGRANTED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 963
    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v6

    sget-object v15, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 964
    invoke-interface {v6, v15}, Lcom/sonyericsson/cameracommon/storage/Storage;->getCurrentState(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v6

    if-ne v4, v6, :cond_d

    goto :goto_5

    :cond_c
    move-object/from16 v17, v4

    :cond_d
    move v15, v7

    goto :goto_6

    :cond_e
    move-object/from16 v17, v4

    :goto_6
    if-nez v15, :cond_f

    .line 971
    sget-object v16, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    :cond_f
    move-object/from16 v4, v16

    .line 975
    invoke-static {v13}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 976
    invoke-interface {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getIconId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 977
    invoke-interface {v13}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getTextId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 978
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getDialogItemTypeForSecondLayer(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 979
    invoke-direct/range {p0 .. p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->createSettingChangeExecutor(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 980
    invoke-virtual {v6, v14}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v6

    .line 981
    invoke-virtual {v6, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v4

    .line 983
    sget-object v6, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual/range {p1 .. p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x4

    if-eq v6, v7, :cond_10

    goto :goto_7

    .line 985
    :cond_10
    check-cast v13, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v13, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getDescriptionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->subText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    .line 986
    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 987
    invoke-virtual {v13, v6}, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->getDescriptionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 986
    invoke-virtual {v4, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    .line 991
    :goto_7
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_11
    :goto_8
    move-object/from16 v17, v4

    :goto_9
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v4, v17

    const/4 v7, 0x1

    goto/16 :goto_3

    :cond_12
    return-object v2
.end method

.method private generateMonochromeAdpter(ZLcom/sonyericsson/android/camera/view/modeselector/Mode;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .locals 7

    .line 403
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mIsDeviceInSecurityLock:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;Z)V

    .line 406
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 407
    sget-object v2, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->MONOCHROME_PHOTO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    .line 408
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const v3, 0x7f0801f0

    .line 409
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const v3, 0x7f0f01de

    .line 410
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const/4 v3, 0x2

    .line 411
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    new-instance v4, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;

    const/4 v5, 0x0

    invoke-direct {v4, p0, p1, p2, v5}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;ZLcom/sonyericsson/android/camera/view/modeselector/Mode;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V

    .line 412
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const/4 v4, 0x0

    .line 413
    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    sget-object v6, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 414
    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    .line 415
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 416
    sget-object v2, Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;->MONOCHROME_VIDEO:Lcom/sonyericsson/android/camera/controller/launcher/ApplicationLauncher$MonochromeType;

    .line 417
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const v6, 0x7f0801f1

    .line 418
    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    const v6, 0x7f0f01e0

    .line 419
    invoke-virtual {v2, v6}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    .line 420
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v2

    new-instance v3, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;

    invoke-direct {v3, p0, p1, p2, v5}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$MonochromeExecutor;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;ZLcom/sonyericsson/android/camera/view/modeselector/Mode;Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;)V

    .line 421
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object p0

    .line 422
    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 423
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object p0

    .line 424
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->addAll(Ljava/util/Collection;)V

    return-object v0
.end method

.method private generateParameterItemAdapter(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .locals 4

    .line 854
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mIsDeviceInSecurityLock:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;Z)V

    .line 856
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateChildrenSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->addAll(Ljava/util/Collection;)V

    return-object v0
.end method

.method private generateParameterKeyItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 5

    .line 613
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateChildrenSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Ljava/util/List;

    move-result-object v0

    .line 614
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getSelectedSettingItem(Ljava/util/List;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 618
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getText(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    .line 621
    :cond_0
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isSelectableKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z

    move-result v1

    .line 622
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-virtual {p1, v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getRestrictMessageDialogId(Lcom/sonyericsson/android/camera/setting/UserSettings;)Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    move-result-object v3

    .line 624
    sget-object v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    if-nez v1, :cond_2

    .line 626
    sget-object v1, Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;->DLG_INVALID:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    if-ne v3, v1, :cond_1

    .line 627
    sget-object v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    goto :goto_0

    .line 629
    :cond_1
    sget-object v4, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->RESTRICTED:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    .line 633
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 634
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 635
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 636
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getDialogItemType(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 637
    invoke-virtual {v1, v4}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object v1

    .line 638
    invoke-direct {p0, p1, v4, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateSettingItemExecutor(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    move-result-object p0

    .line 639
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->HELP_GUIDE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->RESET_SETTINGS:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    .line 642
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 643
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->item(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    goto :goto_1

    .line 646
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object p0

    return-object p0
.end method

.method private generateSettingItemExecutor(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;",
            "Lcom/sonyericsson/cameracommon/storage/Storage;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;"
        }
    .end annotation

    .line 660
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 661
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$view$setting$settingitem$SettingItem$Selectability:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->ordinal()I

    move-result p2

    aget p2, v1, p2

    packed-switch p2, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 704
    :pswitch_0
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/SettingUi$2;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$2;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V

    return-object p2

    .line 663
    :pswitch_1
    new-instance p2, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi$1;-><init>(Lcom/sonyericsson/android/camera/view/setting/SettingUi;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private generateSettingMenuItemAdapter(Landroid/content/Context;[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;
    .locals 5

    .line 594
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mIsDeviceInSecurityLock:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;Z)V

    .line 597
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p2, v2

    .line 598
    invoke-direct {p0, p1, v3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isVisible(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 599
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateParameterKeyItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getDialogItemType(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 3

    .line 1115
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x3

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    return v2

    :pswitch_2
    const/4 p0, 0x1

    return p0

    :pswitch_3
    return v1

    .line 1126
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    array-length p0, p0

    const/4 p1, 0x2

    if-le p0, p1, :cond_0

    return v2

    :cond_0
    return v1

    :pswitch_5
    return v2

    :pswitch_6
    return v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_5
    .end packed-switch
.end method

.method private getDialogItemTypeForSecondLayer(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 5

    .line 1174
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    const/16 v3, 0xc

    if-eq v0, v3, :cond_3

    const/16 v3, 0x10

    const/4 v4, 0x4

    if-eq v0, v3, :cond_1

    const/4 p1, 0x5

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    return v2

    :pswitch_0
    return v1

    :pswitch_1
    return v4

    :pswitch_2
    return p1

    .line 1212
    :pswitch_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-eq p0, v0, :cond_0

    return v2

    :cond_0
    return p1

    .line 1185
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    array-length p0, p0

    if-le p0, v2, :cond_2

    return v2

    :cond_2
    return v4

    :cond_3
    :pswitch_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static getImageQualityControlDefaultValue(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 3

    .line 1058
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1075
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined default value for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :pswitch_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;->AF:Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;

    return-object p0

    .line 1069
    :pswitch_1
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;

    return-object p0

    .line 1066
    :pswitch_2
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Ev;->ZERO:Lcom/sonyericsson/android/camera/configuration/parameters/Ev;

    return-object p0

    .line 1063
    :pswitch_3
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/Iso;->ISO_AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/Iso;

    return-object p0

    .line 1060
    :pswitch_4
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;->AUTO:Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getImageQualityControlTabDescription(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)I
    .locals 3

    .line 1088
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined description for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const p0, 0x7f0f006f

    return p0

    :pswitch_1
    const p0, 0x7f0f0074

    return p0

    :pswitch_2
    const p0, 0x7f0f0069

    return p0

    :pswitch_3
    const p0, 0x7f0f0070

    return p0

    :pswitch_4
    const p0, 0x7f0f0075

    return p0

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0

    .line 1313
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    return-object p0
.end method

.method private getSelectedSettingItem(Ljava/util/List;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;"
        }
    .end annotation

    .line 832
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 833
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The specified list is empty."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 835
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 836
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->isSelectable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 840
    :cond_2
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_3

    const-string p0, "The specified list doesn\'t have a selected item."

    .line 841
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 0

    .line 586
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSelectableKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z
    .locals 3

    .line 725
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v0

    .line 727
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_HDR:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    .line 741
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p0, p1, :cond_2

    goto :goto_1

    .line 729
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 730
    invoke-interface {p1, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 731
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    if-ne p1, v1, :cond_2

    .line 732
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    .line 733
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->STANDARD_SLOW_MOTION:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq p0, v1, :cond_3

    .line 734
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperSlowFullHdSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :cond_3
    :goto_1
    return v2
.end method

.method public static isSelectableValues(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/android/camera/parameter/Parameters;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Z
    .locals 3

    .line 1012
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x10

    if-eq v0, v2, :cond_0

    move p1, v1

    goto :goto_0

    .line 1014
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoSize()Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move-result-object v0

    .line 1015
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/parameter/Parameters;->getVideoHdr()Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    move-result-object v2

    .line 1016
    iget-object p1, p1, Lcom/sonyericsson/android/camera/parameter/Parameters;->capturingMode:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-static {p2, p1, v0, v2}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isVideoSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p1

    .line 1022
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private static isVideoSelectableValues(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z
    .locals 2

    .line 1036
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->is4KVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;->H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoCodec;

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-eq p3, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1041
    :cond_0
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 1042
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    if-ne v1, v0, :cond_1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    check-cast p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 1044
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p1

    .line 1045
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isValueEnabled(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Z

    move-result p0

    return p0

    .line 1047
    :cond_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isSelectable()Z

    move-result p0

    return p0
.end method

.method private isVisible(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z
    .locals 4

    .line 760
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 762
    sget-object v1, Lcom/sonyericsson/android/camera/view/setting/SettingUi$3;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    .line 809
    :pswitch_0
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->isCommon()Z

    move-result p1

    if-eqz p1, :cond_4

    return v3

    .line 803
    :pswitch_1
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isHighSensitivityFusionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    return p0

    .line 796
    :pswitch_2
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isVideo()Z

    move-result p0

    if-nez p0, :cond_0

    .line 797
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isDistortionCorrectionSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v3

    :cond_0
    return v2

    .line 784
    :pswitch_3
    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 785
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isManualBurstSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v3

    .line 776
    :pswitch_4
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isLiftTriggerSupported()Z

    move-result p0

    return p0

    .line 778
    :pswitch_5
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object p0

    sget-object p2, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-ne p0, p2, :cond_3

    return v2

    .line 781
    :cond_3
    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->shouldStorageForceInternal(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    .line 773
    :pswitch_6
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isForceSound(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p0

    xor-int/2addr p0, v3

    return p0

    .line 806
    :pswitch_7
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSideTouchSupported()Z

    move-result p0

    return p0

    .line 768
    :pswitch_8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShotVideo()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p1, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p1, v0, :cond_4

    return v2

    :pswitch_9
    return v2

    .line 816
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p0, p2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->getOptions(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)[Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p0

    array-length p0, p0

    if-gt p0, v3, :cond_5

    return v2

    .line 820
    :cond_5
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getSelectability()Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    move-result-object p0

    .line 821
    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-eq p0, p1, :cond_6

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->UNAVAILABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    if-ne p0, p1, :cond_7

    :cond_6
    move v2, v3

    :cond_7
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private openSecondLayerDialog(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;Ljava/lang/Object;)V
    .locals 0

    .line 496
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->openSecondLayerDialog(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;Ljava/lang/Object;)Z

    return-void
.end method

.method private openSettingMenuDialog(ZZ)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;
    .locals 6

    .line 332
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mStateMachine:Lcom/sonyericsson/android/camera/controller/StateMachine;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getCurrentCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 333
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingMenuList:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList;->get(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Z)Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;

    move-result-object v1

    .line 335
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 337
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->hasExtraOutputPath()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->updateSaveDestinationSelectability(Z)V

    .line 340
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 343
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackgroundWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 344
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackgroundHeight()I

    move-result v4

    .line 341
    invoke-static {v2, v3, v4, p2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->createSettingMenuDialog(Landroid/content/Context;IIZ)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object p2

    .line 348
    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->priorityHigh:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateSettingMenuItemAdapter(Landroid/content/Context;[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object v3

    .line 349
    iget-object v4, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->priorityHigh:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget v4, v4, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->titleResource:I

    invoke-direct {p0, v4}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4, v3}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->addPanel(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    .line 350
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingMenuAdapter:Ljava/util/Map;

    iget-object v5, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->priorityHigh:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v5, v5, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->common:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 353
    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->common:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-direct {p0, v2, v3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateSettingMenuItemAdapter(Landroid/content/Context;[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object v2

    .line 354
    iget-object v3, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->common:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget v3, v3, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->titleResource:I

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3, v2}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->addPanel(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    .line 355
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingMenuAdapter:Ljava/util/Map;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Group;->common:Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/setting/ContextualSettingList$Category;->keys:[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v1, p2, v0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->openMenuDialog(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;Ljava/lang/Object;Z)Z

    move-result p1

    if-nez p1, :cond_1

    .line 361
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs(Z)V

    :cond_1
    return-object p2
.end method

.method private setVideoStabilizerByVideoHdrChanged()V
    .locals 5

    .line 1331
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_STABILIZER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    .line 1332
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->CAPTURING_MODE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    .line 1333
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->getCameraId()Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    move-result-object v1

    .line 1334
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->VIDEO_SIZE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 1335
    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-eq v0, v3, :cond_1

    .line 1336
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isSteadyShotSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1338
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->isIntelligentActiveSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1339
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    goto :goto_0

    .line 1341
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->STEADY_SHOT:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    :goto_0
    const/4 v1, 0x1

    .line 1343
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SteadyShot -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1344
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {p0, v0}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    :cond_1
    return-void
.end method

.method private updateSaveDestinationSelectability(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1321
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->FIXED:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    goto :goto_0

    .line 1323
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->DESTINATION_TO_SAVE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;->SELECTABLE:Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->setSelectability(Lcom/sonyericsson/android/camera/configuration/UserSettingSelectability;)V

    :goto_0
    return-void
.end method

.method private updateTouchCapture(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->updateTouchCapture(Lcom/sonyericsson/android/camera/configuration/parameters/TouchCapture;)V

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSetting:Lcom/sonyericsson/android/camera/setting/UserSettings;

    invoke-interface {v0, p1}, Lcom/sonyericsson/android/camera/setting/UserSettings;->set(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V

    .line 295
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mViewFinder:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->commit()V

    return-void
.end method


# virtual methods
.method public closeDialogs()Z
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->isDialogOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeAllSettingDialogs(Z)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public openModeSelectDialog(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;)V
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->openModeSelectorDialog(Lcom/sonyericsson/android/camera/view/modeselector/ModeLoader;Lcom/sonyericsson/android/camera/view/selectabledialog/ModeSelector$OnModeSelectListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 378
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    :cond_0
    return-void
.end method

.method public openMonochromeDialog(ZILcom/sonyericsson/android/camera/view/modeselector/Mode;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 392
    invoke-direct {p0, p1, p3}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateMonochromeAdpter(ZLcom/sonyericsson/android/camera/view/modeselector/Mode;)Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    move-result-object p0

    .line 391
    invoke-virtual {v0, p0, p2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->openMonochromeDialog(Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;I)Z

    return-void
.end method

.method public openSettingMenuDialog()V
    .locals 1

    const/4 v0, 0x0

    .line 303
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->openSettingMenuDialog(ZZ)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    return-void
.end method

.method public openShortcutSettingDialog(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 4

    .line 503
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mDialogItemFactory:Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mIsDeviceInSecurityLock:Z

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingDialogItemFactory;Z)V

    .line 506
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateChildrenSettingItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Ljava/util/List;

    move-result-object v1

    .line 507
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 508
    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 511
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 512
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackgroundWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    .line 513
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->getBackgroundHeight()I

    move-result v3

    .line 511
    invoke-static {v1, p1, v2, v3}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingDialogFactory;->createShortcutDialog(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;II)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 515
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->getTitleTextId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->addPanel(Ljava/lang/String;Landroid/widget/ArrayAdapter;)V

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->openShortcutDialog(Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 520
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->closeCurrentDialog()Z

    :cond_1
    return-void
.end method

.method public openUserSelectMenu(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)V
    .locals 1

    const/4 v0, 0x1

    .line 312
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->openSettingMenuDialog(ZZ)Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/selectabledialog/SettingMenu;->select(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setDeviceInSecurityLock(Z)V
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mIsDeviceInSecurityLock:Z

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 0

    .line 537
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingDialogStack:Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack;->setUiOrientation(I)V

    return-void
.end method

.method public updateSettingMenu(Z)V
    .locals 7

    .line 545
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "updateSettingMenu() is called"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingMenuAdapter:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;

    .line 549
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->clear()V

    .line 551
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mSettingMenuAdapter:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 552
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0, v6, v5}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->isVisible(Landroid/content/Context;Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 553
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v6}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/view/setting/SettingUi;->generateParameterKeyItem(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->add(Ljava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 556
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->notifyDataSetInvalidated()V

    goto :goto_1

    .line 558
    :cond_3
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/setting/dialog/SettingAdapter;->notifyDataSetChanged()V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
