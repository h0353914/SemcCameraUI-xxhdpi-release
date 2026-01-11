.class Lcom/sonymobile/cameracommon/research/ResearchUtil$sendReadQrCodeEventTask;
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
    name = "sendReadQrCodeEventTask"
.end annotation


# instance fields
.field private mType:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;


# direct methods
.method public constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil;Ljava/lang/String;)V
    .locals 0

    .line 2499
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendReadQrCodeEventTask;->this$0:Lcom/sonymobile/cameracommon/research/ResearchUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2500
    iput-object p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendReadQrCodeEventTask;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 2505
    iget-object p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$sendReadQrCodeEventTask;->mType:Ljava/lang/String;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendReadQrCodeEvent(Ljava/lang/String;)V

    return-void
.end method
