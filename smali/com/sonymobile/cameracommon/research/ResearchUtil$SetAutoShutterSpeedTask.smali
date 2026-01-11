.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;
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
    name = "SetAutoShutterSpeedTask"
.end annotation


# instance fields
.field private final mAutoShutterSpeed:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V
    .locals 0

    .line 1658
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1659
    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;->mAutoShutterSpeed:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1664
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1665
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)V

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetAutoShutterSpeedTask;->mAutoShutterSpeed:I

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateAutoShutterSpeed(I)V

    return-void
.end method
