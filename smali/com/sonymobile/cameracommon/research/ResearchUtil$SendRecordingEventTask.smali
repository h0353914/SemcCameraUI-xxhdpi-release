.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendRecordingEventTask"
.end annotation


# instance fields
.field private final mIsLaunchViewerAfterRec:Z

.field private final mRecTimeMillis:I

.field private final mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStopOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

.field private final mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V
    .locals 0
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

    .line 677
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 678
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 679
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mStopOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 680
    iput p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mRecTimeMillis:I

    .line 681
    iput-boolean p5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsLaunchViewerAfterRec:Z

    .line 682
    iput-object p6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;IZLjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 687
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mRecTimeMillis:I

    div-int/lit16 v0, v0, 0x3e8

    if-ltz v0, :cond_8

    .line 690
    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mIsLaunchViewerAfterRec:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    if-eqz v1, :cond_0

    .line 691
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-virtual {v2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;)V

    .line 695
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 696
    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mStopOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 697
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 698
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 699
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmRecordBySideSense(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 700
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fputmRecordBySideSense(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;Z)V

    .line 701
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmSideSensePosition(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Landroid/graphics/Point;

    move-result-object v1

    .line 702
    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->USER_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    if-ne v2, v4, :cond_1

    .line 703
    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->SIDE_SENSE_STOP:Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;

    .line 707
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->getParameterListForRecording()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    .line 708
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 710
    :cond_2
    iget-object v4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v4

    invoke-static {v4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->-$$Nest$fgetmEyeDetected(Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    .line 711
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 710
    const-string v6, "is_eye_detected"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    :cond_3
    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "side_sense_position_x"

    invoke-interface {v3, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "side_sense_position_y"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v1, "rec_time"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmCountRecordResume(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "resume"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmCountRecordSnapshot(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "snapshot"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string/jumbo v1, "stop_factor"

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$sfgetmZoomTimesInRec()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "zoom_times"

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    invoke-static {v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$sfputmZoomTimesInRec(I)V

    .line 722
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v4, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->ALL_SETTINGS_VIDEO:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 723
    iget-object v6, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    if-nez v6, :cond_4

    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    .line 722
    :cond_4
    invoke-static {v1, v4, v3, v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$msendEventAllSettings(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    .line 726
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 727
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 728
    const-string v0, "_Sec_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 729
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmCountRecordResume(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 730
    const-string v0, "_Resume_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 731
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmCountRecordSnapshot(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 732
    const-string v0, "_Snapshot_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 734
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmCountRecordResume(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    .line 735
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0, v5}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmCountRecordSnapshot(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    .line 737
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 738
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->toStringForRecording()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 739
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->clearRecordingMaxFaceNum()V

    .line 741
    :cond_5
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    if-eqz v0, :cond_7

    const-string v3, "SLOW_MOTION"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    .line 742
    const-string v3, "VIDEO_SIZE"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 745
    :cond_6
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->mSettings:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$smgetVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 743
    :cond_7
    :goto_1
    const-string v0, "Other"

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$smgetVideoSizeEventLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 748
    :goto_2
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendRecordingEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->RECORDING:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/research/parameters/Event$StopOperation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method
