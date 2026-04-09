.class Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;
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
    name = "OnPauseTask"
.end annotation


# instance fields
.field private final mIsSameActivity:Z

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->mIsSameActivity:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$1302(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)Z

    .line 303
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->clear()V

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$900(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$900(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->access$1400(Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)V

    .line 309
    :cond_1
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->mIsSameActivity:Z

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->onPause(Z)V

    .line 312
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnPauseTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->clearTemporarySettingValues()V

    return-void
.end method
