.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;
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
    name = "SendZoomDialTapEventTask"
.end annotation


# instance fields
.field private final mZoom:F

.field private final mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;FZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;FZ)V"
        }
    .end annotation

    .line 1213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    iput-object p1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;->mZoomRatios:Ljava/util/List;

    .line 1215
    iput p2, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;->mZoom:F

    .line 1216
    invoke-static {p3}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$sfputmIsRecording(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1221
    iget p0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialTapEventTask;->mZoom:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const p0, 0x3f19999a    # 0.6f

    .line 1223
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(F)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$sfgetmZoomTrigger()Ljava/lang/String;

    move-result-object v0

    .line 1222
    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendZoomDialTapEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    float-to-int p0, p0

    int-to-float p0, p0

    .line 1226
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getZoomParameter(F)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->-$$Nest$sfgetmZoomTrigger()Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-static {p0, v0}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendZoomDialTapEvent(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
