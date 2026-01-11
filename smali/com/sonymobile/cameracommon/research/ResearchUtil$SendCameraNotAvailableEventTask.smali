.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;
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
    name = "SendCameraNotAvailableEventTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 509
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmIsFailedToOpenCamera(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z

    move-result v0

    .line 510
    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->getType(Z)Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;

    move-result-object v0

    .line 512
    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->CAMERA_NOT_AVAILABLE:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$CameraNotAvailable;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendCameraNotAvailableEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmIsFailedToOpenCamera(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    return-void
.end method
