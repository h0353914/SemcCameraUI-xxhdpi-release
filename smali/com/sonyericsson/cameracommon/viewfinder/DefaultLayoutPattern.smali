.class public final enum Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;
.super Ljava/lang/Enum;
.source "DefaultLayoutPattern.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;",
        ">;",
        "Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum SEMIAUTO_SEEKING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

.field public static final enum ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;
    .locals 13

    .line 17
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v1, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v2, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v3, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v4, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v5, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v6, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v7, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v8, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v9, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v10, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v11, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    sget-object v12, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SEMIAUTO_SEEKING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    filled-new-array/range {v0 .. v12}, [Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PREVIEW:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 27
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "CLEAR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CLEAR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 31
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "ZOOMING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->ZOOMING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 35
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "FOCUS_SEARCHING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_SEARCHING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 39
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "FOCUS_DONE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->FOCUS_DONE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 43
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "CAPTURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->CAPTURE:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 49
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "BURST_SHOOTING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->BURST_SHOOTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 53
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "RECORDING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 57
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "MODE_SELECTOR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->MODE_SELECTOR:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 61
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "SETTING"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SETTING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 65
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "SELFTIMER"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SELFTIMER:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 69
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "PAUSE_RECORDING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 73
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    const-string v1, "SEMIAUTO_SEEKING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->SEMIAUTO_SEEKING:Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    .line 17
    invoke-static {}, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->$values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;
    .locals 1

    .line 17
    const-class v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;
    .locals 1

    .line 17
    sget-object v0, Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->$VALUES:[Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    invoke-virtual {v0}, [Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/cameracommon/viewfinder/DefaultLayoutPattern;

    return-object v0
.end method
