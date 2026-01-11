.class Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;
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
    name = "setFlashIndicatorTask"
.end annotation


# instance fields
.field private final mIsFlashIndicator:Z

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V
    .locals 0

    .line 2313
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2314
    iput-boolean p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;->mIsFlashIndicator:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2319
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2320
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)V

    .line 2322
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmIsUpdateFlashIndicator(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2323
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget-boolean v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;->mIsFlashIndicator:Z

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateFlashIndicator(Z)V

    .line 2324
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$setFlashIndicatorTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmIsUpdateFlashIndicator(Lcom/sonymobile/cameracommon/research/ResearchUtil;Z)V

    :cond_1
    return-void
.end method
