.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;
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
    name = "SendEventAddonModeChangeTask"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field private final mLabel:Ljava/lang/String;

.field private final mMethod:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1776
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1777
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 1778
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;->mAction:Ljava/lang/String;

    .line 1779
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;->mLabel:Ljava/lang/String;

    .line 1780
    iput-object p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;->mMethod:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 1761
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1785
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;->mAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;->mLabel:Ljava/lang/String;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAddonModeChangeTask;->mMethod:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEventAddonModeChange(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
