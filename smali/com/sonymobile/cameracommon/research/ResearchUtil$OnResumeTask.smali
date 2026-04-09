.class Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;
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
    name = "OnResumeTask"
.end annotation


# instance fields
.field private final mIsPanorama:Z

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->mIsPanorama:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 250
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 264
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->mIsPanorama:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$802(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    .line 266
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$902(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    goto :goto_0

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {v2, v3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V

    invoke-static {v0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$802(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    .line 269
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$902(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    .line 271
    :goto_0
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->onResume()V

    return-void
.end method
