.class public Lcom/sonymobile/cameracommon/research/ResearchUtil;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialLongTapEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordBySideSenseTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetEyeDetectedTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetHdrRequiredTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetNightAvailableTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearAutoShutterSpeedTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$setFocusEyeTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$setAssistSelfTimerTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendReadQrCodeEventTask;,
        Lcom/sonymobile/cameracommon/research/ResearchUtil$sendTransitionQrCodeEventTask;
    }
.end annotation


# static fields
.field private static final DUAL_CAMERA_EFFECT_USAGE_DATA_CONTENT_URI:Ljava/lang/String; = "content://com.sonymobile.addoncamera.dualcameraeffect.provider/UsageData"

.field private static final ODM_DUAL_CAMERA_EFFECT_USAGE_DATA_CONTENT_URI:Ljava/lang/String; = "content://com.sonymobile.addoncamera.bokeh.provider/UsageData"

.field private static final PORTRAIT_SELFIE_USAGE_DATA_CONTENT_URI:Ljava/lang/String; = "content://com.sonymobile.addoncamera.beautyportrait.provider/UsageData"

.field public static final TAG:Ljava/lang/String; = "ResearchUtil"

.field private static mIsRecording:Z

.field private static mZoomTimesInRec:I

.field private static mZoomTrigger:Ljava/lang/String;

.field private static final sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# instance fields
.field private isDeleteMediaFile:Z

.field private mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

.field private mBackWorker:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field private mCountRecordResume:I

.field private mCountRecordSnapshot:I

.field private mIsFailedToOpenCamera:Z

.field private mIsTempThumbnailTransition:Z

.field private mIsUpdateFlashIndicator:Z

.field private mIsViewEventSent:Z

.field private mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

.field private mTempThumbnailClickNum:I

.field private mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

.field private mThumbnailTransitionEndTime:J

.field private mThumbnailTransitionStartTime:J

.field private mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

