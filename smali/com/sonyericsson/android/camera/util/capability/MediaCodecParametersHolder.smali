.class public Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;
.super Ljava/lang/Object;
.source "MediaCodecParametersHolder.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/util/capability/ParameterHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;
    }
.end annotation


# static fields
.field public static final INVALID_PROFILE:I


# instance fields
.field private mParameters:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private decideVideoHdrProfile()I
    .locals 3

    .line 103
    const-string/jumbo v0, "video/hevc"

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->getSupportedEncoderProfiles(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_3

    .line 105
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const/16 v1, 0x1000

    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    :goto_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_3

    .line 118
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "decideVideoHdrProfile: Profile Found: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    :goto_2
    return v0
.end method

.method private findEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 8

    .line 152
    new-instance p0, Landroid/media/MediaCodecList;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 153
    invoke-virtual {p0}, Landroid/media/MediaCodecList;->getCodecInfos()[Landroid/media/MediaCodecInfo;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p0, v2

    .line 154
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 158
    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_3

    aget-object v7, v4, v6

    .line 159
    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 160
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 161
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "findEncoderCodec: found info for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ": name = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 163
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Not found CodecInfo for: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getParameters()Landroid/os/Bundle;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->mParameters:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "get parameters but not prepared it."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->prepare()V

    .line 98
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->mParameters:Landroid/os/Bundle;

    return-object p0
.end method

.method private getSupportedEncoderProfiles(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->findEncoderCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object p0

    if-nez p0, :cond_0

    .line 128
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "codec is not found: type = "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v1

    .line 132
    const-string v2, ", codec = "

    if-nez v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "capabilities is not found: type = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 133
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0

    .line 138
    :cond_1
    iget-object v3, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    if-nez v3, :cond_2

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "profileLevel is not found: type = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 140
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    .line 139
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0

    .line 144
    :cond_2
    iget-object p0, v1, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_3

    aget-object v2, p0, v1

    .line 145
    iget v2, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public getVideoHdrProfile()I
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->getParameters()Landroid/os/Bundle;

    move-result-object p0

    .line 87
    sget-object v0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;->HDR_VIDEO_RECORDING_PROFILE:Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    .line 88
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public prepare()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->mParameters:Landroid/os/Bundle;

    if-nez v0, :cond_1

    .line 64
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "prepare parameters from media codec: E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 67
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->mParameters:Landroid/os/Bundle;

    .line 70
    sget-object v1, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;->HDR_VIDEO_RECORDING_PROFILE:Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/MediaCodecParametersHolder;->decideVideoHdrProfile()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    .line 72
    const-string p0, "prepare parameters from media codec: X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_1
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "already prepared"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
