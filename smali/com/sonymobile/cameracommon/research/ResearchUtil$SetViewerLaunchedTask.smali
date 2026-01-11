.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;
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
    name = "SetViewerLaunchedTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmUserOperationInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmUserOperationInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->setViewerLaunched()V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmPanoramaInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 609
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetViewerLaunchedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmPanoramaInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->setViewerLaunched()V

    :cond_1
    return-void
.end method
