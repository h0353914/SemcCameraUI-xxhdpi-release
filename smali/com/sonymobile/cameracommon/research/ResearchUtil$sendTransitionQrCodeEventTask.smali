.class Lcom/sonymobile/cameracommon/research/ResearchUtil$sendTransitionQrCodeEventTask;
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
    name = "sendTransitionQrCodeEventTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method private constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V
    .locals 0

    .line 2517
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendTransitionQrCodeEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Lcom/sonymobile/cameracommon/research/ResearchUtil$sendTransitionQrCodeEventTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendTransitionQrCodeEventTask;-><init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 2520
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendTransitionQrCodeEvent()V

    return-void
.end method
