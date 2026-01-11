.class public final enum Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;
.super Ljava/lang/Enum;
.source "BypassCameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoHdrMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

.field public static final enum OFF:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

.field public static final enum ON:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;


# instance fields
.field public final code:I

.field public final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;
    .locals 2

    .line 247
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->OFF:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->ON:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    filled-new-array {v0, v1}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 248
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    const/4 v1, 0x0

    const-string v2, "off"

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->OFF:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    .line 249
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    const/4 v1, 0x1

    const-string v2, "on"

    const-string v3, "ON"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->ON:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    .line 247
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->$values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 252
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->code:I

    .line 253
    iput-object p4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;
    .locals 1

    .line 247
    const-class v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;
    .locals 1

    .line 247
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    invoke-virtual {v0}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    return-object v0
.end method
