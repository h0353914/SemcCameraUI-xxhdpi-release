.class Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;
.super Ljava/lang/Object;
.source "ResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/research/ResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PanoramaInfo"
.end annotation


# instance fields
.field private mSuccessNum:I

.field private mTryNum:I

.field private mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;


# direct methods
.method static bridge synthetic -$$Nest$msendPanoramaInfo(Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->sendPanoramaInfo()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    .line 156
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    .line 157
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;-><init>()V

    return-void
.end method

.method private sendPanoramaInfo()V
    .locals 5

    .line 178
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    sget-object v1, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    if-ne v0, v1, :cond_1

    .line 179
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    iget v1, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 182
    sget-object v2, Lcom/sonymobile/cameracommon/research/parameters/Event$Category;->PANORAMA:Lcom/sonymobile/cameracommon/research/parameters/Event$Category;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_try"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_success"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iget v3, v3, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->mValue:I

    int-to-long v3, v3

    invoke-static {v2, v0, v1, v3, v4}, Lcom/sonymobile/cameracommon/research/idd/IddUtil;->sendEvent(Lcom/sonymobile/cameracommon/research/parameters/Event$Category;Ljava/lang/String;Ljava/lang/String;J)V

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->clear()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 190
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "PanoramaInfo#clear()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    .line 193
    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    .line 194
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->NOT_LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    return-void
.end method

.method public setViewerLaunched()V
    .locals 1

    .line 172
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setViewerLaunched()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 174
    :cond_0
    sget-object v0, Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;->LAUNCHED:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    iput-object v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mViewerLaunched:Lcom/sonymobile/cameracommon/research/parameters/Event$ViewerLaunched;

    return-void
.end method

.method public succeedInPanorama()V
    .locals 1

    .line 166
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "succeedInPanorama()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 168
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mSuccessNum:I

    return-void
.end method

.method public tryPanorama()V
    .locals 1

    .line 160
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "tryPanorama()"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 162
    :cond_0
    iget v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonymobile/cameracommon/research/ResearchUtil$PanoramaInfo;->mTryNum:I

    return-void
.end method
