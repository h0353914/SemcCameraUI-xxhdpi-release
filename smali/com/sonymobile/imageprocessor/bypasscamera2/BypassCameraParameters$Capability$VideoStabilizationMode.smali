.class public final enum Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;
.super Ljava/lang/Enum;
.source "BypassCameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoStabilizationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

.field public static final enum INTELLIGENT_ACTIVE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

.field public static final enum OFF:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

.field public static final enum STEADY_SHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;


# instance fields
.field public final code:I

.field public final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;
    .locals 3

    .line 193
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->OFF:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->STEADY_SHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    sget-object v2, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->INTELLIGENT_ACTIVE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    filled-new-array {v0, v1, v2}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 194
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    const/4 v1, 0x0

    const-string v2, "off"

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->OFF:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    .line 195
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    const/4 v1, 0x1

    const-string v2, "on"

    const-string v3, "STEADY_SHOT"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->STEADY_SHOT:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    .line 196
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    const/4 v1, 0x2

    const-string v2, "intelligent_active"

    const-string v3, "INTELLIGENT_ACTIVE"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->INTELLIGENT_ACTIVE:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    .line 193
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->$values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

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

    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 199
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->code:I

    .line 200
    iput-object p4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;
    .locals 1

    .line 193
    const-class v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;
    .locals 1

    .line 193
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    invoke-virtual {v0}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    return-object v0
.end method
