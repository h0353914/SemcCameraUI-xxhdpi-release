.class public Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.super Ljava/lang/Object;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;,
        Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "LocalResearchUtil"

.field private static final sInstance:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;


# instance fields
.field private final mAllSettingsPhoto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private final mAllSettingsVideo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

.field private mCurrentPageIndex:I

.field private mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

.field private mIsFeatureListType:Z

.field private mIsHeated:Z

.field private mIsReadMore:Z

.field private mModeChangeMethod:Ljava/lang/String;

.field private mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

.field private mPerformanceDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictiveLaunchState:Z

.field private mRecognizedScene:Ljava/lang/String;

.field private mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

.field private mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

.field private final mSettingsPhoto:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSettingsVideo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

.field private mWizardStartTime:J


# direct methods
.method static bridge synthetic -$$Nest$mgetBatteryLevel(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getBatteryLevel()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misHeated(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->isHeated()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sInstance:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsPhoto:Ljava/util/Map;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 58
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 60
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    .line 62
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    .line 66
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    .line 68
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    .line 71
    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    .line 73
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    .line 75
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    const-wide/16 v2, 0x0

    .line 79
    iput-wide v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    .line 80
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    .line 81
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    const/4 v0, -0x1

    .line 82
    iput v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 83
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    return-void
.end method

.method private getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation

    .line 784
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 789
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    goto :goto_0

    .line 786
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method private getBatteryLevel()Ljava/lang/String;
    .locals 0

    .line 1075
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    if-eqz p0, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;->getBatteryLevel()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    .line 1078
    :goto_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCommonSettings(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 130
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 131
    sget-object v2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 142
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getCurrentSetting(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 3

    .line 800
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    filled-new-array {v0, v1}, [Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 803
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 805
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-eqz v1, :cond_0

    :cond_1
    return-object v1
.end method

.method private getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;
    .locals 2

    .line 619
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    if-nez v0, :cond_0

    .line 620
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    .line 622
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    return-object p0
.end method

.method public static getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
    .locals 1

    .line 107
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sInstance:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    return-object v0
.end method

.method private getModeName(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;
    .locals 0

    .line 452
    sget-object p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-eq p0, p1, :cond_0

    .line 460
    const-string p0, ""

    return-object p0

    .line 458
    :cond_0
    const-string p0, "EVERYONE_MODE"

    return-object p0

    .line 456
    :cond_1
    const-string p0, "BOKEH_EFFECT"

    return-object p0

    .line 454
    :cond_2
    const-string p0, "PORTRAIT_SELFIE"

    return-object p0
.end method

.method private getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    if-nez v0, :cond_0

    .line 584
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    .line 586
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mObjectTrackingValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    return-object p0
.end method

.method private getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;
    .locals 1

    .line 1058
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    if-nez v0, :cond_0

    .line 1060
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;-><init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V

    .line 1061
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPerformanceDataMap:Ljava/util/Map;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;
    .locals 1

    .line 156
    sget-object p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v0

    aget p0, p0, v0

    packed-switch p0, :pswitch_data_0

    .line 185
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "getScreen() : Not supported : "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :pswitch_0
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_1

    .line 179
    :pswitch_1
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_1

    .line 176
    :pswitch_2
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_WIDE:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_1

    .line 173
    :pswitch_3
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->VIDEO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_1

    .line 170
    :pswitch_4
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_1

    .line 167
    :pswitch_5
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_FRONT:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_1

    .line 164
    :pswitch_6
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->MANUAL_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_1

    .line 161
    :pswitch_7
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_WIDE:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_1

    .line 158
    :pswitch_8
    sget-object p0, Lcom/sonymobile/cameracommon/research/parameters/Screen;->SUPERIOR_AUTO_MAIN:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;
    .locals 1

    .line 518
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 528
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    if-nez p1, :cond_1

    .line 529
    new-instance p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 531
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-object p0

    .line 521
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    if-nez p1, :cond_3

    .line 522
    new-instance p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 524
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-object p0
.end method

.method private getSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            ")",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;"
        }
    .end annotation

    .line 339
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$parameters$Event$Category:[I

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 344
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    goto :goto_0

    .line 341
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsPhoto:Ljava/util/Map;

    :goto_0
    return-object p0
.end method

.method private isHeated()Z
    .locals 0

    .line 1054
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    return p0
.end method

.method private sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .locals 4

    .line 381
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 386
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 390
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 391
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 392
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    .line 393
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 396
    :cond_2
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v3

    .line 397
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 396
    invoke-virtual {v3, p1, v2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 401
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :goto_1
    return-void
.end method

.method private setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .locals 1

    .line 768
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 771
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 775
    :cond_0
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 777
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            ")V"
        }
    .end annotation

    .line 354
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 355
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSettingsPhotoVideo() : Category = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 357
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "newValues    : Basis = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmBasis(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", Change = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 361
    :cond_1
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p0

    if-nez p0, :cond_2

    return-void

    .line 366
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 367
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    .line 368
    invoke-static {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmBasis(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 369
    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 371
    :cond_3
    invoke-static {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fputmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)V

    .line 372
    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 375
    :cond_4
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public clearAllSettings()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getCommonSettings(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 120
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 122
    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsPhoto:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 123
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mAllSettingsVideo:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public clearRecognizedScene()V
    .locals 1

    .line 819
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->AUTO:Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraParameterConverter$SceneMode;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    return-void
.end method

.method public clearSemiAutoSettingValues()V
    .locals 1

    const/4 v0, 0x0

    .line 550
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesPhoto:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    .line 551
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSemiAutoSettingValuesVideo:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    return-void
.end method

.method public clearSettings()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsPhoto:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 113
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mSettingsVideo:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearTemporarySettingValues()V
    .locals 0

    .line 657
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearSemiAutoSettingValues()V

    .line 658
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->clearRecognizedScene()V

    .line 659
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->clearTemporarySettingValues()V

    return-void
.end method

.method public closeSetupWizard()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1142
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    const/4 v0, -0x1

    .line 1143
    iput v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    const/4 v0, 0x0

    .line 1144
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    const/4 v0, 0x0

    .line 1145
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    .line 1146
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    return-void
.end method

.method public countUpHandSignLostNum()V
    .locals 0

    .line 653
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->countUpHandSignLostNum()V

    return-void
.end method

.method public getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 978
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 980
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 982
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 983
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 985
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;
    .locals 0

    .line 427
    sget-object p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    .line 447
    const-string p0, ""

    return-object p0

    .line 441
    :pswitch_0
    const-string p0, "SLOW_MOTION"

    return-object p0

    .line 439
    :pswitch_1
    const-string p0, "VIDEO_FRONT"

    return-object p0

    .line 445
    :pswitch_2
    const-string p0, "VIDEO_WIDE"

    return-object p0

    .line 437
    :pswitch_3
    const-string p0, "VIDEO_MAIN"

    return-object p0

    .line 431
    :pswitch_4
    const-string p0, "MUNAUL_FRONT"

    return-object p0

    .line 435
    :pswitch_5
    const-string p0, "SUPERIOR_AUTO_FRONT"

    return-object p0

    .line 429
    :pswitch_6
    const-string p0, "MUNAUL_MAIN"

    return-object p0

    .line 443
    :pswitch_7
    const-string p0, "SUPERIOR_AUTO_WIDE"

    return-object p0

    .line 433
    :pswitch_8
    const-string p0, "SUPERIOR_AUTO_MAIN"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initSetupwizard(ZZ)V
    .locals 0

    .line 1122
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    .line 1123
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    return-void
.end method

.method public isMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Z
    .locals 0

    .line 1040
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p0

    .line 1041
    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->-$$Nest$misValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;)Z

    move-result p0

    return p0
.end method

.method public resetHandSignLostNum()V
    .locals 0

    .line 639
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->resetHandSignLostNum()V

    return-void
.end method

.method public sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 422
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 1

    .line 411
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    .line 412
    invoke-virtual {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    .line 411
    invoke-virtual {v0, p1, p2, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventInternalModeChange(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)V
    .locals 1

    .line 417
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Ljava/lang/String;

    move-result-object p1

    .line 418
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getModeName(Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    .line 417
    invoke-virtual {v0, p1, p2, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEventSettings()V
    .locals 1

    .line 406
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 407
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendEventSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZ)V
    .locals 6

    .line 1093
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 1097
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1093
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V

    return-void
.end method

.method public sendSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V
    .locals 2

    .line 555
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object p0

    .line 556
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->hasChange()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->applyChange()V

    .line 558
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SEMI_AUTO:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 559
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->toString()Ljava/lang/String;

    move-result-object p0

    .line 558
    invoke-virtual {v0, p1, v1, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V
    .locals 5

    .line 1157
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->UNKNOWN:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 1158
    iput p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 1159
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    if-nez p1, :cond_0

    .line 1161
    const-string p0, "TutorialType is null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    return-void

    .line 1165
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;->ordinal()I

    move-result v1

    aget p1, p1, v1

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1380
    :pswitch_0
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_NIGHT_MODE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1377
    :pswitch_1
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_QR_DETECT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1374
    :pswitch_2
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_LENS_CORRECTION:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1371
    :pswitch_3
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_LEVEL:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1366
    :pswitch_4
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_BOKEH:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1363
    :pswitch_5
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_MONO:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1360
    :pswitch_6
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_LONG_SS:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1357
    :pswitch_7
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_BOKEH_CAMERAUI:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    :pswitch_8
    if-eqz p2, :cond_2

    if-eq p2, v3, :cond_1

    goto/16 :goto_0

    .line 1350
    :cond_1
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_ZOOM_CAMERA2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1347
    :cond_2
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_ZOOM_CAMERA1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    :pswitch_9
    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    goto/16 :goto_0

    .line 1338
    :cond_3
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_TRIPLE_CAMERA3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1335
    :cond_4
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_TRIPLE_CAMERA2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1332
    :cond_5
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_TRIPLE_CAMERA1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1327
    :pswitch_a
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SELFIE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1324
    :pswitch_b
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_HAND_SHUTTER:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    :pswitch_c
    if-eqz p2, :cond_8

    if-eq p2, v3, :cond_7

    if-eq p2, v2, :cond_6

    goto/16 :goto_0

    .line 1317
    :cond_6
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SLOW_MOTION3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1314
    :cond_7
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SLOW_MOTION2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1311
    :cond_8
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SLOW_MOTION1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    :pswitch_d
    if-eqz p2, :cond_c

    if-eq p2, v3, :cond_b

    if-eq p2, v2, :cond_a

    if-eq p2, v1, :cond_9

    goto/16 :goto_0

    .line 1302
    :cond_9
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA4:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1299
    :cond_a
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1296
    :cond_b
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1293
    :cond_c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_DUAL_CAMERA1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1288
    :pswitch_e
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_PORTRAIT_SELFIE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1285
    :pswitch_f
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1282
    :pswitch_10
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->FEATURE_PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    :pswitch_11
    if-eqz p2, :cond_e

    if-eq p2, v3, :cond_d

    goto/16 :goto_0

    .line 1275
    :cond_d
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1272
    :cond_e
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->VIDEO_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    :pswitch_12
    if-eqz p2, :cond_10

    if-eq p2, v3, :cond_f

    goto/16 :goto_0

    .line 1263
    :cond_f
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1260
    :cond_10
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->MANUAL_FUSION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    :pswitch_13
    if-eqz p2, :cond_13

    if-eq p2, v3, :cond_11

    goto/16 :goto_0

    .line 1247
    :cond_11
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_12

    .line 1248
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1250
    :cond_12
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1240
    :cond_13
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_14

    .line 1241
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto/16 :goto_0

    .line 1243
    :cond_14
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1231
    :pswitch_14
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsReadMore:Z

    if-eqz p1, :cond_15

    .line 1232
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1234
    :cond_15
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->ONE_SHOT_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    :pswitch_15
    if-eqz p2, :cond_18

    if-eq p2, v3, :cond_17

    if-eq p2, v2, :cond_16

    goto :goto_0

    .line 1224
    :cond_16
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1221
    :cond_17
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1218
    :cond_18
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->READMORE_SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    :pswitch_16
    if-eqz p2, :cond_1c

    if-eq p2, v3, :cond_1b

    if-eq p2, v2, :cond_1a

    if-eq p2, v1, :cond_19

    goto :goto_0

    .line 1209
    :cond_19
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD4:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1206
    :cond_1a
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD3:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1203
    :cond_1b
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1200
    :cond_1c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPER_SLOWMOTION_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1195
    :pswitch_17
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->HAND_SHUTTER_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1192
    :pswitch_18
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->EYE_POSITION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    :pswitch_19
    if-eqz p2, :cond_1e

    if-eq p2, v3, :cond_1d

    goto :goto_0

    .line 1185
    :cond_1d
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->TRIPLE_CAMERA_WIZARD2:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1182
    :cond_1e
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->TRIPLE_CAMERA_WIZARD1:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1177
    :pswitch_1a
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SUPERIOR_AUTO_FUSION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1174
    :pswitch_1b
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->SIDE_SENSING_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1170
    :pswitch_1c
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->PREDICTIVE_LAUNCH_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    goto :goto_0

    .line 1167
    :pswitch_1d
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->LOCATION_WIZARD:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;

    .line 1386
    :goto_0
    iget-wide p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_20

    .line 1387
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsFeatureListType:Z

    if-eqz p1, :cond_1f

    .line 1388
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 1389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    sub-long/2addr p2, v1

    .line 1388
    invoke-virtual {p1, v0, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendFeatureContentEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;J)V

    goto :goto_1

    .line 1391
    :cond_1f
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    .line 1392
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    sub-long/2addr v1, v3

    .line 1391
    invoke-virtual {p1, v0, p3, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;J)V

    .line 1394
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    :cond_20
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V
    .locals 2

    .line 1399
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iget v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    return-void
.end method

.method public sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 1

    .line 194
    sget-object v0, Lcom/sonyericsson/android/camera/LaunchTrigger;->VIDEO_EDITOR:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne p1, v0, :cond_0

    .line 195
    sget-object p1, Lcom/sonyericsson/android/camera/LaunchTrigger;->OTHER:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 197
    :cond_0
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method

.method public setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 666
    :cond_0
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    .line 668
    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x4

    packed-switch v1, :pswitch_data_0

    .line 761
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "setAllSettingsValue() : Not supported : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    if-eq p2, v4, :cond_2

    if-eq p2, v3, :cond_2

    if-eq p2, v2, :cond_1

    goto :goto_0

    .line 737
    :cond_1
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 734
    :cond_2
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 714
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x3

    if-eq p2, v0, :cond_4

    if-eq p2, v4, :cond_4

    if-eq p2, v3, :cond_4

    const/4 v0, 0x6

    if-eq p2, v0, :cond_3

    if-eq p2, v2, :cond_3

    const/16 v0, 0x9

    if-eq p2, v0, :cond_3

    goto :goto_0

    .line 724
    :cond_3
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 719
    :cond_4
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 708
    :pswitch_2
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 696
    :pswitch_3
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 756
    :pswitch_4
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 757
    sget-object p2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsPhotoVideo(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    :cond_5
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setBatteryChangedReceiver(Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;)V
    .locals 0

    .line 1067
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mBatteryChangedReceiver:Lcom/sonyericsson/cameracommon/systemmonitor/BatteryChangedReceiver;

    return-void
.end method

.method public setChangedBokehStrength(II)V
    .locals 1

    .line 1427
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    .line 1428
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    .line 1427
    const-string v0, "BLUR"

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChangedZoomAssistDetail(Ljava/lang/String;)V
    .locals 2

    .line 1432
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    const-string v0, "ZOOM_ASSIST_DETAIL"

    const-string v1, "NO_FRAME"

    invoke-virtual {p0, v0, v1, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V
    .locals 0

    .line 201
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V

    return-void
.end method

.method public setManualIqControlValueChange(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-ne p1, p2, :cond_1

    return-void

    .line 1410
    :cond_1
    invoke-interface {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object p0

    .line 1411
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_2

    const/16 v1, 0x19

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 1417
    :cond_2
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1418
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1417
    invoke-virtual {v0, p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setMeasurementInvalid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .locals 0

    .line 1029
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->setInvalid()V

    return-void
.end method

.method public setMeasurementThermal(Z)V
    .locals 0

    .line 1050
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mIsHeated:Z

    return-void
.end method

.method public setMeasurementValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .locals 0

    .line 1020
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->setValid()V

    return-void
.end method

.method public setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V
    .locals 0

    .line 465
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mModeChangeMethod:Ljava/lang/String;

    return-void
.end method

.method public setObjectTrackingTarget(Z)V
    .locals 0

    .line 590
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->setObjectTrackingTarget(Z)V

    return-void
.end method

.method public setPredictiveLaunchState(Z)V
    .locals 0

    .line 631
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    return-void
.end method

.method public setRecognizedScene(Ljava/lang/String;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    return-void
.end method

.method public setSemiAutoSettingAmberBlueValue(I)V
    .locals 1

    .line 540
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateAmberBlue(I)V

    .line 541
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateAmberBlue(I)V

    return-void
.end method

.method public setSemiAutoSettingBrightnessValue(I)V
    .locals 1

    .line 545
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateBrightness(I)V

    .line 546
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->updateBrightness(I)V

    return-void
.end method

.method public setSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 5

    .line 217
    invoke-interface {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;->getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    if-nez p1, :cond_0

    .line 219
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getCurrentSetting(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object p1

    .line 222
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-direct {v1, p1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->hasChange()Z

    move-result p1

    if-nez p1, :cond_2

    .line 226
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const-string/jumbo p0, "setSettingsValue() : Not changed."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void

    .line 230
    :cond_2
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$UserSettingKey:[I

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x8

    const/4 v2, 0x5

    const/4 v3, 0x4

    packed-switch p1, :pswitch_data_0

    .line 323
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setSettingsValue() : Not supported : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto/16 :goto_1

    .line 293
    :pswitch_0
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v3, :cond_4

    if-eq p1, v2, :cond_4

    if-eq p1, p2, :cond_3

    goto :goto_0

    .line 299
    :cond_3
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 296
    :cond_4
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 276
    :pswitch_1
    sget-object p1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$CapturingMode:[I

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->ordinal()I

    move-result v4

    aget p1, p1, v4

    const/4 v4, 0x1

    if-eq p1, v4, :cond_6

    const/4 v4, 0x3

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_6

    const/4 v2, 0x6

    if-eq p1, v2, :cond_5

    if-eq p1, p2, :cond_5

    const/16 p2, 0x9

    if-eq p1, p2, :cond_5

    goto :goto_0

    .line 286
    :cond_5
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 281
    :cond_6
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 270
    :pswitch_2
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    goto :goto_0

    .line 258
    :pswitch_3
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-direct {p0, v1, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setSettingsPhotoVideo(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)V

    .line 329
    :goto_0
    :pswitch_4
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmBasis(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 330
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 329
    invoke-virtual {p1, p2, v0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public setSettingsValue(Lcom/sonyericsson/android/camera/setting/UserSettings;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 4

    .line 1107
    invoke-static {}, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->values()[Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1108
    invoke-interface {p1, v3}, Lcom/sonyericsson/android/camera/setting/UserSettings;->get(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1110
    invoke-virtual {p0, v3, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setAllSettingsValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 4

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 828
    iget-object v2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mRecognizedScene:Ljava/lang/String;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getRecognizedSceneParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez v2, :cond_0

    .line 833
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/Flash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/Flash;

    .line 835
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFlashParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_FLASH:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez v2, :cond_1

    .line 840
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/FrontFlash;

    .line 842
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFrontFlashParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->SELF_TIMER:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez v2, :cond_2

    .line 847
    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SelfTimer;

    .line 849
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getSelfTimerParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->isFront()Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 854
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->FRONT_ANGLE:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez p2, :cond_3

    .line 856
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;->SUPER_WIDE:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    .line 858
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 860
    :cond_4
    const-string p2, "INVALID"

    .line 862
    :goto_0
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFrontAngleParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 865
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getSemiAutoSettingValues(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 867
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->isEnabled()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getSemiAutoParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_5
    iget-object p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mGestureShutterValues:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    if-eqz p2, :cond_6

    .line 873
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 877
    :cond_6
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMap(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p2

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/UserSettingKey;->OBJECT_TRACKING:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    if-nez p2, :cond_7

    .line 879
    sget-object p2, Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/ObjectTracking;

    .line 881
    :cond_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getObjectTrackingValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->getParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mPredictiveLaunchState:Z

    if-eqz p2, :cond_8

    .line 885
    const-string p2, "True"

    goto :goto_1

    :cond_8
    const-string p2, "False"

    .line 884
    :goto_1
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getPredictiveLaunchParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 888
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getAllSettingsMapString(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;)Ljava/util/Map;

    move-result-object p0

    .line 887
    invoke-virtual {p2, p1, v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public setView(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 1

    .line 205
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getScreen(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Lcom/sonymobile/cameracommon/research/parameters/Screen;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method

.method public startHandSignLostNumCounting()V
    .locals 0

    .line 646
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getGestureShutterValues()Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->startHandSignLostNumCounting()V

    return-void
.end method

.method public startMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .locals 0

    .line 998
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->start()V

    return-void
.end method

.method public startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V
    .locals 2

    .line 1133
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mWizardStartTime:J

    .line 1134
    iput p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mCurrentPageIndex:I

    .line 1135
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->mTutorialType:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    return-void
.end method

.method public stopMeasurement(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .locals 0

    .line 1007
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getPerformanceData(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;

    move-result-object p0

    .line 1008
    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->-$$Nest$misValid(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1009
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->stop()V

    .line 1011
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->clear()V

    return-void
.end method
