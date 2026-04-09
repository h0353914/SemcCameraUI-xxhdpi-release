.class final Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;
.super Ljava/lang/Object;
.source "BypassCameraStaticParameters.java"


# static fields
.field private static final DELIMITER_COMMA:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "BypassCameraStaticParameters"


# instance fields
.field private final mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;


# direct methods
.method public constructor <init>(Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;->mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    return-void
.end method


# virtual methods
.method public getSupportedBurst()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;->mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    const-string v1, "burst-values"

    invoke-virtual {p0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, ","

    .line 95
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    move v2, v1

    .line 97
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 98
    aget-object v3, p0, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportedBurst() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getSupportedClimaxRecognition()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;->mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    const-string v1, "climax-recognition-values"

    invoke-virtual {p0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, ","

    .line 73
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    move v2, v1

    .line 75
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 76
    aget-object v3, p0, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportedClimaxRecognition() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getSupportedHighFrameRateVideoConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;->mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    const-string v0, "video-high-frame-rate-configuration"

    invoke-virtual {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedIntelligentActiveConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 154
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;->mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    const-string v0, "vs-intelligent-active-configuration"

    invoke-virtual {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedSteadyShotConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;->mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    const-string v0, "vs-steady-shot-configuration"

    invoke-virtual {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedSuperSlowConfiguration()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;->mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    const-string v0, "video-super-slow-configuration"

    invoke-virtual {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/VideoConfiguration;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSupportedSuperSlowmotion()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;->mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    const-string v1, "super-slow-values"

    invoke-virtual {p0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, ","

    .line 41
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    move v2, v1

    .line 43
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 44
    aget-object v3, p0, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportedSuperSlowmotion() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getSupportedVideoStabilizer()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;->mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    const-string v1, "vs-values"

    invoke-virtual {p0, v1}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v2, ","

    .line 116
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    move v2, v1

    .line 118
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 119
    aget-object v3, p0, v2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_0
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportedVideoStabilizer() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public isVideoHdrSupported()Z
    .locals 5

    .line 164
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/capability/BypassCameraStaticParameters;->mParams:Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;

    const-string v0, "video-hdr-values"

    invoke-virtual {p0, v0}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, ","

    .line 168
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 169
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    const-string v4, "on"

    .line 170
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method
