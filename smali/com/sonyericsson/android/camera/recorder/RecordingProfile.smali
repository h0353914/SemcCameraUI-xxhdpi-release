.class public Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
.super Ljava/lang/Object;
.source "RecordingProfile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    }
.end annotation


# static fields
.field public static final GOOGLE_SLOW_MOTION_CAPTURE_RATE:I = 0x78

.field public static final GOOGLE_SLOW_MOTION_VIDEO_BIT_RATE:I = 0xbebc20

.field public static final GOOGLE_SLOW_MOTION_VIDEO_FRAME_RATE:I = 0x1e

.field public static final I_FRAME_INTERVAL_SECONDS:I = 0x1

.field public static final MIN_RECORDING_DURATION:I = 0x1

.field public static final QUALITY_4K_UHD_30FPS:I = 0x64

.field public static final VIDEO_AUDIO_BIT_RATE_AAC:I = 0x26160

.field public static final VIDEO_AUDIO_BIT_RATE_AMR_NB:I = 0x2fa8

.field public static final VIDEO_AUDIO_CHANNEL_MONO:I = 0x1

.field public static final VIDEO_AUDIO_CHANNEL_STEREO:I = 0x2

.field public static final VIDEO_AUDIO_SAMPLE_RATE:I = 0xbb80

.field public static final VIDEO_AUDIO_SAMPLE_RATE_MMS:I = 0x1f40

.field public static final VIDEO_BIT_RATE_4K_UHD_AVC_30FPS:I = 0x280de80

.field public static final VIDEO_BIT_RATE_4K_UHD_HDR_24FPS:I = 0x2faf080

.field public static final VIDEO_BIT_RATE_4K_UHD_HEVC_30FPS:I = 0x2160ec0

.field public static final VIDEO_BIT_RATE_FULL_HD:I = 0x10b0760

.field public static final VIDEO_BIT_RATE_FULL_HD_60FPS:I = 0x1c9c380

.field public static final VIDEO_BIT_RATE_HD:I = 0xb71b00

.field public static final VIDEO_BIT_RATE_HD_120FPS:I = 0x2faf080

.field public static final VIDEO_BIT_RATE_LOW:I = 0x33450

.field public static final VIDEO_BIT_RATE_SQUARE_FULL_HD:I = 0x989680

.field public static final VIDEO_BIT_RATE_VGA:I = 0x3640e3

.field public static final VIDEO_FRAME_RATE_24FPS:I = 0x18

.field public static final VIDEO_FRAME_RATE_30FPS:I = 0x1e

.field public static final VIDEO_FRAME_RATE_60FPS:I = 0x3c

.field public static final VIDEO_FRAME_RATE_HD_120FPS:I = 0x78

.field public static final VIDEO_FRAME_RATE_MMS:I = 0xf

.field private static mEncoderLock:Ljava/lang/Object;

.field private static sEncoder:Landroid/media/MediaCodec;


# instance fields
.field private final audioBitRate:I

.field private final audioChannels:I

.field private final audioCodec:I

.field private final audioSampleRate:I

.field private final averageFileSize:J

.field private final dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

.field private final extension:Ljava/lang/String;

.field private final fileFormat:I

.field private final isHdr:Z

.field private final isMms:Z

.field private final mimeType:Ljava/lang/String;

.field private final minFileSize:J

.field private final operatingRate:I

.field private final progressInterval:I

.field private final quality:I

.field private final videoBitRate:I

.field private final videoBitRateMode:I

.field private final videoCodec:I

.field private final videoFrameHeight:I

.field private final videoFrameRate:I

.field private final videoFrameWidth:I


# direct methods
.method static bridge synthetic -$$Nest$sfgetmEncoderLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mEncoderLock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetsEncoder()Landroid/media/MediaCodec;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->sEncoder:Landroid/media/MediaCodec;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smcomputeSize(JJJ)J
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->computeSize(JJJ)J

    move-result-wide p0

    return-wide p0
.end method

