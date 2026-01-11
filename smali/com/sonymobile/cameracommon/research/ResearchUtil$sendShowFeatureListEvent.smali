.class Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent;
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
    name = "sendShowFeatureListEvent"
.end annotation


# instance fields
.field private final mWay:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;)V
    .locals 0

    .line 2133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2134
    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent;->mWay:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$LaunchFeatureListWay;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2139
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->SHOW_FEATURE_LIST:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendShowFeatureListEvent;->mWay:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendShowFeatureListEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;)V

    return-void
.end method
