.class Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;
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
    name = "sendThumbnailTransitionEvent"
.end annotation


# instance fields
.field private final mDuration:J

.field private final mNum:I

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;J)V
    .locals 0

    .line 2470
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2471
    iput-wide p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;->mDuration:J

    .line 2472
    invoke-static {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$fgetmTempThumbnailClickNum(Lcom/sonymobile/cameracommon/research/ResearchUtil;)I

    move-result p2

    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;->mNum:I

    .line 2473
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->clearTempThumbnailClickNum()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;JLcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2478
    iget-wide v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;->mDuration:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendThumbnailTransitionEvent;->mNum:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendThumbnailTransitionEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
