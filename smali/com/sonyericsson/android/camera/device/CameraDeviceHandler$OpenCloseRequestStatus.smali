.class final enum Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;
.super Ljava/lang/Enum;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OpenCloseRequestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

.field public static final enum BYPASS_CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

.field public static final enum BYPASS_CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

.field public static final enum CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

.field public static final enum CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

.field public static final enum NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;
    .locals 5

    .line 668
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->BYPASS_CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->BYPASS_CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 669
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->NONE:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    .line 670
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    const-string v1, "BYPASS_CAMERA_OPENING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->BYPASS_CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    .line 671
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    const-string v1, "CAMERA_OPENING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_OPENING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    .line 672
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    const-string v1, "CAMERA_CLOSING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    .line 673
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    const-string v1, "BYPASS_CAMERA_CLOSING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->BYPASS_CAMERA_CLOSING:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    .line 668
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->$values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 668
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;
    .locals 1

    .line 668
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;
    .locals 1

    .line 668
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$OpenCloseRequestStatus;

    return-object v0
.end method
