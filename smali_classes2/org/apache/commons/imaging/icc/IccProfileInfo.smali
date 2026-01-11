.class public Lorg/apache/commons/imaging/icc/IccProfileInfo;
.super Ljava/lang/Object;
.source "IccProfileInfo.java"


# instance fields
.field public final cmmTypeSignature:I

.field public final colorSpace:I

.field private final data:[B

.field public final deviceManufacturer:I

.field public final deviceModel:I

.field public final primaryPlatformSignature:I

.field public final profileConnectionSpace:I

.field public final profileCreatorSignature:I

.field public final profileDeviceClassSignature:I

.field public final profileFileSignature:I

.field private final profileId:[B

.field public final profileSize:I

.field public final profileVersion:I

.field public final renderingIntent:I

.field private final tags:[Lorg/apache/commons/imaging/icc/IccTag;

.field public final variousFlags:I


# direct methods
.method public constructor <init>([BIIIIIIIIIIIII[B[Lorg/apache/commons/imaging/icc/IccTag;)V
    .locals 2

    move-object v0, p0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 51
    iput-object v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->data:[B

    move v1, p2

    .line 53
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileSize:I

    move v1, p3

    .line 54
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->cmmTypeSignature:I

    move v1, p4

    .line 55
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileVersion:I

    move v1, p5

    .line 56
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileDeviceClassSignature:I

    move v1, p6

    .line 57
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->colorSpace:I

    move v1, p7

    .line 58
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileConnectionSpace:I

    move v1, p8

    .line 59
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileFileSignature:I

    move v1, p9

    .line 60
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->primaryPlatformSignature:I

    move v1, p10

    .line 61
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->variousFlags:I

    move v1, p11

    .line 62
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceManufacturer:I

    move v1, p12

    .line 63
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceModel:I

    move v1, p13

    .line 64
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->renderingIntent:I

    move/from16 v1, p14

    .line 65
    iput v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileCreatorSignature:I

    move-object/from16 v1, p15

    .line 66
    iput-object v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileId:[B

    move-object/from16 v1, p16

    .line 68
    iput-object v1, v0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->tags:[Lorg/apache/commons/imaging/icc/IccTag;

    return-void
.end method

.method private printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .locals 0

    .line 89
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, ": \'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    shr-int/lit8 p2, p3, 0x18

    and-int/lit16 p2, p2, 0xff

    int-to-char p2, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    shr-int/lit8 p2, p3, 0x10

    and-int/lit16 p2, p2, 0xff

    int-to-char p2, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    shr-int/lit8 p2, p3, 0x8

    and-int/lit16 p2, p2, 0xff

    int-to-char p2, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    and-int/lit16 p2, p3, 0xff

    int-to-char p2, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "\'"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 0

    .line 95
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public getData()[B
    .locals 0

    .line 72
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->data:[B

    return-object p0
.end method

.method public getProfileId()[B
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileId:[B

    return-object p0
.end method

.method public getTags()[Lorg/apache/commons/imaging/icc/IccTag;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->tags:[Lorg/apache/commons/imaging/icc/IccTag;

    return-object p0
.end method

.method public issRGB()Z
    .locals 2

    .line 84
    iget v0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceManufacturer:I

    const v1, 0x49454320    # 807986.0f

    if-ne v0, v1, :cond_0

    iget p0, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceModel:I

    const v0, 0x73524742

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 101
    :try_start_0
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 103
    :catch_0
    const-string p0, "IccProfileInfo: Error"

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 110
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": data length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->data:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ProfileDeviceClassSignature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileDeviceClassSignature:I

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": CMMTypeSignature"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->cmmTypeSignature:I

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileDeviceClassSignature:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 117
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ColorSpace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->colorSpace:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ProfileConnectionSpace"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileConnectionSpace:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ProfileFileSignature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileFileSignature:I

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": PrimaryPlatformSignature"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->primaryPlatformSignature:I

    invoke-direct {p0, v1, v2, v4}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileFileSignature:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": DeviceManufacturer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceManufacturer:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": DeviceModel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->deviceModel:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": RenderingIntent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->renderingIntent:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ProfileCreatorSignature"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->profileCreatorSignature:I

    invoke-direct {p0, v1, v2, v3}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->printCharQuad(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    const/4 v2, 0x0

    .line 127
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/imaging/icc/IccProfileInfo;->tags:[Lorg/apache/commons/imaging/icc/IccTag;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 128
    aget-object v3, v3, v2

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\t"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lorg/apache/commons/imaging/icc/IccTag;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": issRGB: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->issRGB()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 135
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
