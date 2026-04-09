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

.field private mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

.field private mFaceNum:I

.field private mManualBurstCount:I

.field private mOrientation:I

.field private mPredictiveCaptureNum:I

.field private mRecordBySideSense:Z

.field private mRecordingMaxFaceNum:I

.field private mSideSensePosition:Landroid/graphics/Point;

.field private mZoomRatio:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 952
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    const/4 v0, 0x0

    .line 953
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    .line 954
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    .line 955
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    .line 956
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    .line 957
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    .line 958
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    .line 959
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;

    const/4 v0, -0x1

    .line 960
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;
    .locals 0

    .line 938
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Landroid/graphics/Point;
    .locals 0

    .line 938
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z
    .locals 0

    .line 938
    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z

    return p0
.end method

.method static synthetic access$2602(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;Z)Z
    .locals 0

    .line 938
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)I
    .locals 0

    .line 938
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    return p0
.end method

.method private roundZoomRatio()I
    .locals 2

    .line 1024
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1027
    :cond_0
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    float-to-int p0, p0

    return p0
.end method


# virtual methods
.method public clearAssistSelfTimer()V
    .locals 1

    const/4 v0, -0x1

    .line 1018
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    return-void
.end method

.method public clearCaptureTrigger()V
    .locals 1

    .line 1014
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->OTHER:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-void
.end method

.method public clearFaceNum()V
    .locals 1

    const/4 v0, 0x0

    .line 1006
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    return-void
.end method

.method public clearRecordingMaxFaceNum()V
    .locals 1

    const/4 v0, 0x0

    .line 1010
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    return-void
.end method

.method public getManualBurstParameterForIDD()Ljava/lang/String;
    .locals 1

    .line 1040
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    if-nez v0, :cond_0

    const-string p0, "False"

    return-object p0

    .line 1043
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_Shots"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    .line 1048
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getOrientationParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1051
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFaceNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1052
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getPredictiveCaptureNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
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

    .line 1058
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1059
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getOrientationParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getFaceNumParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toStringForRecording()Ljava/lang/String;
    .locals 2

    .line 1036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->roundZoomRatio()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_O"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_F"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAssistSelfTimer(I)V
    .locals 0

    .line 1002
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mAssistSelfTimer:I

    return-void
.end method

.method public updateCaptureTrigger(Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mCaptureTrigger:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    return-void
.end method

.method public updateFaceNum(I)V
    .locals 0

    .line 972
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mFaceNum:I

    return-void
.end method

.method public updateManualBurstCount(I)V
    .locals 0

    .line 986
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mManualBurstCount:I

    return-void
.end method

.method public updateOrientation(I)V
    .locals 0

    .line 968
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mOrientation:I

    return-void
.end method

.method public updatePredictiveCaptureNum(I)V
    .locals 0

    .line 982
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mPredictiveCaptureNum:I

    return-void
.end method

.method public updateRecordBySideSense(Z)V
    .locals 0

    .line 998
    iput-boolean p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordBySideSense:Z

    return-void
.end method

.method public updateRecordingMaxFaceNum(I)V
    .locals 1

    .line 976
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    if-ge v0, p1, :cond_0

    .line 977
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mRecordingMaxFaceNum:I

    :cond_0
    return-void
.end method

.method public updateSideSensePosition(II)V
    .locals 1

    .line 994
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mSideSensePosition:Landroid/graphics/Point;

    return-void
.end method

.method public updateZoomRatio(F)V
    .locals 0

    .line 964
    iput p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->mZoomRatio:F

    return-void
.end method
