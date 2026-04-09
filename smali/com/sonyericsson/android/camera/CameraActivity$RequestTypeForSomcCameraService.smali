.class final enum Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;
.super Ljava/lang/Enum;
.source "CameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RequestTypeForSomcCameraService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

.field public static final enum GYRO_CALIBRATION:Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

.field public static final enum SCREEN_OFF:Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;


# instance fields
.field public final mExtraValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 280
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    const-string v1, "GYRO_CALIBRATION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;->GYRO_CALIBRATION:Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    .line 281
    new-instance v0, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    const-string v1, "SCREEN_OFF"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;->SCREEN_OFF:Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    const/4 v0, 0x2

    .line 279
    new-array v0, v0, [Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;->GYRO_CALIBRATION:Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;->SCREEN_OFF:Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 285
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 286
    iput p3, p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;->mExtraValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;
    .locals 1

    .line 279
    const-class v0, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;
    .locals 1

    .line 279
    sget-object v0, Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;->$VALUES:[Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/CameraActivity$RequestTypeForSomcCameraService;

    return-object v0
.end method
