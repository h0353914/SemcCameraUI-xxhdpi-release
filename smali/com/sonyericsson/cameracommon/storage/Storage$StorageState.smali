.class public final enum Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
.super Ljava/lang/Enum;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

.field public static final enum UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;


# instance fields
.field private final mDetailStateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .locals 7

    .line 41
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v4, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v5, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    filled-new-array/range {v0 .. v6}, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 42
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_NO_MEMORY_CARD:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    filled-new-array {v1}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v1

    const-string v2, "REMOVED"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->REMOVED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 43
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    filled-new-array {v1}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v1

    const-string v2, "AVAILABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 44
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_READY_LOW:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    filled-new-array {v1}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v1

    const-string v2, "AVAILABLE_NEAR_FULL"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 45
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_ACCESS:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FORMAT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v3, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_SHARED:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    filled-new-array {v1, v2, v3}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v1

    const-string v2, "UNAVAILABLE"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 47
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_READ_ONLY:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    filled-new-array {v1}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v1

    const-string v2, "READ_ONLY"

    const/4 v3, 0x4

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->READ_ONLY:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 48
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_FULL_COUNT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    filled-new-array {v1, v2}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v1

    const-string v2, "FULL"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->MEMORY_ERR_TIMED_OUT:Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    filled-new-array {v1}, [Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    move-result-object v1

    const-string v2, "CORRUPT"

    const/4 v3, 0x6

    invoke-direct {v0, v2, v3, v1}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;-><init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->CORRUPT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    .line 41
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->$values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/String;I[Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 52
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->mDetailStateList:Ljava/util/List;

    return-void
.end method

.method public static getState(Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .locals 6

    .line 63
    invoke-static {}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 64
    iget-object v4, v3, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->mDetailStateList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;

    .line 65
    invoke-virtual {p0, v5}, Lcom/sonyericsson/cameracommon/storage/CameraStorageManager$DetailStorageState;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 70
    :cond_2
    sget-object p0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->UNAVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .locals 1

    .line 41
    const-class v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;
    .locals 1

    .line 41
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    return-object v0
.end method


# virtual methods
.method public isWritable()Z
    .locals 1

    .line 79
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;->AVAILABLE_NEAR_FULL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
