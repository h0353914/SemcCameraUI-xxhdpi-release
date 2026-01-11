.class Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialLongTapEventTask;
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
    name = "SendZoomDialLongTapEventTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialLongTapEventTask-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$SendZoomDialLongTapEventTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1239
    invoke-static {}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendZoomDialLongTapEvent()V

    return-void
.end method
