.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;
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
    name = "SendEventTask"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field private final mLabel:Ljava/lang/String;

.field private final mValue:J


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 931
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 932
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 933
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mAction:Ljava/lang/String;

    .line 934
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mLabel:Ljava/lang/String;

    .line 935
    iput-wide p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mValue:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;JLcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 940
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mLabel:Ljava/lang/String;

    iget-wide v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventTask;->mValue:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
