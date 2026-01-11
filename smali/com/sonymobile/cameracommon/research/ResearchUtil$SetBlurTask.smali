.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;
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
    name = "SetBlurTask"
.end annotation


# instance fields
.field mBlur:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;)V
    .locals 0

    .line 1967
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1968
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;->mBlur:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1973
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1974
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)V

    .line 1976
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetBlurTask;->mBlur:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateBlur(Ljava/lang/String;)V

    return-void
.end method
