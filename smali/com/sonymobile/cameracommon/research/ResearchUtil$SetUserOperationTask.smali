.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;
.super Ljava/lang/Object;
.source "ResearchUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetUserOperationTask"
.end annotation


# instance fields
.field private final mParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
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

.field private final mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;",
            "Ljava/util/List<",
            "Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 850
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    .line 852
    iput-object p3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mParams:Ljava/util/List;

    .line 853
    iput-object p4, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mSettings:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;Lcom/sonymobile/cameracommon/research/ResearchUtil$1;)V
    .locals 0

    .line 837
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 858
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->access$800(Lcom/sonymobile/cameracommon/research/ResearchUtil;)Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mUserOperation:Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mParams:Ljava/util/List;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SetUserOperationTask;->mSettings:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$CurrentUserOperationHolder;->setUserOperation(Lcom/sonymobile/cameracommon/research/parameters/Event$UserOperation;Ljava/util/List;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
