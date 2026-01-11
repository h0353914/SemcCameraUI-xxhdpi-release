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

    .line 272
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->mIsPanorama:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 278
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->mIsPanorama:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmUserOperationInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)V

    .line 280
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    invoke-direct {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo-IA;)V

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmPanoramaInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v2, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {v2, v3, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder-IA;)V

    invoke-static {v0, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmUserOperationInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;)V

    .line 283
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmPanoramaInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)V

    .line 285
    :goto_0
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->onResume()V

    return-void
.end method