.field private preZoomRatio:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmAfDoneKeepingTimeHolder(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountRecordResume(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .locals 0

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountRecordSnapshot(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .locals 0

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFailedToOpenCamera(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsUpdateFlashIndicator(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsUpdateFlashIndicator:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsViewEventSent(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPanoramaInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTempThumbnailClickNum(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I
    .locals 0

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTempThumbnailClickNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUserOperationInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetpreZoomRatio(Lcom/sonymobile/cameracommon/research/ResearchUtil;)F
    .locals 0

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->preZoomRatio:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAfDoneKeepingTimeHolder(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCountRecordResume(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V
    .locals 0

    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCountRecordSnapshot(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V
    .locals 0

    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsFailedToOpenCamera(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsUpdateFlashIndicator(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsUpdateFlashIndicator:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsViewEventSent(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPanoramaInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmUserOperationInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputpreZoomRatio(Lcom/sonymobile/cameracommon/research/ResearchUtil;F)V
    .locals 0

    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->preZoomRatio:F

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEventAllSettings(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmZoomTimesInRec()I
    .locals 1

    sget v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTimesInRec:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmZoomTrigger()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTrigger:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsRecording(Z)V
    .locals 0

    sput-boolean p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsRecording:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmZoomTimesInRec(I)V
    .locals 0

    sput p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTimesInRec:I

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmZoomTrigger(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTrigger:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 199
    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;-><init>()V

    sput-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mUserOperationInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    .line 197
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mPanoramaInfo:Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    .line 201
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 203
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsViewEventSent:Z

    .line 208
    iput-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsFailedToOpenCamera:Z

    .line 210
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordResume:I

    .line 212
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mCountRecordSnapshot:I

    .line 215
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    .line 1128
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTemporarySettingValues:Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    const/4 v1, 0x0

    .line 1150
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->preZoomRatio:F

    .line 1729
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mAfDoneKeepingTimeHolder:Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    .line 220
    const-string v0, "R-Thread"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/util/ThreadUtil;->buildExecutor(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;
    .locals 1

    .line 228
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sInstance:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    return-object v0
.end method

.method private static getVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 754
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "_V0"

    if-nez v0, :cond_1

    const-string v0, "Other"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 760
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$1;->$SwitchMap$com$sonymobile$cameracommon$research$ResearchUtil$VideoSize:[I

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->getVideoSize(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$VideoSize;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 787
    :pswitch_0
    const-string v1, "_V10"

    goto :goto_0

    .line 784
    :pswitch_1
    const-string v1, "_V9"

    goto :goto_0

    .line 781
    :pswitch_2
    const-string v1, "_V8"

    goto :goto_0

    .line 778
    :pswitch_3
    const-string v1, "_V7"

    goto :goto_0

    .line 775
    :pswitch_4
    const-string v1, "_V6"

    goto :goto_0

    .line 772
    :pswitch_5
    const-string v1, "_V5"

    goto :goto_0

    .line 769
    :pswitch_6
    const-string v1, "_V4"

    goto :goto_0

    .line 766
    :pswitch_7
    const-string v1, "_V3"

    goto :goto_0

    .line 763
    :pswitch_8
    const-string v1, "_V2"

    :cond_1
    :goto_0
    return-object v1

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

    .line 914
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask-IA;)V

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

    .line 1888
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask-IA;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setTime(ZJ)V
    .locals 2

    .line 1767
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZJ)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public clearAutoShutterSpeed()V
    .locals 3

    .line 1676
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearAutoShutterSpeedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearAutoShutterSpeedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearAutoShutterSpeedTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearFaceNum()V
    .locals 3

    .line 1342
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearFaceNumTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearTempThumbnailClickNum()V
    .locals 1

    const/4 v0, 0x0

    .line 2451
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTempThumbnailClickNum:I

    return-void
.end method

.method public clearTemporarySettingValues()V
    .locals 3

    .line 1135
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public deleteMediaFile(Z)V
    .locals 0

    .line 2373
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->isDeleteMediaFile:Z

    return-void
.end method

.method public getThumbnailStatus()Z
    .locals 0

    .line 2421
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsTempThumbnailTransition:Z

    return p0
.end method

.method public getZoomTrigger()Ljava/lang/String;
    .locals 0

    .line 1195
    sget-object p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTrigger:Ljava/lang/String;

    return-object p0
.end method

.method public incrementCountRecordResume()V
    .locals 3

    .line 800
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public incrementCountSnapshotInRecording()V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .locals 1

    .line 237
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onCreate()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 240
    :cond_0
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    .line 243
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$OnCreateTask-IA;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;-><init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p0

    .line 339
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3e8

    invoke-interface {p0, v1, v2, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 345
    const-string v0, "OnDestroyTask is Timeout."

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 343
    const-string v0, "OnDestroyTask failed."

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 341
    const-string v0, "OnDestroyTask has been interrupted."

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
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

    .line 297
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 299
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

    .line 258
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "onResume()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendAutoPowerOffEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$AutoPowerOffAction;)V
    .locals 2

    .line 1821
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->AUTO_POWEROFF:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendCameraNotAvailableEvent()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendCoolModeEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$CoolMode;Z)V
    .locals 1

    .line 451
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object p2

    .line 453
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendDualCameraEffectEvent(Landroid/content/Context;)V
    .locals 3

    .line 2182
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;

    const-string v1, "content://com.sonymobile.addoncamera.dualcameraeffect.provider/UsageData"

    .line 2183
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask-IA;)V

    .line 2182
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

    .line 882
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;J)V

    return-void
.end method

.method public sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;J)V
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v3, v0

    goto :goto_0

    .line 894
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    move-object v3, p2

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    .line 895
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v4, v0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p4

    .line 897
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

    .line 908
    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 2046
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask-IA;)V

    invoke-interface {p0, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1926
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask-IA;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2008
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask-IA;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendFaultDetectEvent()V
    .locals 4

    .line 2382
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->isDeleteMediaFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2383
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent;

    const-string v3, "DELETE"

    invoke-direct {v2, v3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent;-><init>(Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent-IA;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2385
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent;

    const-string v3, "CANCEL"

    invoke-direct {v2, v3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent;-><init>(Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFaultDetectEvent-IA;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_0
    const/4 v0, 0x0

    .line 2387
    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->deleteMediaFile(Z)V

    return-void
.end method

.method public sendFeatureContentEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;J)V
    .locals 2

    .line 2151
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;JLcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent-IA;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendLowBatteryEvent(ZZ)V
    .locals 1

    .line 464
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$LowBatteryMitigation;

    move-result-object p1

    .line 465
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object p2

    .line 467
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->LOWBATTERY_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendODMDualCameraEffectEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 2191
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;

    const-string v1, "content://com.sonymobile.addoncamera.bokeh.provider/UsageData"

    .line 2192
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask-IA;)V

    .line 2191
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendPerformanceData(Ljava/lang/String;JZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    .line 1832
    invoke-virtual/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method

.method public sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V
    .locals 8

    .line 1846
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;-><init>(Ljava/lang/String;JZLjava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask-IA;)V

    invoke-interface {p0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendPortraitSelfieEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 2200
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;

    const-string v1, "content://com.sonymobile.addoncamera.beautyportrait.provider/UsageData"

    .line 2201
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, p2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendExternalCameraAppEventTask-IA;)V

    .line 2200
    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendPredictiveLaunchEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$PredictiveLaunchAction;)V
    .locals 2

    .line 1813
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PREDICTIVE_LAUNCH:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendReadQrCodeEvent(Ljava/lang/String;)V
    .locals 2

    .line 2488
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendReadQrCodeEventTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendReadQrCodeEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

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

    .line 626
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

    .line 648
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

    invoke-direct/range {v1 .. v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask-IA;)V

    invoke-interface {v0, v9}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSelfTimerCancelledEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$SelfTimerTrigger;)V
    .locals 2

    .line 1804
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SELFTIMER_CANCELLED:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendSettingsCommon(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)V
    .locals 3

    .line 524
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonValueTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSettingsCommon(Ljava/lang/String;)V
    .locals 3

    .line 573
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendSettingsCommonKeyTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSetupWizardEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;J)V
    .locals 7

    .line 2086
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v6, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;JLcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask-IA;)V

    invoke-interface {p0, v6}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendShowFeatureListEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;)V
    .locals 2

    .line 2122
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent-IA;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendSlowMotionEvent(Ljava/lang/String;I)V
    .locals 1

    .line 480
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SLOW_MOTION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendThermalEvent(ZZ)V
    .locals 1

    .line 437
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$ThermalMitigation;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ThermalMitigation;

    move-result-object p1

    .line 438
    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$ForceQuit;

    move-result-object p2

    .line 440
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->THERMAL_MITIGATION:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {p0, v0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Lcom/sonymobile/cameracommon/research/parameters/Event$Action;Lcom/sonymobile/cameracommon/research/parameters/Event$Label;)V

    return-void
.end method

.method public sendThumbnailTransitionEvent()V
    .locals 5

    .line 2460
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mThumbnailTransitionEndTime:J

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mThumbnailTransitionStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 2462
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v1, v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;JLcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent-IA;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public sendTransitionQrCodeEvent()V
    .locals 3

    .line 2514
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendTransitionQrCodeEventTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendTransitionQrCodeEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$sendTransitionQrCodeEventTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendView(Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendZoomDialLongTapEvent()V
    .locals 2

    .line 1233
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialLongTapEventTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialLongTapEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialLongTapEventTask-IA;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendZoomDialTapEvent(Ljava/util/List;FZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FZ)V"
        }
    .end annotation

    .line 1200
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;-><init>(Ljava/util/List;FZ)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAssistSelfTimer(I)V
    .locals 2

    .line 2336
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$setAssistSelfTimerTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$setAssistSelfTimerTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAutoShutterSpeed(I)V
    .locals 2

    .line 1647
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setBlur(Ljava/lang/String;)V
    .locals 3

    .line 1956
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCameraNotAvailableFailedToOpen()V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$UpdateFailedToOpenCameraFlagTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V
    .locals 2

    .line 1419
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetCaptureTriggerTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setContinuousCapture()V
    .locals 3

    .line 1736
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setEyeDetected(Z)V
    .locals 2

    .line 1518
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetEyeDetectedTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetEyeDetectedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFaceNum(I)V
    .locals 2

    .line 1282
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFlashIndicator(Z)V
    .locals 2

    .line 2302
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setFocusEye(Z)V
    .locals 2

    .line 2265
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFocusEyeTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFocusEyeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setHdrRequired(Z)V
    .locals 2

    .line 1549
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetHdrRequiredTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetHdrRequiredTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setLaunchBy(Lcom/sonyericsson/android/camera/LaunchTrigger;)V
    .locals 0

    .line 417
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setLaunchedBy(Ljava/lang/String;)V

    return-void
.end method

.method public setManualBurstCount(I)V
    .locals 2

    .line 1388
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setNightAvailable(Z)V
    .locals 2

    .line 1580
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetNightAvailableTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetNightAvailableTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetOrientationTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setPredictiveCaptureNum(I)V
    .locals 2

    .line 1362
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetPredictiveCaptureNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRecordBySideSense(Z)V
    .locals 2

    .line 1486
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordBySideSenseTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordBySideSenseTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setRecordingMaxFaceNum(I)V
    .locals 2

    .line 1313
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetRecordingMaxFaceNumTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSideSensePosition(II)V
    .locals 2

    .line 1451
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetSideSensePositionTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setThumbnailStatus(Z)V
    .locals 0

    .line 2417
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsTempThumbnailTransition:Z

    return-void
.end method

.method public setThumbnailTransitionEnd()V
    .locals 2

    .line 2437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mThumbnailTransitionEndTime:J

    return-void
.end method

.method public setThumbnailTransitionStart()V
    .locals 2

    .line 2431
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mThumbnailTransitionStartTime:J

    return-void
.end method

.method public setTimeAfDone()V
    .locals 3

    .line 1753
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 1754
    invoke-direct {p0, v2, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTime(ZJ)V

    return-void
.end method

.method public setTimeCaptureStart()V
    .locals 3

    .line 1761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 1762
    invoke-direct {p0, v2, v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setTime(ZJ)V

    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V
    .locals 1

    const/4 v0, 0x0

    .line 831
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

    .line 844
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask-IA;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .locals 0

    .line 426
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method

.method public setViewerLaunched()V
    .locals 3

    .line 599
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask-IA;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setZoomAssistDetail(ZLjava/lang/String;)V
    .locals 2

    .line 1610
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setZoomRatio(F)V
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mBackWorker:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;

    invoke-direct {v1, p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;F)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setZoomTrigger(Ljava/lang/String;)V
    .locals 0

    .line 1191
    sput-object p1, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mZoomTrigger:Ljava/lang/String;

    return-void
.end method

.method public updateFlashIndicator(Z)V
    .locals 0

    .line 2297
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mIsUpdateFlashIndicator:Z

    return-void
.end method

.method public updateTempThumbnailClickNum()V
    .locals 1

    .line 2448
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTempThumbnailClickNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil;->mTempThumbnailClickNum:I

    return-void
.end method
