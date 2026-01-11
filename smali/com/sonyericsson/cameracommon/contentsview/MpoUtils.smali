.class public Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;
.super Ljava/lang/Object;
.source "MpoUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/MpoUtils$JpegMaker;
    }
.end annotation


# static fields
.field public static final MULTIANGLE:I = 0x2

.field public static final STEREO:I = 0x1

.field public static final TAG:Ljava/lang/String; = "MpoUtils"

.field public static final UNKNOWN:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkFormatIdentifier(Ljava/io/RandomAccessFile;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 172
    new-array v1, v0, [B

    .line 173
    invoke-virtual {p0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result p0

    const/4 v2, 0x0

    if-eq v0, p0, :cond_0

    return v2

    .line 176
    :cond_0
    aget-byte p0, v1, v2

    const/16 v0, 0x4d

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    aget-byte v0, v1, p0

    const/16 v3, 0x50

    if-ne v0, v3, :cond_1

    const/4 v0, 0x2

    aget-byte v0, v1, v0

    const/16 v3, 0x46

    if-ne v0, v3, :cond_1

    const/4 v0, 0x3

    aget-byte v0, v1, v0

    if-nez v0, :cond_1

    move v2, p0

    :cond_1
    return v2
.end method

.method static checkMPEntryTag(Ljava/io/RandomAccessFile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readShort()S

    move-result p0

    const v0, 0xffff

    and-int/2addr p0, v0

    const v0, 0xb002

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getType(Ljava/lang/String;)I
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v3, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 p0, 0x2

    .line 43
    :try_start_1
    new-array v2, p0, [B

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {v3, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v4

    if-gt p0, v4, :cond_b

    .line 47
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_1

    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "read:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v2, v0

    and-int/lit16 v6, v6, 0xff

    .line 48
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v2, v1

    and-int/lit16 v6, v6, 0xff

    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 47
    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 51
    :cond_1
    aget-byte v4, v2, v0

    aget-byte v5, v2, v1

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isSOI(BB)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 52
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_0

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "This segments is SOI."

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 54
    :cond_2
    aget-byte v4, v2, v0

    aget-byte v5, v2, v1

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isEOI(BB)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 55
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_0

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "This segments is EOI."

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    aget-byte v4, v2, v0

    aget-byte v5, v2, v1

    invoke-static {v4, v5}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isAPP(BB)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 58
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_4

    new-array v4, v1, [Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->UK:Ljava/util/Locale;

    const-string v6, "This segments is APP%d."

    new-array v7, v1, [Ljava/lang/Object;

    aget-byte v8, v2, v1

    add-int/lit8 v8, v8, 0x20

    .line 59
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v0

    .line 58
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 61
    :cond_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    .line 62
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 70
    aget-byte v6, v2, v0

    aget-byte v7, v2, v1

    invoke-static {v6, v7}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->isAPP2(BB)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 71
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->checkFormatIdentifier(Ljava/io/RandomAccessFile;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 72
    sget-boolean v6, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v6, :cond_5

    new-array v6, v1, [Ljava/lang/String;

    const-string v7, "This section has MPF."

    aput-object v7, v6, v0

    invoke-static {v6}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 75
    :cond_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    const/4 v6, 0x6

    .line 76
    invoke-static {v3, v6}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 78
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v6

    move v7, v0

    :goto_1
    if-ge v7, v6, :cond_9

    .line 80
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->checkMPEntryTag(Ljava/io/RandomAccessFile;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 81
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_6

    new-array v2, v1, [Ljava/lang/String;

    const-string v4, "This tag is MP entry."

    aput-object v4, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 84
    :cond_6
    invoke-static {v3, p0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    .line 86
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readInt()I

    move-result p0

    div-int/lit8 p0, p0, 0x10

    .line 87
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->typeFromEntries(I)I

    move-result p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return p0

    .line 90
    :cond_7
    :try_start_3
    sget-boolean v8, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v8, :cond_8

    new-array v8, v1, [Ljava/lang/String;

    const-string v9, "This tag is not MP entry."

    aput-object v9, v8, v0

    invoke-static {v8}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_8
    const/16 v8, 0xa

    .line 93
    invoke-static {v3, v8}, Lcom/sonyericsson/cameracommon/contentsview/MpoUtils;->skip(Ljava/io/RandomAccessFile;I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 99
    :cond_9
    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 102
    :cond_a
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_b

    new-array p0, v1, [Ljava/lang/String;

    const-string v2, "Found unknown marker."

    aput-object v2, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :cond_b
    :try_start_4
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    .line 109
    :goto_2
    :try_start_5
    new-array v1, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to analize a mpo file by IO Exception. message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 110
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    .line 109
    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v2, :cond_c

    .line 115
    :try_start_6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 121
    :catch_3
    :cond_c
    :goto_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_d

    const-string p0, "This mpo is unknown image."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_d
    return v0

    :goto_4
    if-eqz v2, :cond_e

    .line 115
    :try_start_7
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 119
    :catch_4
    :cond_e
    throw p0
.end method

.method static isAPP(BB)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 p0, -0x20

    if-lt p1, p0, :cond_0

    const/16 p0, -0x11

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isAPP2(BB)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 p0, -0x1e

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isEOI(BB)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 p0, -0x27

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isSOI(BB)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/16 p0, -0x28

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static skip(Ljava/io/RandomAccessFile;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result p0

    if-ne p1, p0, :cond_0

    return-void

    .line 186
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method static typeFromEntries(I)I
    .locals 3

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 155
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This mpo is stereo image. entries:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/16 v1, 0xf

    if-ne p0, v1, :cond_3

    .line 160
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "This mpo is multi angle image. entries:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v0

    .line 165
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "This mpo is unknown image. entries:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    const/4 p0, 0x0

    return p0
.end method
