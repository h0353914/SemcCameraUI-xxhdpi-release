.class public Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;
.super Ljava/lang/Object;
.source "PredictiveCapturePathBuilder.java"


# static fields
.field private static final BURST_COVER_FILE_NAME_LENGTH:I

.field private static final BURST_FILE_NAME_LENGTH:I

.field public static final CAPTURE_ID_STRING_LENGTH:I = 0x4

.field public static final DCF_DIR_NAME_FREE_WORD_XPERIA_BURST:Ljava/lang/String;

.field public static final DCF_FILE_NAME_CONTENT_TYPE_PREDICTIVE_CAPTURE:Ljava/lang/String; = "DSCPDC"

.field public static final DCF_FILE_NAME_DATE_FORMAT:Ljava/lang/String; = "yyyyMMddHHmmssSSS"

.field public static final DCF_FILE_NAME_FREE_WORD_BURST:Ljava/lang/String; = "BURST"

.field public static final DCF_FILE_NAME_FREE_WORD_COVER:Ljava/lang/String; = "COVER"

.field public static final DCF_FILE_NAME_FREE_WORD_PICTURE:Ljava/lang/String; = "DSC_"

.field private static final FILE_TIMESTAMP_END_POS:I

.field private static final FILE_TIMESTAMP_START_POS:I

.field public static final TAG:Ljava/lang/String; = "PredictiveCapturePathBuilder"

.field private static final mBurstCoverDetector:Ljava/util/regex/Pattern;

.field private static final mBurstDetector:Ljava/util/regex/Pattern;

.field private static final mBurstDirectoryDetector:Ljava/util/regex/Pattern;

.field private static final mBurstLastDetector:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XPERIA"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "PREDICTIVE_CAPTURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->DCF_DIR_NAME_FREE_WORD_XPERIA_BURST:Ljava/lang/String;

    const/16 v0, 0x11

    .line 55
    sput v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->FILE_TIMESTAMP_START_POS:I

    add-int/2addr v0, v0

    .line 59
    sput v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->FILE_TIMESTAMP_END_POS:I

    const/16 v0, 0x26

    .line 67
    sput v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->BURST_FILE_NAME_LENGTH:I

    const/16 v0, 0x2c

    .line 76
    sput v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->BURST_COVER_FILE_NAME_LENGTH:I

    .line 89
    const-string v0, "/DSCPDC_\\d{4}_BURST\\d{17}(|_COVER).(JPE?G|jpe?g)\\z"

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->mBurstDetector:Ljava/util/regex/Pattern;

    .line 102
    const-string v0, "/DSCPDC_\\d{4}_BURST\\d{17}_COVER.(JPE?G|jpe?g)\\z"

    .line 98
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->mBurstCoverDetector:Ljava/util/regex/Pattern;

    .line 114
    const-string v0, "/DSCPDC_0000_BURST\\d{17}.(JPE?G|jpe?g)\\z"

    .line 111
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->mBurstLastDetector:Ljava/util/regex/Pattern;

    .line 124
    const-string v0, "(\\ADSC_)(\\d{17}\\z)"

    .line 122
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->mBurstDirectoryDetector:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 237
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->isPredictiveCaptureCoverImage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->BURST_COVER_FILE_NAME_LENGTH:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 240
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->BURST_FILE_NAME_LENGTH:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getParentDirectoryTimeStamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 181
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    .line 183
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->mBurstDirectoryDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 185
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 184
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getPhotoPath(Lcom/sonyericsson/cameracommon/storage/SavingRequest;)Ljava/lang/String;
    .locals 7

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->DCF_DIR_NAME_FREE_WORD_XPERIA_BURST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "DSC_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->isPredictiveCaptureCover()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 139
    const-string v1, "_COVER"

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 141
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DSCPDC_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 142
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getCaptureIdForPredictiveCapture()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%04d"

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_BURST"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 144
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->getSaveTimeForPredictiveCapture()Ljava/lang/String;

    move-result-object p0

    const-string v4, "_"

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ".JPG"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getPredictiveCaptureGroupIdPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 175
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeStamp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 225
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 226
    sget v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->FILE_TIMESTAMP_START_POS:I

    sget v1, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->FILE_TIMESTAMP_END_POS:I

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isPredictiveCaptureCoverImage(Ljava/lang/String;)Z
    .locals 1

    .line 197
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->mBurstCoverDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPredictiveCaptureImage(Ljava/lang/String;)Z
    .locals 1

    .line 157
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->mBurstDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->getParentDirectoryTimeStamp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isPredictiveCaptureLastImage(Ljava/lang/String;)Z
    .locals 1

    .line 211
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/PredictiveCapturePathBuilder;->mBurstLastDetector:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 212
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
