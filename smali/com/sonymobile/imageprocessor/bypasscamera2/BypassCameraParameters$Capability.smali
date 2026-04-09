.class Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;
.super Ljava/lang/Object;
.source "BypassCameraParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Capability"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$BurstMode;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$ClimaxRecognitionMode;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;,
        Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;
    }
.end annotation


# instance fields
.field public mBurstMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mClimaxRecognitionMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mHighFrameRateSupportedInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mIntelligentActiveSupportedInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSteadyShotSupportedInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mSuperSlowFrameNumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSuperSlowMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSuperSlowSupportedInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mVideoHdrMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mVideoStabilizationMode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mVideoStabilizationMode:Ljava/util/List;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowMode:Ljava/util/List;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mClimaxRecognitionMode:Ljava/util/List;

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mBurstMode:Ljava/util/List;

    .line 264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mVideoHdrMode:Ljava/util/List;

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowFrameNumList:Ljava/util/List;

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mHighFrameRateSupportedInfoList:Ljava/util/List;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSteadyShotSupportedInfoList:Ljava/util/List;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mIntelligentActiveSupportedInfoList:Ljava/util/List;

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowSupportedInfoList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addHighFrameRateSupportedInfo(III)V
    .locals 1

    .line 316
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mHighFrameRateSupportedInfoList:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;-><init>(III)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addIntelligentActiveSupportedInfo(III)V
    .locals 1

    .line 325
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mIntelligentActiveSupportedInfoList:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;-><init>(III)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSteadyShotSupportedInfo(III)V
    .locals 1

    .line 320
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSteadyShotSupportedInfoList:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;-><init>(III)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSuperSlowFrameNum(I)V
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowFrameNumList:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSuperSlowSupportedInfo(III)V
    .locals 1

    .line 330
    iget-object p0, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowSupportedInfoList:Ljava/util/List;

    new-instance v0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SupportedInfo;-><init>(III)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setBurstMode(I)V
    .locals 6

    .line 296
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$BurstMode;->values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$BurstMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 297
    iget v4, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$BurstMode;->code:I

    iget v5, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$BurstMode;->code:I

    and-int/2addr v5, p1

    if-ne v4, v5, :cond_0

    .line 298
    iget-object v4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mBurstMode:Ljava/util/List;

    iget-object v3, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$BurstMode;->value:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setClimaxRecognitionMode(I)V
    .locals 6

    .line 288
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$ClimaxRecognitionMode;->values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$ClimaxRecognitionMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 289
    iget v4, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$ClimaxRecognitionMode;->code:I

    iget v5, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$ClimaxRecognitionMode;->code:I

    and-int/2addr v5, p1

    if-ne v4, v5, :cond_0

    .line 290
    iget-object v4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mClimaxRecognitionMode:Ljava/util/List;

    iget-object v3, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$ClimaxRecognitionMode;->value:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSuperSlowMode(I)V
    .locals 6

    .line 280
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 281
    iget v4, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->code:I

    iget v5, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->code:I

    and-int/2addr v5, p1

    if-ne v4, v5, :cond_0

    .line 282
    iget-object v4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mSuperSlowMode:Ljava/util/List;

    iget-object v3, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$SuperSlowMode;->value:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVideoHdrMode(I)V
    .locals 6

    .line 304
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 305
    iget v4, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->code:I

    iget v5, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->code:I

    and-int/2addr v5, p1

    if-ne v4, v5, :cond_0

    .line 306
    iget-object v4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mVideoHdrMode:Ljava/util/List;

    iget-object v3, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoHdrMode;->value:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setVideoStabilizationMode(I)V
    .locals 6

    .line 272
    invoke-static {}, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->values()[Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 273
    iget v4, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->code:I

    iget v5, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->code:I

    and-int/2addr v5, p1

    if-ne v4, v5, :cond_0

    .line 274
    iget-object v4, p0, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability;->mVideoStabilizationMode:Ljava/util/List;

    iget-object v3, v3, Lcom/sonymobile/imageprocessor/bypasscamera2/BypassCameraParameters$Capability$VideoStabilizationMode;->value:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
