.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;
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
    name = "SendEventChangedSettingTask"
.end annotation


# instance fields
.field private final mAfter:Ljava/lang/String;

.field private final mBefore:Ljava/lang/String;

.field private final mSetting:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1682
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1683
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mSetting:Ljava/lang/String;

    .line 1684
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mBefore:Ljava/lang/String;

    .line 1685
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mAfter:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 1670
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1690
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mSetting:Ljava/lang/String;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mBefore:Ljava/lang/String;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendEventChangedSettingTask;->mAfter:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEventChangedSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
