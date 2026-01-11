.class Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnDestroyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContextInner:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;->mContextInner:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 0

    .line 364
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->onDestroy()V

    const/4 p0, 0x1

    .line 366
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 350
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$OnDestroyTask;->call()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
