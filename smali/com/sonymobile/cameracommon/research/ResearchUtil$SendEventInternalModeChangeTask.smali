.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SendEventInternalModeChangeTask"
.end annotation


# instance fields
.field private final mCurrentMode:Ljava/lang/String;

.field private final mMethod:Ljava/lang/String;

.field private final mTargetMode:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1735
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1736
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;->mCurrentMode:Ljava/lang/String;

    .line 1737
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;->mTargetMode:Ljava/lang/String;

    .line 1738
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;->mMethod:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 1723
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1743
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;->mCurrentMode:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;->mTargetMode:Ljava/lang/String;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventInternalModeChangeTask;->mMethod:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEventInternalModeChange(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