.method static bridge synthetic -$$Nest$smdecideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$smdecideQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I
    .locals 0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mEncoderLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;ZZ)V
    .locals 3

    move-object v0, p0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 134
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->fileFormat:I

    move v1, p2

    .line 135
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameRate:I

    move v1, p3

    .line 136
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameWidth:I

    move v1, p4

    .line 137
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameHeight:I

    move v1, p5

    .line 138
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRate:I

    move v1, p6

    .line 139
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRateMode:I

    move v1, p7

    .line 140
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoCodec:I

    move v1, p8

    .line 141
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->quality:I

    move v1, p9

    .line 142
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioBitRate:I

    move v1, p10

    .line 143
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioChannels:I

    move v1, p11

    .line 144
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioSampleRate:I

    move v1, p12

    .line 145
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioCodec:I

    move/from16 v1, p13

    .line 146
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->operatingRate:I

    move-object/from16 v1, p14

    .line 147
    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->extension:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 148
    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mimeType:Ljava/lang/String;

    move-wide/from16 v1, p16

    .line 149
    iput-wide v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->averageFileSize:J

    move-wide/from16 v1, p18

    .line 150
    iput-wide v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->minFileSize:J

    move/from16 v1, p20

    .line 151
    iput v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->progressInterval:I

    move-object/from16 v1, p21

    .line 152
    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move/from16 v1, p22

    .line 153
    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isMms:Z

    move/from16 v1, p23

    .line 154
    iput-boolean v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isHdr:Z

    return-void
.end method

.method synthetic constructor <init>(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;ZZLcom/sonyericsson/android/camera/recorder/RecordingProfile-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p23}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;-><init>(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;ZZ)V

    return-void
.end method

.method private static computeSize(JJJ)J
    .locals 0

    add-long/2addr p0, p2

    mul-long/2addr p0, p4

    const-wide/16 p2, 0x8

    .line 431
    div-long/2addr p0, p2

    const-wide/16 p2, 0x400

    div-long/2addr p0, p2

    return-wide p0
.end method

