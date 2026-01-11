.class public Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
.super Ljava/lang/Object;
.source "RecordingProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAudioBitRate:I

.field private mAudioChannels:I

.field private mAudioCodec:I

.field private mAudioSampleRate:I

.field private mFileFormat:I

.field private mOperatingRate:I

.field private mQuality:I

.field private mResultExt:Ljava/lang/String;

.field private mResultMimeType:Ljava/lang/String;

.field private mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

.field private mVideoBitRate:I

.field private mVideoBitRateMode:I

.field private mVideoCodec:I

.field private mVideoFrameHeight:I

.field private mVideoFrameRate:I

.field private mVideoFrameWidth:I

.field private mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field private mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

.field private mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setupOutputFormatWithQuality(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 318
    const-string p1, ".mp4"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 319
    const-string/jumbo p1, "video/mp4"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    goto :goto_0

    .line 313
    :cond_0
    const-string p1, ".3gp"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 314
    const-string/jumbo p1, "video/3gpp"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private setupRecordingProfile()V
    .locals 8

    .line 326
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->-$$Nest$smdecideFrameRate(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameRate:I

    const/4 v0, 0x2

    .line 327
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mFileFormat:I

    .line 328
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    const/4 v1, 0x1

    .line 329
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRateMode:I

    .line 330
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->-$$Nest$smdecideQuality(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I

    move-result v2

    iput v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mQuality:I

    .line 332
    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;->INTELLIGENT_ACTIVE:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;->OFF:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 336
    iput v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mOperatingRate:I

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x78

    .line 334
    iput v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mOperatingRate:I

    .line 339
    :goto_1
    sget-object v2, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$2;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const v3, 0x2faf080

    const/4 v4, 0x5

    const v5, 0xbb80

    const v6, 0x26160

    const/4 v7, 0x3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    const v0, 0x33450

    .line 410
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 411
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    const/16 v0, 0x2fa8

    .line 412
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    const/16 v0, 0x1f40

    .line 413
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 414
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    goto/16 :goto_7

    :pswitch_1
    const v1, 0x3640e3

    .line 403
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 404
    iput v7, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    .line 405
    iput v6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    .line 406
    iput v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 407
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    goto/16 :goto_7

    .line 392
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_2

    .line 393
    iput v3, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    goto :goto_2

    :cond_2
    const v1, 0xb71b00

    .line 395
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 397
    :goto_2
    iput v7, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    .line 398
    iput v6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    .line 399
    iput v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 400
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    goto :goto_7

    :pswitch_3
    const v1, 0x989680

    .line 381
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 382
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_3

    .line 383
    iput v4, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    .line 385
    :cond_3
    iput v7, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    .line 386
    iput v6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    .line 387
    iput v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 388
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    goto :goto_7

    .line 367
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_4

    const v1, 0x1c9c380

    .line 368
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    goto :goto_3

    :cond_4
    const v1, 0x10b0760

    .line 370
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 371
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_5

    .line 372
    iput v4, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    .line 375
    :cond_5
    :goto_3
    iput v7, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    .line 376
    iput v6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    .line 377
    iput v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 378
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    goto :goto_7

    .line 346
    :pswitch_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v1, v2, :cond_8

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_6

    goto :goto_5

    .line 351
    :cond_6
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_7

    .line 352
    iput v3, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    goto :goto_4

    :cond_7
    const v1, 0x2160ec0

    .line 354
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 356
    :goto_4
    iput v4, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    goto :goto_6

    :cond_8
    :goto_5
    const v1, 0x280de80

    .line 349
    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    .line 358
    :goto_6
    iput v7, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    .line 359
    iput v6, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    .line 360
    iput v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    .line 361
    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    .line 421
    :goto_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 423
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameWidth:I

    if-ne v1, v2, :cond_9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameHeight:I

    if-eq v1, v2, :cond_a

    .line 424
    :cond_9
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameWidth:I

    .line 425
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameHeight:I

    :cond_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    .locals 29

    move-object/from16 v0, p0

    .line 228
    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_0

    .line 229
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    .line 230
    :cond_0
    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_1

    .line 232
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_PLUS_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    goto :goto_0

    .line 233
    :cond_1
    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_2

    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v2, :cond_2

    .line 235
    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_ULTRA_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 238
    :cond_2
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->setupRecordingProfile()V

    .line 240
    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-eq v1, v2, :cond_3

    .line 241
    iget v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mQuality:I

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->setupOutputFormatWithQuality(I)V

    goto :goto_1

    .line 243
    :cond_3
    const-string v1, ".mp4"

    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    .line 244
    const-string/jumbo v1, "video/mp4"

    iput-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    .line 249
    :goto_1
    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_4

    const/16 v1, 0x64

    goto :goto_2

    :cond_4
    const/16 v1, 0x3e8

    .line 253
    :goto_2
    iget v2, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    int-to-long v3, v2

    iget v2, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    int-to-long v5, v2

    const-wide/16 v7, 0x3c

    .line 254
    invoke-static/range {v3 .. v8}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->-$$Nest$smcomputeSize(JJJ)J

    move-result-wide v14

    .line 255
    iget v2, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    int-to-long v3, v2

    iget v2, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    int-to-long v5, v2

    const-wide/16 v7, 0x1

    invoke-static/range {v3 .. v8}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->-$$Nest$smcomputeSize(JJJ)J

    move-result-wide v12

    .line 261
    iget-object v2, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v2, v3, :cond_5

    const/4 v2, 0x6

    const/4 v3, 0x7

    goto :goto_4

    .line 266
    :cond_5
    iget v2, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameHeight:I

    const/16 v3, 0x2d0

    if-lt v2, v3, :cond_6

    const/4 v2, 0x1

    goto :goto_3

    :cond_6
    const/4 v2, 0x4

    :goto_3
    const/4 v3, 0x3

    .line 274
    :goto_4
    new-instance v11, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    const/4 v5, 0x2

    invoke-direct {v11, v2, v3, v5}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;-><init>(III)V

    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "videoSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mVideoHdr: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mAudioBitRate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mVideoBitRate: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "mFileFormat: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mFileFormat:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "mVideoFrameRate: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameRate:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "mVideoFrameWidth: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameWidth:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 283
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "mVideoFrameHeight: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameHeight:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mVideoBitRateMode: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRateMode:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 286
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mVideoCodec: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "mQuality: "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mQuality:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 288
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mAudioChannels: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mAudioSampleRate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 291
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mAudioCodec: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mOperatingRate: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mOperatingRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 293
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mResultExt: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mResultMimeType: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 295
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "averageFileSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "minFileSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 297
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "progressInterval: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dataSpace: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 301
    new-instance v27, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    iget v3, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mFileFormat:I

    iget v5, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameRate:I

    iget v6, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameWidth:I

    iget v7, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoFrameHeight:I

    iget v8, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRate:I

    iget v9, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoBitRateMode:I

    iget v10, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoCodec:I

    iget v2, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mQuality:I

    move-object/from16 v16, v11

    iget v11, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioBitRate:I

    move-wide/from16 v17, v12

    iget v12, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioChannels:I

    iget v13, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioSampleRate:I

    move-wide/from16 v19, v14

    iget v14, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mAudioCodec:I

    iget v15, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mOperatingRate:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    iget-object v4, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    move/from16 v24, v2

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    const/16 v25, 0x0

    if-ne v4, v2, :cond_7

    const/16 v28, 0x1

    goto :goto_5

    :cond_7
    move/from16 v28, v25

    :goto_5
    iget-object v0, v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v0, v2, :cond_8

    const/16 v25, 0x1

    :cond_8
    const/16 v26, 0x0

    move/from16 v0, v24

    move-object/from16 v2, v27

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, v0

    move-object/from16 v0, v16

    move-wide/from16 v23, v17

    move-wide/from16 v18, v19

    move-object/from16 v16, v21

    move-object/from16 v17, v1

    move-wide/from16 v20, v23

    move-object/from16 v23, v0

    move/from16 v24, v28

    invoke-direct/range {v2 .. v26}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;-><init>(IIIIIIIIIIIIILjava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;ZZLcom/sonyericsson/android/camera/recorder/RecordingProfile-IA;)V

    return-object v27
.end method

.method public slowMotion(Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mSlowMotion:Lcom/sonyericsson/android/camera/configuration/parameters/SlowMotion;

    return-object p0
.end method

.method public videoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object p0
.end method

.method public videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method

.method public videoStabilizer(Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .locals 0

    .line 218
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoStabilizer:Lcom/sonyericsson/android/camera/configuration/parameters/VideoStabilizer;

    return-object p0
.end method
