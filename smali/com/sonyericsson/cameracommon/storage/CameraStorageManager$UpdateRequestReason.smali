.class public final enum Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;
.super Ljava/lang/Enum;
.source "CameraStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/CameraStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UpdateRequestReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field public static final enum APP_CLOSE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field public static final enum APP_LAUNCH:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field public static final enum APP_LAUNCH_WITH_UNTRUSTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field public static final enum PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field public static final enum PHOTO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field public static final enum RECEIVE_OTHER_ACTION:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field public static final enum RECEIVE_STORAGE_EJECTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field public static final enum RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field public static final enum STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

.field public static final enum VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 62
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const-string v1, "APP_LAUNCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 63
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const-string v1, "APP_LAUNCH_WITH_UNTRUSTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH_WITH_UNTRUSTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 64
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const-string v1, "APP_CLOSE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_CLOSE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 65
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const-string v1, "PERIODIC_UPDATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 66
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const-string v1, "PHOTO_STORING_COMPLETED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PHOTO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 67
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const-string v1, "VIDEO_STORING_COMPLETED"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 68
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const-string v1, "STORING_FAILED"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 69
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const-string v1, "RECEIVE_STORAGE_MOUNTED"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 70
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const-string v1, "RECEIVE_STORAGE_EJECTED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_EJECTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    .line 71
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const-string v1, "RECEIVE_OTHER_ACTION"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_OTHER_ACTION:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    const/16 v0, 0xa

    .line 61
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_LAUNCH_WITH_UNTRUSTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->APP_CLOSE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PERIODIC_UPDATE:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->PHOTO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->VIDEO_STORING_COMPLETED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->STORING_FAILED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_MOUNTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_STORAGE_EJECTED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    aput-object v1, v0, v10

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->RECEIVE_OTHER_ACTION:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;
    .locals 1

    .line 61
    const-class v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;
    .locals 1

    .line 61
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$UpdateRequestReason;

    return-object v0
.end method
