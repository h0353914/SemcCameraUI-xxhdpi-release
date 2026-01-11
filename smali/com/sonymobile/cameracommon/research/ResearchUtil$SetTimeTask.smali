.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;
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
    name = "SetTimeTask"
.end annotation


# instance fields
.field private final mIsStart:Z

.field private final mTime:J

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZJ)V
    .locals 0

    .line 1780
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1781
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mIsStart:Z

    .line 1782
    iput-wide p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1787
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmAfDoneKeepingTimeHolder(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1788
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder-IA;)V

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmAfDoneKeepingTimeHolder(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;)V

    .line 1790
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mIsStart:Z

    if-eqz v0, :cond_1

    .line 1791
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmAfDoneKeepingTimeHolder(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mTime:J

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->updateTimeAfDone(J)V

    goto :goto_0

    .line 1793
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmAfDoneKeepingTimeHolder(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetTimeTask;->mTime:J

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$AfDoneKeepingTimeHolder;->updateTimeCapture(J)V

    :goto_0
    return-void
.end method
