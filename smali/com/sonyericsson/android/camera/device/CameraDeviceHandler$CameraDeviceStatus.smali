.class final enum Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;
.super Ljava/lang/Enum;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "CameraDeviceStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

.field public static final enum STATUS_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

.field public static final enum STATUS_EVICTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

.field public static final enum STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

.field public static final enum STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

.field public static final enum STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;
    .locals 5

    .line 5171
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    sget-object v1, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    sget-object v2, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    sget-object v3, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_EVICTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    sget-object v4, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 5172
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const-string v1, "STATUS_RELEASED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_RELEASED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    .line 5173
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const-string v1, "STATUS_OPENED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_OPENED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    .line 5174
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const-string v1, "STATUS_READY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_READY:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    .line 5175
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const-string v1, "STATUS_EVICTED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_EVICTED:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    .line 5176
    new-instance v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    const-string v1, "STATUS_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->STATUS_ERROR:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    .line 5171
    invoke-static {}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->$values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5171
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;
    .locals 1

    .line 5171
    const-class v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;
    .locals 1

    .line 5171
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->$VALUES:[Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceStatus;

    return-object v0
.end method
