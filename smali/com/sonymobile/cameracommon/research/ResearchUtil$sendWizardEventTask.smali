.class Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;
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
    name = "sendWizardEventTask"
.end annotation


# instance fields
.field private final mPage:Ljava/lang/String;

.field private final mResult:Ljava/lang/String;

.field private final mTime:J


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;J)V
    .locals 0

    .line 2102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2103
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;->mPage:Ljava/lang/String;

    .line 2104
    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;->mResult:Ljava/lang/String;

    .line 2105
    iput-wide p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;->mTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;JLcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$WizardPage;Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;J)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2110
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;->mPage:Ljava/lang/String;

    iget-wide v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;->mTime:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendWizardEventTask;->mResult:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendWizardEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
