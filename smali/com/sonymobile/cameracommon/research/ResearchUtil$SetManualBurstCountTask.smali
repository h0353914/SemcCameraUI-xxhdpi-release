.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;
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
    name = "SetManualBurstCountTask"
.end annotation


# instance fields
.field private final mManualBurstCount:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V
    .locals 0

    .line 1399
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1400
    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;->mManualBurstCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1405
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)V

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetManualBurstCountTask;->mManualBurstCount:I

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateManualBurstCount(I)V

    return-void
.end method
