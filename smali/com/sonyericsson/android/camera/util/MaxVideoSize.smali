.class public Lcom/sonyericsson/android/camera/util/MaxVideoSize;
.super Ljava/lang/Object;
.source "MaxVideoSize.java"


# static fields
.field public static final GUARANTEED_MIN_DURATION_IN_MILLIS:J = 0xbb8L

.field private static final MAX_FILE_SIZE_BYTES:J = 0x3b9aca0000L

.field private static final MAX_RECORDING_DURATION_IN_MILLIS:J = 0x1499700L

.field private static final QUALITY_LOW_MAX_FILE_SIZE:J = 0x493e0L

.field public static final TAG:Ljava/lang/String; = "MaxVideoSize"


# instance fields
.field private mMaxDurationMillis:J

.field private mMaxFileSizeBytes:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    .locals 2

    .line 79
    invoke-static {p2, p3}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getRecordableSizeKBytes(Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)J

    move-result-wide p2

    const-wide/32 v0, 0xf424000

    .line 78
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 81
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->createMaxVideoSize(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;J)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object p0

    .line 82
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Recordable storage size(kbytes): "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Modified max size(bytes): "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->mMaxFileSizeBytes:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Modified max duration(millisecs): "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->mMaxDurationMillis:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private static createMaxVideoSize(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;J)Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    .locals 1

    .line 92
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getIsMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->createQualityLowMaxVideoSize(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;J)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->createQualityHighMaxVideoSize(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;J)Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    move-result-object p0

    return-object p0
.end method

.method private static createQualityHighMaxVideoSize(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;J)Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    .locals 16

    move-object/from16 v0, p1

    const-wide/16 v1, 0x3e8

    mul-long v1, v1, p2

    .line 104
    new-instance v3, Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    invoke-direct {v3}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;-><init>()V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxDurationInMillisecs()J

    move-result-wide v4

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxFileSizeInBytes()J

    move-result-wide v6

    .line 108
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v8, :cond_0

    .line 109
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Config Max duration: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Config Max size: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    const-wide/32 v11, 0x1499700

    if-gtz v10, :cond_1

    cmp-long v13, v4, v8

    if-gtz v13, :cond_1

    .line 115
    invoke-direct {v3, v11, v12}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillis(J)V

    .line 116
    invoke-direct {v3, v1, v2}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    :cond_1
    if-gtz v10, :cond_2

    cmp-long v13, v4, v8

    if-lez v13, :cond_2

    .line 121
    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 122
    invoke-direct {v3, v13, v14}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillis(J)V

    .line 123
    invoke-direct {v3, v1, v2}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    goto :goto_0

    :cond_2
    move-wide v13, v11

    :goto_0
    if-lez v10, :cond_3

    cmp-long v15, v4, v8

    if-gtz v15, :cond_3

    .line 128
    invoke-static {v0, v6, v7}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getDurationFromSizeInMillis(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;J)J

    move-result-wide v11

    .line 129
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-direct {v3, v11, v12}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillis(J)V

    .line 130
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    invoke-direct {v3, v11, v12}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    :cond_3
    if-lez v10, :cond_4

    cmp-long v8, v4, v8

    if-lez v8, :cond_4

    const-wide/32 v8, 0x1499700

    .line 135
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 136
    invoke-static {v0, v6, v7}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getDurationFromSizeInMillis(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;J)J

    move-result-wide v8

    .line 137
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillis(J)V

    .line 138
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-direct {v3, v0, v1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    :cond_4
    return-object v3
.end method

.method private static createQualityLowMaxVideoSize(Lcom/sonyericsson/android/camera/configuration/Configurations;Lcom/sonyericsson/android/camera/recorder/RecordingProfile;J)Lcom/sonyericsson/android/camera/util/MaxVideoSize;
    .locals 8

    .line 146
    new-instance v0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;-><init>()V

    const-wide/16 v1, 0x400

    mul-long/2addr v1, p2

    .line 150
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxFileSizeInBytes()J

    move-result-wide v3

    .line 151
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v5, :cond_0

    .line 152
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Max size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 153
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Config Max size: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    cmp-long v7, v3, v1

    if-gez v7, :cond_1

    .line 157
    invoke-direct {v0, v3, v4}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    goto :goto_0

    .line 159
    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    .line 164
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAverageFileSize()J

    move-result-wide v1

    .line 163
    invoke-static {p2, p3, v1, v2}, Lcom/sonyericsson/cameracommon/utility/RecordingUtil;->getDurationMillsFromAverage(JJ)J

    move-result-wide p2

    .line 165
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/Configurations;->getVideoMaxDurationInMillisecs()J

    move-result-wide v1

    .line 166
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    .line 167
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Max duration: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 168
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v3, "Config Max duration: "

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    cmp-long p0, v1, v5

    if-lez p0, :cond_3

    .line 172
    invoke-static {v1, v2, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-direct {v0, p2, p3}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillis(J)V

    goto :goto_1

    .line 174
    :cond_3
    invoke-direct {v0, p2, p3}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillis(J)V

    .line 180
    :goto_1
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_4

    .line 181
    const-string p2, "Quality Low Max duration: 2147483647"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 182
    const-string p2, "Quality Low Max size: 300000"

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 185
    :cond_4
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide p2

    const-wide/32 v3, 0x493e0

    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    invoke-direct {v0, p2, p3}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxFileSizeBytes(J)V

    .line 187
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getMaxFileSize()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->getDurationFromSizeInMillis(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;J)J

    move-result-wide p1

    if-lez p0, :cond_5

    .line 190
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_5
    const-wide/32 v1, 0x7fffffff

    .line 196
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->setMaxDurationMillis(J)V

    return-object v0
.end method

.method private static getDurationFromSizeInMillis(Lcom/sonyericsson/android/camera/recorder/RecordingProfile;J)J
    .locals 4

    .line 62
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/recorder/RecordingProfile;->getAverageFileSize()J

    move-result-wide v0

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    div-long/2addr v0, v2

    long-to-double p0, p1

    long-to-double v2, v0

    div-double/2addr p0, v2

    .line 65
    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    .line 67
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_0

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sizePerSecond(Byte): "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "durationInSecond(sec): "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, 0x3e8

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method private setMaxDurationMillis(J)V
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    .line 52
    :cond_0
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->mMaxDurationMillis:J

    return-void
.end method

.method private setMaxFileSizeBytes(J)V
    .locals 0

    .line 56
    iput-wide p1, p0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->mMaxFileSizeBytes:J

    return-void
.end method


# virtual methods
.method public getMaxDuration()I
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->mMaxDurationMillis:J

    long-to-int p0, v0

    return p0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/sonyericsson/android/camera/util/MaxVideoSize;->mMaxFileSizeBytes:J

    return-wide v0
.end method
