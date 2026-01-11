.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;
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
    name = "SetZoomRatioTask"
.end annotation


# instance fields
.field private final mZoomRatio:F

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;F)V
    .locals 0

    .line 1165
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1166
    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1171
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    new-instance v1, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    invoke-direct {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;-><init>()V

    invoke-static {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)V

    .line 1174
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;

    move-result-object v0

    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;->updateZoomRatio(F)V

    .line 1175
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$sfgetmZoomTrigger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1176
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetpreZoomRatio(Lcom/sonymobile/cameracommon/research/ResearchUtil;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1177
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH_OUT:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$sfputmZoomTrigger(Ljava/lang/String;)V

    goto :goto_0

    .line 1178
    :cond_1
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetpreZoomRatio(Lcom/sonymobile/cameracommon/research/ResearchUtil;)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 1179
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->PINCH_IN:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$sfputmZoomTrigger(Ljava/lang/String;)V

    .line 1182
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetZoomRatioTask;->mZoomRatio:F

    invoke-static {v0, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputpreZoomRatio(Lcom/sonymobile/cameracommon/research/ResearchUtil;F)V

    return-void
.end method