.method private static createMediaFormat(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/media/MediaFormat;
    .locals 3

    .line 689
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoCodec()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "video/hevc"

    goto :goto_0

    .line 690
    :cond_0
    const-string/jumbo v0, "video/avc"

    .line 692
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result v1

    .line 693
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameHeight()I

    move-result v2

    .line 692
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    .line 695
    const-string v1, "color-format"

    const v2, 0x7f000789

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 697
    const-string v1, "bitrate"

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoBitRate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 698
    const-string v1, "frame-rate"

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameRate()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 699
    const-string v1, "i-frame-interval"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 701
    const-string v1, "priority"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 703
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getOperatingRate()I

    move-result v1

    if-lez v1, :cond_1

    .line 704
    const-string v1, "operating-rate"

    .line 705
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getOperatingRate()I

    move-result v2

    .line 704
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 707
    const-string/jumbo v1, "ts-schema"

    const-string v2, "android.generic.1+0"

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    :cond_1
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->setupVideoEncodingProfileAndLevel(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Landroid/media/MediaFormat;)V

    .line 712
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getDataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->standard:I

    const-string v2, "color-standard"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 713
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getDataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->transfer:I

    const-string v2, "color-transfer"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 714
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getDataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    move-result-object v1

    iget v1, v1, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->range:I

    const-string v2, "color-range"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 716
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoBitRateMode()I

    move-result v1

    if-ltz v1, :cond_2

    .line 717
    const-string v1, "bitrate-mode"

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoBitRateMode()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method private static decideDefaultQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I
    .locals 1

    .line 523
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static decideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I
    .locals 2

    .line 437
    const-string v0, "Don\'t set parameters."

    if-eqz p0, :cond_1

    .line 441
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/16 v1, 0x1e

    packed-switch p0, :pswitch_data_0

    .line 472
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/16 v1, 0xf

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x78

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x3c

    goto :goto_0

    .line 452
    :pswitch_3
    sget-object p0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne p1, p0, :cond_0

    const/16 v1, 0x18

    :cond_0
    :goto_0
    :pswitch_4
    return v1

    .line 438
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method private static decideQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I
    .locals 3

    .line 481
    const-string v0, "Don\'t set parameters."

    if-eqz p0, :cond_1

    .line 485
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 512
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x6

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x64

    .line 515
    :goto_0
    invoke-static {v0}, Landroid/media/CamcorderProfile;->hasProfile(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 518
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideDefaultQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I

    move-result p0

    return p0

    .line 482
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 4

    const-string v0, "##### "

    const/4 v1, 0x1

    .line 828
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 830
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " , value = null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static dumpMediaFormatParameters(Landroid/media/MediaFormat;)V
    .locals 1

    .line 810
    const-string v0, "##### ##### dumpSetMediaFormatParameters ##### #####"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 811
    const-string v0, "color-format"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 812
    const-string v0, "bitrate"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 813
    const-string v0, "bitrate-mode"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 814
    const-string v0, "frame-rate"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 815
    const-string v0, "i-frame-interval"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 816
    const-string v0, "operating-rate"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 817
    const-string/jumbo v0, "ts-schema"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatStringParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 818
    const-string v0, "profile"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 819
    const-string v0, "level"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 820
    const-string v0, "color-standard"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 821
    const-string v0, "color-transfer"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 822
    const-string v0, "color-range"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    .line 823
    const-string v0, "priority"

    invoke-static {v0, p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatIntParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V

    return-void
.end method

.method private static dumpMediaFormatStringParameter(Ljava/lang/String;Landroid/media/MediaFormat;)V
    .locals 4

    const-string v0, "##### "

    const/4 v1, 0x1

    .line 836
    :try_start_0
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1, p0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 838
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " , value = null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static getVideoFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I
    .locals 0

    .line 170
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->decideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result p0

    return p0
.end method

.method public static releaseEncoder()V
    .locals 4

    .line 672
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mEncoderLock:Ljava/lang/Object;

    monitor-enter v0

    .line 673
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->sEncoder:Landroid/media/MediaCodec;

    if-nez v1, :cond_0

    .line 674
    monitor-exit v0

    return-void

    .line 676
    :cond_0
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "releaseEncoder"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 677
    :cond_1
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->sEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    const/4 v1, 0x0

    .line 678
    sput-object v1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->sEncoder:Landroid/media/MediaCodec;

    .line 679
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static setupEncoder(Landroid/media/MediaFormat;Landroid/view/Surface;)V
    .locals 3

    .line 734
    invoke-static {}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->releaseEncoder()V

    .line 735
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setupEncoder"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 736
    :cond_0
    new-instance v0, Landroid/media/MediaCodecList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/MediaCodecList;-><init>(I)V

    .line 738
    :try_start_0
    invoke-virtual {v0, p0}, Landroid/media/MediaCodecList;->findEncoderForFormat(Landroid/media/MediaFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->sEncoder:Landroid/media/MediaCodec;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 739
    invoke-virtual {v0, p0, v2, v2, v1}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 740
    sget-object v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->sEncoder:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setInputSurface(Landroid/view/Surface;)V

    .line 741
    sget-object p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->sEncoder:Landroid/media/MediaCodec;

    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;)V

    .line 763
    sget-object p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->sEncoder:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    .line 764
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatParameters(Landroid/media/MediaFormat;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 766
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dumpMediaFormatParameters(Landroid/media/MediaFormat;)V

    .line 767
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown codec e : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setupRecordingSurface(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/view/Surface;
    .locals 1

    .line 661
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v0

    .line 662
    invoke-static {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->createMediaFormat(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Landroid/media/MediaFormat;

    move-result-object p0

    .line 663
    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->setupEncoder(Landroid/media/MediaFormat;Landroid/view/Surface;)V

    return-object v0
.end method

.method private static setupVideoEncodingProfileAndLevel(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Landroid/media/MediaFormat;)V
    .locals 6

    .line 773
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getIsHdr()Z

    move-result v0

    const-string v1, "level"

    const-string v2, "profile"

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 775
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getVideoHdrRecordingProfile()I

    move-result p0

    .line 774
    invoke-virtual {p1, v2, p0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 776
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 778
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result v0

    const/16 v4, 0xf00

    const/16 v5, 0x8

    if-lt v0, v4, :cond_2

    .line 779
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoCodec()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 780
    invoke-virtual {p1, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 782
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 785
    :cond_1
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 787
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 790
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameWidth()I

    move-result v0

    const/16 v4, 0x280

    if-lt v0, v4, :cond_3

    .line 791
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getVideoFrameHeight()I

    move-result p0

    const/16 v0, 0x1e0

    if-lt p0, v0, :cond_3

    .line 792
    invoke-virtual {p1, v2, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 794
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 797
    :cond_3
    invoke-virtual {p1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 799
    invoke-virtual {p1, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public compare(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 616
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 619
    :cond_2
    iget-object v2, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    if-nez v2, :cond_3

    return v1

    .line 623
    :cond_3
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isMms:Z

    iget-boolean v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isMms:Z

    if-ne v2, v3, :cond_5

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isHdr:Z

    iget-boolean v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isHdr:Z

    if-ne v2, v3, :cond_5

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->averageFileSize:J

    iget-wide v4, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->averageFileSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->minFileSize:J

    iget-wide v4, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->minFileSize:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v2, v2, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->range:I

    iget-object v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v3, v3, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->range:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v2, v2, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->standard:I

    iget-object v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v3, v3, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->standard:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v2, v2, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->transfer:I

    iget-object v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    iget v3, v3, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;->transfer:I

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->extension:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->extension:Ljava/lang/String;

    .line 631
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mimeType:Ljava/lang/String;

    .line 632
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->progressInterval:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->progressInterval:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->fileFormat:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->fileFormat:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameRate:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameRate:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameWidth:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameWidth:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameHeight:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameHeight:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRate:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRate:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRateMode:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRateMode:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoCodec:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoCodec:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->quality:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->quality:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioBitRate:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioBitRate:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioChannels:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioChannels:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioSampleRate:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioSampleRate:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioCodec:I

    iget v3, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioCodec:I

    if-ne v2, v3, :cond_5

    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->operatingRate:I

    iget p1, p1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->operatingRate:I

    if-eq p0, p1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public getAudioBitRate()I
    .locals 0

    .line 563
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioBitRate:I

    return p0
.end method

.method public getAudioChannels()I
    .locals 0

    .line 567
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioChannels:I

    return p0
.end method

.method public getAudioCodec()I
    .locals 0

    .line 575
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioCodec:I

    return p0
.end method

.method public getAudioSampleRate()I
    .locals 0

    .line 571
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->audioSampleRate:I

    return p0
.end method

.method public getAverageFileSize()J
    .locals 2

    .line 587
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->averageFileSize:J

    return-wide v0
.end method

.method public getDataSpace()Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->dataSpace:Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    return-object p0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->extension:Ljava/lang/String;

    return-object p0
.end method

.method public getFileFormat()I
    .locals 0

    .line 531
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->fileFormat:I

    return p0
.end method

.method public getIsHdr()Z
    .locals 0

    .line 583
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isHdr:Z

    return p0
.end method

.method public getIsMms()Z
    .locals 0

    .line 579
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->isMms:Z

    return p0
.end method

.method public getMime()Ljava/lang/String;
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->mimeType:Ljava/lang/String;

    return-object p0
.end method

.method public getMinFileSize()J
    .locals 2

    .line 591
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->minFileSize:J

    return-wide v0
.end method

.method public getOperatingRate()I
    .locals 0

    .line 599
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->operatingRate:I

    return p0
.end method

.method public getProgressInterval()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->progressInterval:I

    return p0
.end method

.method public getQuality()I
    .locals 0

    .line 559
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->quality:I

    return p0
.end method

.method public getVideoBitRate()I
    .locals 0

    .line 547
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRate:I

    return p0
.end method

.method public getVideoBitRateMode()I
    .locals 0

    .line 551
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoBitRateMode:I

    return p0
.end method

.method public getVideoCodec()I
    .locals 0

    .line 555
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoCodec:I

    return p0
.end method

.method public getVideoFrameHeight()I
    .locals 0

    .line 543
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameHeight:I

    return p0
.end method

.method public getVideoFrameRate()I
    .locals 0

    .line 535
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameRate:I

    return p0
.end method

.method public getVideoFrameWidth()I
    .locals 0

    .line 539
    iget p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->videoFrameWidth:I

    return p0
.end method
