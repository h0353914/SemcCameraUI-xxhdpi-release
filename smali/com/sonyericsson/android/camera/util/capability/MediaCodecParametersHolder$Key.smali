.class final enum Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;
.super Ljava/lang/Enum;
.source "MediaCodecParametersHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

.field public static final enum HDR_VIDEO_RECORDING_PROFILE:Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;


# direct methods
.method private static synthetic $values()[Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;
    .locals 1

    .line 45
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;->HDR_VIDEO_RECORDING_PROFILE:Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    filled-new-array {v0}, [Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    const-string v1, "HDR_VIDEO_RECORDING_PROFILE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;->HDR_VIDEO_RECORDING_PROFILE:Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    .line 45
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;->$values()[Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;
    .locals 1

    .line 45
    const-class v0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    return-object p0
.end method

.method public static values()[Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;
    .locals 1

    .line 45
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;->$VALUES:[Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    invoke-virtual {v0}, [Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    return-object v0
.end method
