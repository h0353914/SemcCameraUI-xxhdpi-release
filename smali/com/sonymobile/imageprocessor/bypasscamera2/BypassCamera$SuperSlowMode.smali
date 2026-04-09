.class public final enum Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;
.super Ljava/lang/Enum;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuperSlowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

.field public static final enum SUPER_SLOW_MOTION:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

.field public static final enum SUPER_SLOW_SHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;


# instance fields
.field private final mModeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 72
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    const-string v1, "SUPER_SLOW_MOTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->SUPER_SLOW_MOTION:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    .line 73
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    const-string v1, "SUPER_SLOW_SHOT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->SUPER_SLOW_SHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    const/4 v0, 0x2

    .line 71
    new-array v0, v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->SUPER_SLOW_MOTION:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->SUPER_SLOW_SHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->mModeCode:I

    return-void
.end method

.method static synthetic access$300(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;)I
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->getModeCode()I

    move-result p0

    return p0
.end method

.method private getModeCode()I
    .locals 0

    .line 83
    iget p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->mModeCode:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;
    .locals 1

    .line 71
    const-class v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;
    .locals 1

    .line 71
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    invoke-virtual {v0}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$SuperSlowMode;

    return-object v0
.end method
