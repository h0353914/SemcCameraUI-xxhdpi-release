.class Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;
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
    name = "IncrementCountSnapshotInRecordingTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .locals 0

    .line 808
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 808
    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 811
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$IncrementCountSnapshotInRecordingTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$2808(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    return-void
.end method
