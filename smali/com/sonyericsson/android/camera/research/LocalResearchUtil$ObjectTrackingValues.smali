.class final Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;
.super Ljava/lang/Object;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ObjectTrackingValues"
.end annotation


# instance fields
.field private mTarget:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 528
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OFF"

    .line 529
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->mTarget:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$1;)V
    .locals 0

    .line 528
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;-><init>()V

    return-void
.end method


# virtual methods
.method public getParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;
    .locals 1

    const-string v0, "OFF"

    .line 540
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "OFF_OFF"

    .line 541
    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getObjectTrackingParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p0

    return-object p0

    .line 543
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->mTarget:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel;->getObjectTrackingParameter(Ljava/lang/String;)Lcom/sonymobile/cameracommon/research/parameters/ShootingLabel$Parameter;

    move-result-object p0

    return-object p0
.end method

.method public setObjectTrackingTarget(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "ON"

    .line 533
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->mTarget:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, "OFF"

    .line 535
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ObjectTrackingValues;->mTarget:Ljava/lang/String;

    :goto_0
    return-void
.end method
