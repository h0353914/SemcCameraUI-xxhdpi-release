.class public final enum Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;
.super Ljava/lang/Enum;
.source "CameraStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GrantCheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

.field public static final enum GRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

.field public static final enum READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

.field public static final enum UNGRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 92
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    const-string v1, "GRANTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->GRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    .line 93
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    const-string v1, "UNGRANTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->UNGRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    .line 94
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    const-string v1, "READ_ONLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    const/4 v0, 0x3

    .line 91
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->GRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->UNGRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;
    .locals 1

    .line 91
    const-class v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;
    .locals 1

    .line 91
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$GrantCheckResult;

    return-object v0
.end method
