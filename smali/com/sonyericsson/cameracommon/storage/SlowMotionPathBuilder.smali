.class public Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;
.super Ljava/lang/Object;
.source "SlowMotionPathBuilder.java"


# static fields
.field private static final DCF_DIR_NAME_FREE_WORD_XPERIA_SLOW_MOTION:Ljava/lang/String;

.field private static final DCF_FILE_NAME_DATE_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmss"

.field private static final DCF_FILE_NAME_FREE_WORD_120F:Ljava/lang/String; = "MOV_HFR_120F_"

.field private static final DCF_FILE_NAME_FREE_WORD_SM:Ljava/lang/String; = "MOV_SM_P120F_"

.field private static final DCF_FILE_NAME_FREE_WORD_SSM:Ljava/lang/String; = "MOV_SM_P960F_"

.field private static final DCF_FILE_NAME_FREE_WORD_SSS:Ljava/lang/String; = "MOV_SM_960F_"

.field private static final RETRY_COUNT:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SlowMotionPathBuilder"

.field private static final mHFRDetector:Ljava/util/regex/Pattern;

.field private static final mSMDetector:Ljava/util/regex/Pattern;

.field private static final mSSMDetector:Ljava/util/regex/Pattern;

.field private static final mSSSDetector:Ljava/util/regex/Pattern;


# instance fields
.field private mPrefix:Ljava/lang/String;

.field private final mSuffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XPERIA"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SLOW_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->DCF_DIR_NAME_FREE_WORD_XPERIA_SLOW_MOTION:Ljava/lang/String;

    .line 77
    const-string v0, "/MOV_SM_P960F_\\d{14}.mp4\\z"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mSSMDetector:Ljava/util/regex/Pattern;

    .line 90
    const-string v0, "/MOV_SM_960F_\\d{14}.mp4\\z"

    .line 88
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mSSSDetector:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "/MOV_HFR_120F_\\d{14}.mp4\\z"

    .line 100
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mHFRDetector:Ljava/util/regex/Pattern;

    .line 113
    const-string v0, "/MOV_SM_P120F_\\d{14}.mp4\\z"

    .line 111
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mSMDetector:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mSuffix:Ljava/lang/String;

    return-void
.end method

.method public static isHFRVideo(Ljava/lang/String;)Z
    .locals 1

    .line 213
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mHFRDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static isStandardSlowMotionVideo(Ljava/lang/String;)Z
    .locals 1

    .line 223
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mSMDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static isSuperSlowMotionVideo(Ljava/lang/String;)Z
    .locals 1

    .line 193
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mSSMDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method

.method public static isSuperSlowShotVideo(Ljava/lang/String;)Z
    .locals 1

    .line 203
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mSSSDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public get(Ljava/lang/String;JLcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Ljava/lang/String;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    .line 126
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "STANDARD_SLOW_MOTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "SUPER_SLOW_MOTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_0

    :sswitch_2
    const-string v2, "SUPER_SLOW_SHOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    :goto_0
    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 131
    :pswitch_0
    const-string v1, "MOV_HFR_120F_"

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mPrefix:Ljava/lang/String;

    goto :goto_1

    .line 128
    :pswitch_1
    const-string v1, "MOV_SM_P960F_"

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mPrefix:Ljava/lang/String;

    goto :goto_1

    .line 134
    :pswitch_2
    const-string v1, "MOV_SM_960F_"

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mPrefix:Ljava/lang/String;

    .line 138
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    :goto_2
    const/16 v2, 0xa

    if-ge v3, v2, :cond_6

    int-to-long v5, v3

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long v5, p2, v5

    .line 141
    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 142
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMddHHmmss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 143
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->DCF_DIR_NAME_FREE_WORD_XPERIA_SLOW_MOTION:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mPrefix:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/sonyericsson/cameracommon/storage/SlowMotionPathBuilder;->mSuffix:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    new-instance v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;

    invoke-direct {v5}, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;-><init>()V

    .line 154
    const-string v6, "_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->projection:[Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object/from16 v7, p4

    invoke-static {v7, v6}, Lcom/sonyericsson/cameracommon/storage/StorageUtil;->getVolume(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 158
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 159
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v4

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 160
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v10, "relative_path"

    const-string v12, "_display_name"

    const-string/jumbo v8, "volume_name"

    move-object v9, v6

    filled-new-array/range {v8 .. v13}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "%s like \'%s\' AND %s like \'%s\' AND %s like \'%s\'"

    invoke-static {v14, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;->where:Ljava/lang/String;

    .line 166
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 167
    invoke-static {v6}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 168
    invoke-static {v8, v6, v5}, Lcom/sonyericsson/cameracommon/contentsview/PhotoStackQueryHelper;->crQuery(Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/sonyericsson/cameracommon/mediasaving/updator/CrQueryParameter;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 169
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_3

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Generated path already exists. Try to generate next path. tryCount:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 172
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_3
    if-eqz v5, :cond_4

    .line 176
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_4
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Generate path:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_5
    return-object v2

    .line 182
    :cond_6
    const-string v0, "Failed to generate path. retry:10"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x14f6016c -> :sswitch_2
        0x46ac60d0 -> :sswitch_1
        0x6053f532 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
