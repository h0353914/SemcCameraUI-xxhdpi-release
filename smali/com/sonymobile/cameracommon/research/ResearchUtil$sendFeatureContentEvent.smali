.class Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;
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
    name = "sendFeatureContentEvent"
.end annotation


# instance fields
.field private final mPage:Ljava/lang/String;

.field private final mTime:J


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;J)V
    .locals 0

    .line 2165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2166
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;->mPage:Ljava/lang/String;

    .line 2167
    iput-wide p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;->mTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;JLcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2172
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SHOW_FEATURE_CONTENT:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;->mPage:Ljava/lang/String;

    iget-wide v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendFeatureContentEvent;->mTime:J

    .line 2173
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    .line 2172
    invoke-static {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendFeatureContentEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
