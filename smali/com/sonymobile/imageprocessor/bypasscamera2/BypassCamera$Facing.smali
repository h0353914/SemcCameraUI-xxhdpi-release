.class public final enum Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;
.super Ljava/lang/Enum;
.source "BypassCamera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Facing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

.field public static final enum BACK:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

.field public static final enum FRONT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;


# instance fields
.field private final mCameraId:I


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;
    .locals 2

    .line 90
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->BACK:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->FRONT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    filled-new-array {v0, v1}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic -$$Nest$mgetCameraId(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;)I
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->getCameraId()I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 91
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    const-string v1, "BACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->BACK:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    .line 92
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    const-string v1, "FRONT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->FRONT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    .line 90
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->$values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 98
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->mCameraId:I

    return-void
.end method

.method private getCameraId()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->mCameraId:I

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;
    .locals 1

    .line 90
    const-class v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;
    .locals 1

    .line 90
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    invoke-virtual {v0}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCamera$Facing;

    return-object v0
.end method
