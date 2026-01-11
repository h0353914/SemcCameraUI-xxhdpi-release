.class public final enum Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;
.super Ljava/lang/Enum;
.source "CameraStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateInterval"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

.field public static final enum IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

.field public static final enum LOW_MEMORY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

.field public static final enum NORMAL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

.field public static final enum STOP:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

.field private static final THRESHOLD_LOW_MEMORY:J = 0x4b000L


# instance fields
.field private final intervalSec:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;
    .locals 4

    .line 89
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->STOP:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->LOW_MEMORY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->NORMAL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    filled-new-array {v0, v1, v2, v3}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 90
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    const/4 v1, -0x1

    const-string v2, "STOP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->STOP:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    .line 91
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->IMMEDIATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    .line 92
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    const/4 v1, 0x2

    const/16 v2, 0x3e8

    const-string v3, "LOW_MEMORY"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->LOW_MEMORY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    .line 93
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    const/4 v1, 0x3

    const/16 v2, 0x2710

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->NORMAL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    .line 89
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->$values()[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->intervalSec:I

    return-void
.end method

.method public static decide(J)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;
    .locals 2

    const-wide/32 v0, 0xf000

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    .line 115
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->STOP:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    return-object p0

    :cond_0
    const-wide/32 v0, 0x4b000

    cmp-long p0, p0, v0

    if-gez p0, :cond_1

    .line 118
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->LOW_MEMORY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    return-object p0

    .line 122
    :cond_1
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->NORMAL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;
    .locals 1

    .line 89
    const-class v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;
    .locals 1

    .line 89
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;

    return-object v0
.end method


# virtual methods
.method public getIntervalMillis()I
    .locals 0

    .line 132
    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateInterval;->intervalSec:I

    return p0
.end method
