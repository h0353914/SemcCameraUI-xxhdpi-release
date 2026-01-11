.class Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;
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
    name = "IncrementCountRecordResumeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .locals 0

    .line 803
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 806
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountRecordResumeTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmCountRecordResume(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fputmCountRecordResume(Lcom/sonymobile/cameracommon/research/ResearchUtil;I)V

    return-void
.end method
