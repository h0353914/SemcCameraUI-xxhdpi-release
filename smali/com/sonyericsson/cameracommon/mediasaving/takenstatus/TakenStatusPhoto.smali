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

.field public mIsSmallImage:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mIsSmallImage:Z

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mIsSmallImage:Z

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 59
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mIsSmallImage:Z

    .line 34
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;->UNKNOWN:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    .line 51
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    .line 52
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mFacing:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto$Facing;

    return-void
.end method


# virtual methods
.method public isFront()Z
    .locals 1

    .line 63
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
    .locals 3

    .line 74
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Image            : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusPhoto;->mImage:[B

    if-nez p0, :cond_0

    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 74
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-void
.end method
