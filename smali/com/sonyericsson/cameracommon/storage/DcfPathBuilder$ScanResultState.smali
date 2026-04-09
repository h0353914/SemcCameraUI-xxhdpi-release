.class final enum Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;
.super Ljava/lang/Enum;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ScanResultState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

.field public static final enum SCAN_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

.field public static final enum SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 101
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    const-string v1, "SCAN_SUCCEEDED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    .line 102
    new-instance v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    const-string v1, "SCAN_FAILED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    const/4 v0, 0x2

    .line 100
    new-array v0, v0, [Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;
    .locals 1

    .line 100
    const-class v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;
    .locals 1

    .line 100
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->$VALUES:[Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    return-object v0
.end method
