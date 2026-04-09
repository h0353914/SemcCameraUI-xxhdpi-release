.class public final enum Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
.super Ljava/lang/Enum;
.source "CameraInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CameraId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

.field public static final enum FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;


# instance fields
.field private final mCameraDeviceId:Ljava/lang/String;

.field private final mCameraDeviceIdApi1:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "BACK"

    const-string v2, "0"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 38
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const-string v1, "FRONT"

    const-string v2, "1"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2, v4}, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mCameraDeviceId:Ljava/lang/String;

    .line 45
    iput p4, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mCameraDeviceIdApi1:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 1

    .line 36
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;
    .locals 1

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    return-object v0
.end method


# virtual methods
.method public getCameraDeviceId()Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mCameraDeviceId:Ljava/lang/String;

    return-object p0
.end method

.method public getCameraDeviceIdApi1()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->mCameraDeviceIdApi1:I

    return p0
.end method
