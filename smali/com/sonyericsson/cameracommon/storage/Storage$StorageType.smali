.class public final enum Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
.super Ljava/lang/Enum;
.source "Storage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field public static final enum EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field public static final enum INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field public static final enum UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

.field public static final enum USB:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const-string v1, "INTERNAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 34
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const-string v1, "EXTERNAL_CARD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 35
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const-string v1, "USB"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->USB:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 36
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const-string v1, "UNKNOWN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    const/4 v0, 0x4

    .line 32
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->USB:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->UNKNOWN:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .locals 1

    .line 32
    const-class v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;
    .locals 1

    .line 32
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    return-object v0
.end method
