.class final enum Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;
.super Ljava/lang/Enum;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OpenClosePerformStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

.field public static final enum BYPASS_CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

.field public static final enum BYPASS_CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

.field public static final enum CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

.field public static final enum CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;
    .locals 5

    .line 677
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 678
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 679
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    const-string v1, "BYPASS_CAMERA_OPENED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 680
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    const-string v1, "CAMERA_OPENED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->CAMERA_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 681
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    const-string v1, "CAMERA_CLOSED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 682
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    const-string v1, "BYPASS_CAMERA_CLOSED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->BYPASS_CAMERA_CLOSED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    .line 677
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->$values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 677
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;
    .locals 1

    .line 677
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;
    .locals 1

    .line 677
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenClosePerformStatus;

    return-object v0
.end method
