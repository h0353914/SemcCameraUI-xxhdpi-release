.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;
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
    name = "SendEventAllSettingsTask"
.end annotation


# instance fields
.field private final mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

.field private final mEnv:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$Category;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1904
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1905
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    .line 1906
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mEnv:Ljava/util/Map;

    .line 1907
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mSettings:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;-><init>(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1912
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mCategory:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mEnv:Ljava/util/Map;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventAllSettingsTask;->mSettings:Ljava/util/Map;

    invoke-static {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEventAllSettings(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method
