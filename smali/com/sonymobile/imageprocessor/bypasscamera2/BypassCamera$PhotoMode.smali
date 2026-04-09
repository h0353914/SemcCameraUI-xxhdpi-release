.class public final enum Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;
.super Ljava/lang/Enum;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhotoMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

.field public static final enum NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;


# instance fields
.field private final mModeCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    const/4 v0, 0x1

    .line 31
    new-array v0, v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->NORMAL:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->mModeCode:I

    return-void
.end method

.method static synthetic access$100(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;)I
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->getModeCode()I

    move-result p0

    return p0
.end method

.method private getModeCode()I
    .locals 0

    .line 42
    iget p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->mModeCode:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;
    .locals 1

    .line 31
    const-class v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;
    .locals 1

    .line 31
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    invoke-virtual {v0}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$PhotoMode;

    return-object v0
.end method
