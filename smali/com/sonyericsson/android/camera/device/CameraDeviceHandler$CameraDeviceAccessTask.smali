.class abstract Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CameraDeviceAccessTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;
    }
.end annotation


# static fields
.field private static final IS_DUMP_EXCEPTION_TASK_INFO_ENABLED:Z = true

.field private static final IS_DUMP_REJECTED_TASK_INFO_ENABLED:Z = false


# instance fields
.field private final mDumpInfoAtConstruct:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;

.field private final mIsBelongedToSession:Z

.field protected final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private mPerfLog:Lcom/sonyericsson/android/camera/util/PerfLog;

.field private final mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;


# direct methods
.method static bridge synthetic -$$Nest$fgetmSessionId(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLatch(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->getLatch()Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4733
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V
    .locals 1

    const/4 v0, 0x1

    .line 4726
    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;Z)V
    .locals 3

    .line 4736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4677
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mPerfLog:Lcom/sonyericsson/android/camera/util/PerfLog;

    .line 4737
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 4738
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    .line 4739
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mIsBelongedToSession:Z

    .line 4741
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 4743
    new-instance p2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo-IA;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mDumpInfoAtConstruct:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;

    goto :goto_0

    .line 4745
    :cond_0
    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mDumpInfoAtConstruct:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;

    .line 4748
    :goto_0
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "REQUEST:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " sessionId:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 4753
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method


# virtual methods
.method protected abstract doCameraDeviceAccess()V
.end method

.method protected getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;
    .locals 1

    .line 4761
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4764
    new-instance p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;-><init>(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)V

    .line 4765
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->BYPASS_CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 4766
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    .line 4767
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->BYPASS_CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setRequested2(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;)V

    .line 4768
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->setPerformed2(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;)V

    :cond_0
    return-object p0
.end method

.method protected getSessionId()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;
    .locals 0

    .line 4757
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    return-object p0
.end method

.method protected postCameraDeviceAccess()V
    .locals 0

    return-void
.end method

.method protected removeOpenCloseStatusInfo()V
    .locals 0

    .line 4774
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->removeOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)V

    return-void
.end method

.method public final run()V
    .locals 8

    .line 4780
    const-string v0, " sessionId:"

    .line 0
    const-string v1, "END:"

    const-string v2, "START:"

    const-string v3, "REJECTED:"

    .line 4780
    :try_start_0
    iget-boolean v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mIsBelongedToSession:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 4782
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->getOpenCloseStatusInfo()Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->isCloseBypassCameraTaskPerformed()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v5

    goto :goto_1

    :cond_1
    :goto_0
    move v4, v6

    .line 4784
    :goto_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->verifyCameraDeviceStatus()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v4, :cond_5

    .line 4785
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_2

    new-array v3, v6, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4788
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mPerfLog:Lcom/sonyericsson/android/camera/util/PerfLog;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 4789
    :cond_3
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->doCameraDeviceAccess()V

    .line 4790
    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mPerfLog:Lcom/sonyericsson/android/camera/util/PerfLog;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 4792
    :cond_4
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_6

    new-array v2, v6, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_2

    .line 4795
    :cond_5
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_6

    .line 4796
    new-array v1, v6, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4805
    :cond_6
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->postCameraDeviceAccess()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 4808
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v2, :cond_7

    .line 4809
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "EXCEPTION:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mSessionId:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4812
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mDumpInfoAtConstruct:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "request "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->-$$Nest$mdump(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;Ljava/lang/String;)V

    .line 4813
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo-IA;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "performed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->-$$Nest$mdump(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;Ljava/lang/String;)V

    .line 4816
    :cond_7
    throw v1
.end method

.method protected setPerformancefLog(Lcom/sonyericsson/android/camera/util/PerfLog;)V
    .locals 0

    .line 4680
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->mPerfLog:Lcom/sonyericsson/android/camera/util/PerfLog;

    return-void
.end method

.method protected abstract verifyCameraDeviceStatus()Z
.end method
