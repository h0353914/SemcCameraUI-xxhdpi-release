.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;
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
    name = "SetContinuousCaptureTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .locals 0

    .line 1430
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 1430
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1433
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$400(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1434
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$402(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    .line 1436
    :cond_0
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetContinuousCaptureTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$400(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->updateContinuousCapture(Z)V

    return-void
.end method
