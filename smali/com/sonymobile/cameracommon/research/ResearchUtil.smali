.class public Lcom/sonymobile/cameracommon/research/ResearchUtil;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/research/ResearchUtil$setAssistSelfTimerTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$XperiaTipsLaunchTrigger;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordBySideSenseTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    }
.end annotation


# static fields
.field private static final DUAL_CAMERA_EFFECT_USAGE_DATA_CONTENT_URI:Ljava/lang/String; = "content://com.sonymobile.addoncamera.dualcameraeffect.provider/UsageData"

.field private static final PORTRAIT_SELFIE_USAGE_DATA_CONTENT_URI:Ljava/lang/String; = "content://com.sonymobile.addoncamera.beautyportrait.provider/UsageData"

.field public static final TAG:Ljava/lang/String; = "ResearchUtil"

.field private static final sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# instance fields
.field private mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

.field private mBackWorker:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mCountRecordResume:I

.field private mCountRecordSnapshot:I

.field private mIsFailedToOpenCamera:Z

.field private mIsViewEventSent:Z

.field private mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

.field private mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

.field private mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 185
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    .line 183
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    .line 187
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 189
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    .line 194
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z

    .line 196
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    .line 198
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    .line 201
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 1065
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    .line 1420
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    .line 205
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    const-string v0, "R-Thread"

    const/4 v1, 0x1

    .line 206
    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Landroid/content/Context;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return p0
.end method

.method static synthetic access$2702(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return p1
.end method

.method static synthetic access$2708(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .locals 2

    .line 57
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return v0
.end method

.method static synthetic access$2800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return p0
.end method

.method static synthetic access$2802(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return p1
.end method

.method static synthetic access$2808(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .locals 2

    .line 57
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return v0
.end method

.method static synthetic access$2900(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    return-object p0
.end method

.method static synthetic access$802(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    return-object p1
.end method

.method static synthetic access$900(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    return-object p0
.end method

.method static synthetic access$902(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    return-object p1
.end method

.method public static getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .locals 1

    .line 214
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    return-object v0
.end method

.method private static getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 744
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Other"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 750
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->getVideoSize(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const-string p0, "_V0"

    goto :goto_0

    :pswitch_0
    const-string p0, "_V10"

    goto :goto_0

    :pswitch_1
    const-string p0, "_V9"

    goto :goto_0

    :pswitch_2
    const-string p0, "_V8"

    goto :goto_0

    :pswitch_3
    const-string p0, "_V7"

    goto :goto_0

    :pswitch_4
    const-string p0, "_V6"

    goto :goto_0

    :pswitch_5
    const-string p0, "_V5"

    goto :goto_0

    :pswitch_6
    const-string p0, "_V4"

    goto :goto_0

    :pswitch_7
    const-string p0, "_V3"

    goto :goto_0

    :pswitch_8
    const-string p0, "_V2"

    :goto_0
    return-object p0

    :cond_1
    :goto_1
    const-string p0, "_V0"

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

.method private sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8

    .line 904
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {p0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1629
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setTime(ZJ)V
    .locals 2

    .line 1458
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearFaceNum()V
    .locals 3

    .line 1211
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearTemporarySettingValues()V
    .locals 3

    .line 1072
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public incrementCountRecordResume()V
    .locals 3

    .line 790
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public incrementCountSnapshotInRecording()V
    .locals 3

    .line 805
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    .line 223
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 226
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    .line 229
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;-><init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    .line 325
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p0, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "OnDestroyTask is Timeout."

    .line 331
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v0, "OnDestroyTask failed."

    .line 329
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    const-string v0, "OnDestroyTask has been interrupted."

    .line 327
    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    :goto_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "onDestroy()"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPause(Z)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 285
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "onPause()"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onResume(Z)V
    .locals 3

    .line 244
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendAutoPowerOffEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V
    .locals 2

    .line 1562
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->AUTO_POWEROFF:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendCameraNotAvailableEvent()V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V
    .locals 1

    .line 439
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object p2

    .line 441
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendDualCameraEffectEvent(Landroid/content/Context;)V
    .locals 3

    .line 1833
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;

    const-string v1, "content://com.sonymobile.addoncamera.dualcameraeffect.provider/UsageData"

    .line 1834
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    .line 1833
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 872
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;J)V

    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;J)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v3, v0

    goto :goto_0

    .line 884
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_0
    if-nez p3, :cond_1

    :goto_1
    move-object v4, v0

    goto :goto_2

    .line 885
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :goto_2
    move-object v1, p0

    move-object v2, p1

    move-wide v5, p4

    .line 887
    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 898
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1759
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {p0, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1667
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1721
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendLowBatteryEvent(ZZ)V
    .locals 1

    .line 452
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    move-result-object p1

    .line 453
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object p2

    .line 455
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->LOWBATTERY_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendPerformanceData(Ljava/lang/String;JZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 1573
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method

.method public sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V
    .locals 8

    .line 1587
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;-><init>(Ljava/lang/String;JZLjava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {p0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendPortraitSelfieEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1841
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;

    const-string v1, "content://com.sonymobile.addoncamera.beautyportrait.provider/UsageData"

    .line 1842
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    .line 1841
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendPredictiveLaunchEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V
    .locals 2

    .line 1554
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 614
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V

    return-void
.end method

.method public sendRecordingEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;",
            "IZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v9, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSelfTimerCancelledEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;)V
    .locals 2

    .line 1545
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SELFTIMER_CANCELLED:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendSettingsCommon(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 3

    .line 512
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSettingsCommon(Ljava/lang/String;)V
    .locals 3

    .line 561
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;J)V
    .locals 7

    .line 1799
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;JLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {p0, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSlowMotionEvent(Ljava/lang/String;I)V
    .locals 1

    .line 468
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendThermalEvent(ZZ)V
    .locals 1

    .line 425
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$ThermalMitigation;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ThermalMitigation;

    move-result-object p1

    .line 426
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object p2

    .line 428
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendView(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAssistSelfTimer(I)V
    .locals 2

    .line 1906
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$setAssistSelfTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$setAssistSelfTimerTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCameraNotAvailableFailedToOpen()V
    .locals 3

    .line 476
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V
    .locals 2

    .line 1288
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContinuousCapture()V
    .locals 3

    .line 1427
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFaceNum(I)V
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLaunchBy(Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;)V
    .locals 0

    .line 405
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchCondition$LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setLaunchedBy(Ljava/lang/String;)V

    return-void
.end method

.method public setManualBurstCount(I)V
    .locals 2

    .line 1257
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPredictiveCaptureNum(I)V
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRecordBySideSense(Z)V
    .locals 2

    .line 1355
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordBySideSenseTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordBySideSenseTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRecordingMaxFaceNum(I)V
    .locals 2

    .line 1182
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSideSensePosition(II)V
    .locals 2

    .line 1320
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTimeAfDone()V
    .locals 3

    .line 1444
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 1445
    invoke-direct {p0, v2, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTime(ZJ)V

    return-void
.end method

.method public setTimeCaptureStart()V
    .locals 3

    .line 1452
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1453
    invoke-direct {p0, v2, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTime(ZJ)V

    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V
    .locals 1

    const/4 v0, 0x0

    .line 821
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;",
            "Ljava/util/List<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .locals 0

    .line 414
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method

.method public setViewerLaunched()V
    .locals 3

    .line 587
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 2

    .line 1089
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
