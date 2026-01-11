.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;
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
    name = "SendViewTask"
.end annotation


# instance fields
.field private final mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

.field private final mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    .line 393
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonyericsson/android/camera/LaunchTrigger;Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmIsViewEventSent(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    sget-object v1, Lcom/sonyericsson/android/camera/LaunchTrigger;->SAME_ACTIVITY:Lcom/sonyericsson/android/camera/LaunchTrigger;

    if-ne v0, v1, :cond_1

    .line 400
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendViewTask() LaunchTrigger:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mLaunchTrigger:Lcom/sonyericsson/android/camera/LaunchTrigger;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setLaunchedBy(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->mScreen:Lcom/sonymobile/cameracommon/research/parameters/Screen;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->setView(Lcom/sonymobile/cameracommon/research/parameters/Screen;)V

    .line 406
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendViewTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmIsViewEventSent(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    :cond_1
    return-void
.end method
