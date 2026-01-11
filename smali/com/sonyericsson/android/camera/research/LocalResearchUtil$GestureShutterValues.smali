.class final Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;
.super Ljava/lang/Object;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GestureShutterValues"
.end annotation


# instance fields
.field private mHandSignLostNum:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 593
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 595
    iput v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->mHandSignLostNum:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;-><init>()V

    return-void
.end method


# virtual methods
.method public countUpHandSignLostNum()V
    .locals 2

    .line 606
    iget v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->mHandSignLostNum:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 607
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 608
    const-string v0, "Counting up hand signs lost number from -1."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 610
    :cond_0
    iget v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->mHandSignLostNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->mHandSignLostNum:I

    return-void
.end method

.method public getParameter()Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 0

    .line 614
    iget p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->mHandSignLostNum:I

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getHandSignLostParameter(I)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p0

    return-object p0
.end method

.method public resetHandSignLostNum()V
    .locals 1

    const/4 v0, -0x1

    .line 602
    iput v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->mHandSignLostNum:I

    return-void
.end method

.method public startHandSignLostNumCounting()V
    .locals 1

    const/4 v0, 0x0

    .line 598
    iput v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$GestureShutterValues;->mHandSignLostNum:I

    return-void
.end method
