.class Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;
.super Ljava/lang/Object;
.source "CameraController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SemiAutoStatus"
.end annotation


# instance fields
.field private mISO:J

.field private mSS:J


# direct methods
.method static bridge synthetic -$$Nest$mgetISO(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J
    .locals 2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->getISO()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mgetSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;)J
    .locals 2

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->getSS()J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mupdateISO(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->updateISO(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSS(Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->updateSS(J)V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 7442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getISO()J
    .locals 2

    .line 7455
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mISO:J

    return-wide v0
.end method

.method private getSS()J
    .locals 2

    .line 7459
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mSS:J

    return-wide v0
.end method

.method private updateISO(J)V
    .locals 0

    .line 7447
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mISO:J

    return-void
.end method

.method private updateSS(J)V
    .locals 0

    .line 7451
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mSS:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 7464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SemiAutoStatus{mISO="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mISO:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sonyericsson/android/camera/device/CameraController$SemiAutoStatus;->mSS:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
