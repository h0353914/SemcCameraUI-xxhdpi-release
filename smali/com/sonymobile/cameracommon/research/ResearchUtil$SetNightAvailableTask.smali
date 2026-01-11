.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetNightAvailableTask;
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
    name = "SetNightAvailableTask"
.end annotation


# instance fields
.field private mIsNightAvailable:Z

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V
    .locals 0

    .line 1591
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetNightAvailableTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1592
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetNightAvailableTask;->mIsNightAvailable:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1597
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetNightAvailableTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1598
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetNightAvailableTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)V

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetNightAvailableTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget-boolean p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetNightAvailableTask;->mIsNightAvailable:Z

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateNightAvailable(Z)V

    return-void
.end method
