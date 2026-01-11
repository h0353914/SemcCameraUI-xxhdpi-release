.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;
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
    name = "SetZoomAssistDetailTask"
.end annotation


# instance fields
.field private mIsZoomAssist:Z

.field private mZoomAssistDetail:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;ZLjava/lang/String;)V
    .locals 0

    .line 1622
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->mIsZoomAssist:Z

    .line 1624
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->mZoomAssistDetail:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1629
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)V

    .line 1632
    :cond_0
    iget-boolean v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->mIsZoomAssist:Z

    if-eqz v0, :cond_1

    .line 1633
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->mZoomAssistDetail:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateZoomAssistDetail(Ljava/lang/String;)V

    goto :goto_0

    .line 1635
    :cond_1
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomAssistDetailTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object p0

    const-string v0, "NO_FRAME"

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateZoomAssistDetail(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
