.class public final enum Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;
.super Ljava/lang/Enum;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageReadyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

.field public static final enum ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

.field public static final enum COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

.field public static final enum INIT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

.field public static final enum PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

.field public static final enum SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 92
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const-string v1, "INIT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->INIT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 93
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const-string v1, "PREPARING"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 94
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const-string v1, "ACCESSIBLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 95
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const-string v1, "SUSPENDED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    .line 96
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const-string v1, "COMPLETED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    const/4 v0, 0x5

    .line 91
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->INIT:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->PREPARING:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->ACCESSIBLE:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->SUSPENDED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->COMPLETED:Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;
    .locals 1

    .line 91
    const-class v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;
    .locals 1

    .line 91
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageReadyState;

    return-object v0
.end method
