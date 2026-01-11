.class public final enum Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;
.super Ljava/lang/Enum;
.source "BypassCameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuperSlowMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

.field public static final enum OFF:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

.field public static final enum ON:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;


# instance fields
.field public final code:I

.field public final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;
    .locals 2

    .line 207
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->OFF:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    sget-object v1, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->ON:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    filled-new-array {v0, v1}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 208
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    const/4 v1, 0x0

    const-string v2, "off"

    const-string v3, "OFF"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->OFF:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    .line 209
    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    const/4 v1, 0x1

    const-string v2, "on"

    const-string v3, "ON"

    invoke-direct {v0, v3, v1, v1, v2}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->ON:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    .line 207
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->$values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

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

    .line 211
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 212
    iput p3, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->code:I

    .line 213
    iput-object p4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;
    .locals 1

    .line 207
    const-class v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    return-object p0
.end method

.method public static values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;
    .locals 1

    .line 207
    sget-object v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->$VALUES:[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    invoke-virtual {v0}, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    return-object v0
.end method
