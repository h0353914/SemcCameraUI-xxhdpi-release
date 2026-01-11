.class public Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
.super Ljava/lang/Object;
.source "InputDataInfo.java"


# instance fields
.field public final codec:Landroid/media/MediaCodec;

.field public final codecFormat:Landroid/media/MediaFormat;

.field public final source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;


# direct methods
.method private constructor <init>(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codecFormat:Landroid/media/MediaFormat;

    .line 28
    iput-object p2, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codec:Landroid/media/MediaCodec;

    .line 29
    iput-object p3, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->source:Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;

    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
    .locals 1

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;-><init>(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;)V

    return-object v0
.end method

.method public static create(Landroid/media/MediaFormat;Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    const-string v0, "mime"

    .line 47
    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, p0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 50
    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->create(Landroid/media/MediaFormat;Landroid/media/MediaCodec;Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataSource;)Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public mimeType()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/utility/encoder/InputDataInfo;->codecFormat:Landroid/media/MediaFormat;

    const-string v0, "mime"

    invoke-virtual {p0, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
