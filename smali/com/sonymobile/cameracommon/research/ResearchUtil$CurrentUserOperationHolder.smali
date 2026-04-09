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

    .line 68
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 69
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 133
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "UserOperationInfo#clear()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    return-void
.end method

.method public setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
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

    .line 77
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserOperation() : operation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 80
    :cond_0
    invoke-interface {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->isShooting()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 83
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 84
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "ManualBurst"

    .line 85
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .line 86
    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->getManualBurstParameterForIDD()Ljava/lang/String;

    move-result-object v3

    .line 85
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$100(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    move-result-object v2

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;->SIDE_SENSE:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureTrigger;

    if-ne v2, v3, :cond_1

    .line 88
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$200(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Landroid/graphics/Point;

    move-result-object v0

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

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

    .line 92
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 94
    :cond_2
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$300(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    const-string v2, "assist_self_timer"

    .line 95
    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    .line 96
    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v3

    invoke-static {v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->access$300(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)I

    move-result v3

    .line 95
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$000(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->clearAssistSelfTimer()V

    :cond_3
    const-string v2, "side_sense_position_x"

    .line 100
    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "side_sense_position_y"

    .line 101
    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_4

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 107
    :cond_4
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$400(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 108
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$400(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 110
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_5
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_PHOTO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    if-nez p3, :cond_6

    new-instance p3, Landroid/util/ArrayMap;

    invoke-direct {p3}, Landroid/util/ArrayMap;-><init>()V

    :cond_6
    invoke-static {p2, v0, v1, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$500(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    .line 118
    :cond_7
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    sget-object p3, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    if-ne p2, p3, :cond_9

    .line 119
    :cond_8
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 122
    :cond_9
    iget-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    invoke-interface {p1, p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->updateOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    return-void
.end method

.method public setViewerLaunched()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    if-nez v0, :cond_0

    .line 127
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;->EMPTY:Lcom/sonymobile/cameracommon/research/parameters/Event$CaptureOperation;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    invoke-interface {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;->getViewer()Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V

    return-void
.end method
