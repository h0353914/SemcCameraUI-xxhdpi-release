.class Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;
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
    name = "ClearTemporarySettingValuesTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .locals 0

    .line 1138
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1141
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$ClearTemporarySettingValuesTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmTemporarySettingValues(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$TemporarySettingValues;)V

    return-void
.end method
