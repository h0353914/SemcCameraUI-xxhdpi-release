.class public final enum Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;
.super Ljava/lang/Enum;
.source "SavingTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/SavingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SavedFileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

.field public static final enum BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

.field public static final enum PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

.field public static final enum PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

.field public static final enum PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

.field public static final enum TIME_SHIFT:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

.field public static final enum VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;
    .locals 6

    .line 155
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    filled-new-array/range {v0 .. v5}, [Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 156
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const-string v1, "PHOTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 157
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const-string v1, "PHOTO_DURING_REC"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_DURING_REC:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 158
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const-string v1, "PHOTO_BOKEN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->PHOTO_BOKEN:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 159
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const-string v1, "VIDEO"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->VIDEO:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 160
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const-string v1, "BURST"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->BURST:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 161
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    const-string v1, "TIME_SHIFT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->TIME_SHIFT:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    .line 155
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->$values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;
    .locals 1

    .line 155
    const-class v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;
    .locals 1

    .line 155
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    return-object v0
.end method
