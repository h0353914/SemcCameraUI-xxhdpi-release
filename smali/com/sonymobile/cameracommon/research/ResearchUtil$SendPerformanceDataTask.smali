.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;
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
    name = "SendPerformanceDataTask"
.end annotation


# instance fields
.field private final mBatteryLevel:Ljava/lang/String;

.field private final mIsHeated:Z

.field private final mKey:Ljava/lang/String;

.field private final mMillis:J


# direct methods
.method private constructor <init>(Ljava/lang/String;JZLjava/lang/String;)V
    .locals 0

    .line 1605
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1606
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;->mKey:Ljava/lang/String;

    .line 1607
    iput-wide p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;->mMillis:J

    .line 1608
    iput-boolean p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;->mIsHeated:Z

    .line 1609
    iput-object p5, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;->mBatteryLevel:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;JZLjava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 1590
    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;-><init>(Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1614
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;->mKey:Ljava/lang/String;

    iget-wide v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;->mMillis:J

    iget-boolean v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;->mIsHeated:Z

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendPerformanceDataTask;->mBatteryLevel:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendPerformanceData(Ljava/lang/String;JZLjava/lang/String;)V

    return-void
.end method
