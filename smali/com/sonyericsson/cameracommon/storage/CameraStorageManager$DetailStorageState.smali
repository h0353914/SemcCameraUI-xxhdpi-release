.class public final enum Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
.super Ljava/lang/Enum;
.source "CameraStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DetailStorageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_FULL_COUNT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

.field public static final enum MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 76
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 77
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_READY_LOW"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 78
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_READ_ONLY"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 79
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_SHARED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 80
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_FORMAT"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 81
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_NO_MEMORY_CARD"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 82
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_ACCESS"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 83
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_FULL"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 84
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_TIMED_OUT"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 85
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_ERR_FULL_COUNT"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL_COUNT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 86
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_NO_DCIM"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 87
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_CHECKING"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 88
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const-string v1, "MEMORY_UNGRANTED"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    const/16 v0, 0xd

    .line 75
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL_COUNT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v11

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_NO_DCIM:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v12

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_CHECKING:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v13

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_UNGRANTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    aput-object v1, v0, v14

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .locals 1

    .line 75
    const-class v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;
    .locals 1

    .line 75
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    return-object v0
.end method
