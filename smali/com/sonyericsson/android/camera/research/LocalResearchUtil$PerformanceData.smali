.class Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;
.super Ljava/lang/Object;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PerformanceData"
.end annotation


# instance fields
.field private mIsValid:Z

.field private final mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

.field private mStartInMillis:J

.field private mStopInMillis:J

.field final synthetic this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;)V
    .locals 2

    .line 859
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 855
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    .line 856
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    const/4 p1, 0x0

    .line 857
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mIsValid:Z

    .line 860
    iput-object p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    return-void
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;)Z
    .locals 0

    .line 853
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->isValid()Z

    move-result p0

    return p0
.end method

.method private isValid()Z
    .locals 4

    .line 907
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mIsValid:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 911
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    .line 912
    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    const/4 v0, 0x0

    .line 913
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mIsValid:Z

    return-void
.end method

.method public setInvalid()V
    .locals 1

    const/4 v0, 0x0

    .line 903
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mIsValid:Z

    return-void
.end method

.method public setValid()V
    .locals 1

    const/4 v0, 0x1

    .line 899
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mIsValid:Z

    return-void
.end method

.method public start()V
    .locals 2

    .line 864
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    return-void
.end method

.method public stop()V
    .locals 9

    .line 868
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    .line 869
    sget-object v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;->$SwitchMap$com$sonyericsson$android$camera$research$LocalResearchUtil$MeasurementKey:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 888
    :pswitch_0
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v0

    iget-object v3, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->toString()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    iget-wide v6, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    sub-long/2addr v4, v6

    iget-object v6, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    .line 889
    invoke-static {v6}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$400(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z

    move-result v6

    .line 888
    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPerformanceData(Ljava/lang/String;JZ)V

    .line 890
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    iget-wide v5, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isHeated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    .line 891
    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$400(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 890
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 878
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v3

    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->toString()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    iget-wide v7, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    sub-long/2addr v5, v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    .line 879
    invoke-static {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$400(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z

    move-result v7

    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$500(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Ljava/lang/String;

    move-result-object v8

    .line 878
    invoke-virtual/range {v3 .. v8}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V

    .line 880
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mKey:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$MeasurementKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStopInMillis:J

    iget-wide v5, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->mStartInMillis:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", isHeated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    .line 881
    invoke-static {v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$400(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", BatteryLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$PerformanceData;->this$0:Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    .line 882
    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->access$500(Lcom/sonyericsson/android/camera/research/LocalResearchUtil;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 880
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
