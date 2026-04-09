.class public Lorg/apache/commons/imaging/ImageDump;
.super Ljava/lang/Object;
.source "ImageDump.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private colorSpaceTypeToName(Ljava/awt/color/ColorSpace;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-virtual {p1}, Ljava/awt/color/ColorSpace;->getType()I

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_1

    const/16 p1, 0x9

    if-eq p0, p1, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "CS_LINEAR_RGB"

    return-object p0

    :pswitch_1
    const-string p0, "CS_GRAY"

    return-object p0

    :pswitch_2
    const-string p0, "CS_PYCC"

    return-object p0

    :pswitch_3
    const-string p0, "CS_CIEXYZ"

    return-object p0

    :pswitch_4
    const-string p0, "CS_sRGB"

    return-object p0

    :cond_0
    const-string p0, "TYPE_CMYK"

    return-object p0

    :cond_1
    const-string p0, "TYPE_RGB"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Ljava/awt/image/BufferedImage;)V
    .locals 1

    const-string v0, ""

    .line 78
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/imaging/ImageDump;->dump(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V
    .locals 3

    .line 82
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/imaging/ImageDump;->dumpColorSpace(Ljava/lang/String;Ljava/awt/color/ColorSpace;)V

    .line 84
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/ImageDump;->dumpBIProps(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public dumpBIProps(Ljava/lang/String;Ljava/awt/image/BufferedImage;)V
    .locals 6

    .line 88
    invoke-virtual {p2}, Ljava/awt/image/BufferedImage;->getPropertyNames()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 90
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": no props"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 93
    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 94
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/awt/image/BufferedImage;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dumpColorSpace(Ljava/lang/String;Ljava/awt/color/ColorSpace;)V
    .locals 3

    .line 57
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lorg/apache/commons/imaging/ImageDump;->colorSpaceTypeToName(Ljava/awt/color/ColorSpace;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 60
    instance-of p0, p2, Ljava/awt/color/ICC_ColorSpace;

    if-nez p0, :cond_0

    .line 61
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Unknown ColorSpace: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    check-cast p2, Ljava/awt/color/ICC_ColorSpace;

    .line 67
    invoke-virtual {p2}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object p0

    .line 71
    new-instance p2, Lorg/apache/commons/imaging/icc/IccProfileParser;

    invoke-direct {p2}, Lorg/apache/commons/imaging/icc/IccProfileParser;-><init>()V

    .line 73
    invoke-virtual {p2, p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getICCProfileInfo([B)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->dump(Ljava/lang/String;)V

    return-void
.end method
