.class Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemporarySettingValues"
.end annotation


# instance fields
.field private mAssistSelfTimer:I

.field private mAutoShutterSpeed:I

.field private mBlur:Ljava/lang/String;

.field private mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field private mEyeDetected:Z

.field private mFaceNum:I

.field private mIsFlashIndicator:Z

.field private mIsFocusEye:Z

.field private mIsHdrRequired:Z

.field private mIsNightAvailable:Z

.field private mIsZoomAssist:Z

.field private mManualBurstCount:I

.field private mOrientation:I

.field private mPredictiveCaptureNum:I

.field private mRecordBySideSense:Z

.field private mRecordingMaxFaceNum:I

.field private mSideSensePosition:Landroid/graphics/Point;

.field private mZoomAssistDetail:Ljava/lang/String;

.field private mZoomRatio:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoShutterSpeed(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)I
    .locals 0

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAutoShutterSpeed:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBlur(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mBlur:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureTrigger(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEyeDetected(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mEyeDetected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsHdrRequired(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsHdrRequired:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsNightAvailable(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsNightAvailable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecordBySideSense(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSideSensePosition(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Landroid/graphics/Point;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomAssistDetail(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomAssistDetail:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmRecordBySideSense(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 971
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    const/4 v0, 0x0

    .line 972
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    .line 973
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    .line 974
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    .line 975
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    .line 976
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    .line 977
    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 978
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;

    .line 979
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFocusEye:Z

    .line 980
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFlashIndicator:Z

    const/4 v1, -0x1

    .line 981
    iput v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    .line 982
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mEyeDetected:Z

    .line 983
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAutoShutterSpeed:I

    .line 984
    const-string v0, "OFF"

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mBlur:Ljava/lang/String;

    .line 985
    const-string v0, "NO_FRAME"

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomAssistDetail:Ljava/lang/String;

    return-void
.end method

.method private roundZoomRatio()F
    .locals 1

    .line 1087
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const p0, 0x3f19999a    # 0.6f

    return p0

    :cond_0
    float-to-int p0, p0

    int-to-float p0, p0

    return p0
.end method


# virtual methods
.method public clearAssistSelfTimer()V
    .locals 1

    const/4 v0, -0x1

    .line 1075
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    return-void
.end method

.method public clearAutoShutterSpeed()V
    .locals 1

    const/4 v0, 0x0

    .line 1083
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAutoShutterSpeed:I

    return-void
.end method

.method public clearCaptureTrigger()V
    .locals 1

    .line 1067
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-void
.end method

.method public clearFaceNum()V
    .locals 1

    const/4 v0, 0x0

    .line 1059
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    return-void
.end method

.method public clearFlashIndicator()V
    .locals 1

    const/4 v0, 0x0

    .line 1079
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFlashIndicator:Z

    return-void
.end method

.method public clearFocusEye()V
    .locals 1

    const/4 v0, 0x0

    .line 1071
    iput-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFocusEye:Z

    return-void
.end method

.method public clearRecordingMaxFaceNum()V
    .locals 1

    const/4 v0, 0x0

    .line 1063
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    return-void
.end method

.method public getManualBurstParameterForIDD()Ljava/lang/String;
    .locals 1

    .line 1103
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    if-nez v0, :cond_0

    .line 1104
    const-string p0, "False"

    return-object p0

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_Shots"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getParameterList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;"
        }
    .end annotation

    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1112
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getOrientationParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1113
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()F

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(F)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFaceNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1115
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getPredictiveCaptureNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1116
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getCaptureTriggerParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getParameterListForRecording()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;"
        }
    .end annotation

    .line 1121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getOrientationParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()F

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(F)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFaceNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringForRecording()Ljava/lang/String;
    .locals 2

    .line 1099
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Z"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAssistSelfTimer(I)V
    .locals 0

    .line 1033
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    return-void
.end method

.method public updateAutoShutterSpeed(I)V
    .locals 0

    .line 1052
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAutoShutterSpeed:I

    return-void
.end method

.method public updateBlur(Ljava/lang/String;)V
    .locals 0

    .line 1055
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mBlur:Ljava/lang/String;

    return-void
.end method

.method public updateCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-void
.end method

.method public updateEyeDetected(Z)V
    .locals 0

    .line 1036
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mEyeDetected:Z

    return-void
.end method

.method public updateFaceNum(I)V
    .locals 0

    .line 997
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    return-void
.end method

.method public updateFlashIndicator(Z)V
    .locals 0

    .line 1030
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFlashIndicator:Z

    return-void
.end method

.method public updateFocusEye(Z)V
    .locals 0

    .line 1027
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsFocusEye:Z

    return-void
.end method

.method public updateHdrRequired(Z)V
    .locals 0

    .line 1040
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsHdrRequired:Z

    return-void
.end method

.method public updateManualBurstCount(I)V
    .locals 0

    .line 1011
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    return-void
.end method

.method public updateNightAvailable(Z)V
    .locals 0

    .line 1044
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mIsNightAvailable:Z

    return-void
.end method

.method public updateOrientation(I)V
    .locals 0

    .line 993
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    return-void
.end method

.method public updatePredictiveCaptureNum(I)V
    .locals 0

    .line 1007
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    return-void
.end method

.method public updateRecordBySideSense(Z)V
    .locals 0

    .line 1023
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z

    return-void
.end method

.method public updateRecordingMaxFaceNum(I)V
    .locals 1

    .line 1001
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    if-ge v0, p1, :cond_0

    .line 1002
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    :cond_0
    return-void
.end method

.method public updateSideSensePosition(II)V
    .locals 1

    .line 1019
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;

    return-void
.end method

.method public updateZoomAssistDetail(Ljava/lang/String;)V
    .locals 0

    .line 1048
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomAssistDetail:Ljava/lang/String;

    return-void
.end method

.method public updateZoomRatio(F)V
    .locals 0

    .line 989
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    return-void
.end method
