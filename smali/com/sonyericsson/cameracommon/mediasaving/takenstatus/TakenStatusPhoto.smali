.class public Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;
.super Ljava/lang/Object;
.source "TakenStatusPhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TakenStatusPhoto"


# instance fields
.field protected mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

.field public mImage:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 48
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    .line 49
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    return-void
.end method


# virtual methods
.method public isFront()Z
    .locals 1

    .line 60
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->FRONT:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public log()V
    .locals 4

    .line 71
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Image            : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    if-nez v3, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    .line 72
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 71
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
