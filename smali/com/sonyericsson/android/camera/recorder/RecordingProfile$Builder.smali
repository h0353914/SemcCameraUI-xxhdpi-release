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
.field private mIsOneShot:Z

.field private mResultExt:Ljava/lang/String;

.field private mResultMimeType:Ljava/lang/String;

.field private mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

.field private mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setupOutputFormatWithQuality(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-string p1, ".mp4"

    .line 205
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    const-string p1, "video/mp4"

    .line 206
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ".3gp"

    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    const-string p1, "video/3gpp"

    .line 201
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private updateCamcorderProfile(Landroid/media/CamcorderProfile;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->access$500(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)I

    move-result v0

    iput v0, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    const/4 v0, 0x2

    .line 216
    iput v0, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 217
    iput v0, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 218
    sget-object v1, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$parameters$VideoSize:[I

    iget-object v2, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x5

    const v3, 0xbb80

    const v4, 0x26160

    const/4 v5, 0x3

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const v0, 0x33450

    .line 267
    iput v0, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    const/4 v0, 0x1

    .line 268
    iput v0, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    const/16 v1, 0x2fa8

    .line 269
    iput v1, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    const/16 v1, 0x1f40

    .line 270
    iput v1, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 271
    iput v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    goto :goto_3

    :pswitch_1
    const v1, 0x3640e3

    .line 260
    iput v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 261
    iput v5, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 262
    iput v4, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 263
    iput v3, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 264
    iput v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    goto :goto_3

    .line 249
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v2, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->HD_120FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v2, :cond_1

    const v1, 0x2faf080

    .line 250
    iput v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    :cond_1
    const v1, 0xb71b00

    .line 252
    iput v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 254
    :goto_0
    iput v5, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 255
    iput v4, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 256
    iput v3, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 257
    iput v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    goto :goto_3

    .line 234
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FULL_HD_60FPS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v6, :cond_2

    const v1, 0x1c9c380

    .line 235
    iput v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_1

    :cond_2
    const v1, 0x10b0760

    .line 237
    iput v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 238
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v1, v6, :cond_3

    .line 239
    iput v2, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 242
    :cond_3
    :goto_1
    iput v5, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 243
    iput v4, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 244
    iput v3, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 245
    iput v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    goto :goto_3

    .line 221
    :pswitch_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v6, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v6, :cond_4

    const v1, 0x3473bc0

    .line 222
    iput v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_2

    :cond_4
    const v1, 0x2160ec0

    .line 224
    iput v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 225
    iput v2, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 227
    :goto_2
    iput v5, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 228
    iput v4, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 229
    iput v3, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    .line 230
    iput v0, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 278
    :goto_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getVideoRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 280
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    if-ne v0, v1, :cond_5

    .line 281
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    if-eq v0, v1, :cond_6

    .line 282
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 283
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    iput p0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lcom/sonyericsson/android/camera/recorder/RecordingProfile;
    .locals 14

    .line 146
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H264:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    if-ne v0, v1, :cond_0

    .line 147
    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->FOUR_K_UHD_H265:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mIsOneShot:Z

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->access$000(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;Z)I

    move-result v0

    .line 152
    invoke-static {v0}, Landroid/media/CamcorderProfile;->get(I)Landroid/media/CamcorderProfile;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 154
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->updateCamcorderProfile(Landroid/media/CamcorderProfile;)V

    .line 161
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mIsOneShot:Z

    if-nez v1, :cond_1

    .line 162
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->setupOutputFormatWithQuality(I)V

    goto :goto_0

    :cond_1
    const-string v0, ".mp4"

    .line 164
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    const-string v0, "video/mp4"

    .line 165
    iput-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    :goto_0
    const/16 v0, 0x3e8

    .line 170
    iget-object v1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v3, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne v1, v3, :cond_2

    const/16 v0, 0x64

    :cond_2
    move v9, v0

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->access$100(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)I

    move-result v0

    invoke-static {v2, v0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->access$200(Landroid/media/CamcorderProfile;I)I

    move-result v0

    int-to-long v0, v0

    .line 175
    iget v3, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-long v5, v3

    const-wide/16 v7, 0x3c

    move-wide v3, v0

    invoke-static/range {v3 .. v8}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->access$300(JJJ)J

    move-result-wide v10

    .line 177
    iget v3, v2, Landroid/media/CamcorderProfile;->videoBitRate:I

    int-to-long v5, v3

    const-wide/16 v7, 0x1

    move-wide v3, v0

    invoke-static/range {v3 .. v8}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->access$300(JJJ)J

    move-result-wide v7

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;->HDR_ON:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x6

    const/4 v1, 0x7

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    move v0, v3

    move v1, v0

    move v4, v1

    .line 189
    :goto_1
    new-instance v12, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;

    invoke-direct {v12, v0, v1, v4}, Lcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;-><init>(III)V

    .line 191
    new-instance v0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultExt:Ljava/lang/String;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mResultMimeType:Ljava/lang/String;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    sget-object v1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    if-ne p0, v1, :cond_4

    const/4 p0, 0x1

    goto :goto_2

    :cond_4
    move p0, v3

    :goto_2
    const/4 v13, 0x0

    move-object v1, v0

    move-object v3, v4

    move-object v4, v5

    move-wide v5, v10

    move-object v10, v12

    move v11, p0

    move-object v12, v13

    invoke-direct/range {v1 .. v12}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;-><init>(Landroid/media/CamcorderProfile;Ljava/lang/String;Ljava/lang/String;JJILcom/sonyericsson/android/camera/recorder/RecorderParameters$DataSpace;ZLcom/sonyericsson/android/camera/recorder/RecordingProfile$1;)V

    return-object v0

    .line 156
    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not get profile. Because Camera.getNumberOfCameras() returns 0 or No CamcorderProfile that matches quality : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOneShot(Z)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mIsOneShot:Z

    return-object p0
.end method

.method public videoHdr(Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoHdr:Lcom/sonyericsson/android/camera/configuration/parameters/VideoHdr;

    return-object p0
.end method

.method public videoSize(Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;)Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/sonyericsson/android/camera/recorder/RecordingProfile$Builder;->mVideoSize:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    return-object p0
.end method
