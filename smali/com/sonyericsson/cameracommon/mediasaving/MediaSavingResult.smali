.class public final enum Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
.super Ljava/lang/Enum;
.source "MediaSavingResult.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

.field public static final enum FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

.field public static final enum FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

.field public static final enum SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;


# instance fields
.field public final mResultCode:I

.field public final mSuccess:Z

.field public final mTextId:I


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .locals 3

    .line 9
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v1, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    sget-object v2, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    filled-new-array {v0, v1, v2}, [Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v6, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    const/4 v4, -0x1

    const/4 v5, -0x1

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;-><init>(Ljava/lang/String;IZII)V

    sput-object v6, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->SUCCESS:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 14
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    const v11, 0x7f0f0445

    const/4 v12, 0x0

    const-string v8, "FAIL"

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;-><init>(Ljava/lang/String;IZII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 18
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    const v5, 0x7f0f02cd

    const/4 v6, 0x0

    const-string v2, "FAIL_MEMORY_FULL"

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;-><init>(Ljava/lang/String;IZII)V

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->FAIL_MEMORY_FULL:Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    .line 9
    invoke-static {}, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->$values()[Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-boolean p3, p0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mSuccess:Z

    .line 32
    iput p4, p0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mTextId:I

    .line 33
    iput p5, p0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->mResultCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .locals 1

    .line 9
    const-class v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;
    .locals 1

    .line 9
    sget-object v0, Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->$VALUES:[Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/mediasaving/MediaSavingResult;

    return-object v0
.end method
