.class Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentUserOperationHolder"
.end annotation


# instance fields
.field private mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 147
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "UserOperationInfo#clear()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1, v0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V
    .locals 5
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

    .line 83
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setUserOperation() : operation = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 86
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 89
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 90
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 91
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->getManualBurstParameterForIDD()Ljava/lang/String;

    move-result-object v2

    .line 91
    const-string v3, "ManualBurst"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmCaptureTrigger(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    if-ne v2, v3, :cond_1

    .line 94
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmSideSensePosition(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Landroid/graphics/Point;

    move-result-object v0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->getParameterList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    .line 98
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmEyeDetected(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v3, "is_eye_detected"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmAutoShutterSpeed(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "auto_shutter_speed"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmIsHdrRequired(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "is_hdr_required"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmIsNightAvailable(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "is_night_available"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_3
    iget v2, v0, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "side_sense_position_x"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "side_sense_position_y"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 112
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    .line 113
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 116
    :cond_4
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmAfDoneKeepingTimeHolder(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 117
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmAfDoneKeepingTimeHolder(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 119
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p3, :cond_6

    .line 122
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 123
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object p2

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmBlur(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "blur"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object p2

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmZoomAssistDetail(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "zoom_assist_detail"

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    :cond_6
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    if-nez p3, :cond_7

    .line 128
    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    .line 127
    :cond_7
    invoke-static {p2, v0, v1, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$msendEventAllSettings(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    .line 132
    :cond_8
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    if-eqz p2, :cond_9

    sget-object p3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    if-ne p2, p3, :cond_a

    .line 133
    :cond_9
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 136
    :cond_a
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    invoke-interface {p1, p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->updateOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    return-void
.end method

.method public setViewerLaunched()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->getViewer()Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V

    return-void
.end method
