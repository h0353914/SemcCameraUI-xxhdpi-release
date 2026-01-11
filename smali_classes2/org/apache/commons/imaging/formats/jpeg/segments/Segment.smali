.class public abstract Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "Segment.java"


# instance fields
.field public final length:I

.field public final marker:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 30
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    .line 31
    iput p2, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->length:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    return-void
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public getSegmentType()Ljava/lang/String;
    .locals 3

    .line 47
    iget v0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    const v1, 0xff01

    if-eq v0, v1, :cond_4

    const v1, 0xfffe

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    const v1, 0xff02

    if-lt v0, v1, :cond_0

    const v1, 0xffbf

    if-gt v0, v1, :cond_0

    .line 133
    const-string p0, "Reserved"

    return-object p0

    :cond_0
    const v1, 0xffe0

    if-lt v0, v1, :cond_1

    const v2, 0xffef

    if-gt v0, v2, :cond_1

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "APP"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const v2, 0xfff0

    if-lt v0, v2, :cond_2

    const v2, 0xfffd

    if-gt v0, v2, :cond_2

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "JPG"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->marker:I

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 142
    :cond_2
    const-string p0, "Unknown"

    return-object p0

    .line 117
    :pswitch_0
    const-string p0, "Expand reference component(s)"

    return-object p0

    .line 115
    :pswitch_1
    const-string p0, "Define hierarchical progression"

    return-object p0

    .line 113
    :pswitch_2
    const-string p0, "Define restart interval"

    return-object p0

    .line 111
    :pswitch_3
    const-string p0, "Define number of lines"

    return-object p0

    .line 109
    :pswitch_4
    const-string p0, "Define quantization table(s)"

    return-object p0

    .line 107
    :pswitch_5
    const-string p0, "Start of scan"

    return-object p0

    .line 105
    :pswitch_6
    const-string p0, "End of image"

    return-object p0

    .line 103
    :pswitch_7
    const-string p0, "Start of image"

    return-object p0

    .line 100
    :pswitch_8
    const-string p0, "Restart with modulo 8 count 7"

    return-object p0

    .line 98
    :pswitch_9
    const-string p0, "Restart with modulo 8 count 6"

    return-object p0

    .line 96
    :pswitch_a
    const-string p0, "Restart with modulo 8 count 5"

    return-object p0

    .line 94
    :pswitch_b
    const-string p0, "Restart with modulo 8 count 4"

    return-object p0

    .line 92
    :pswitch_c
    const-string p0, "Restart with modulo 8 count 3"

    return-object p0

    .line 90
    :pswitch_d
    const-string p0, "Restart with modulo 8 count 2"

    return-object p0

    .line 88
    :pswitch_e
    const-string p0, "Restart with modulo 8 count 1"

    return-object p0

    .line 86
    :pswitch_f
    const-string p0, "Restart with modulo 8 count 0"

    return-object p0

    .line 78
    :pswitch_10
    const-string p0, "Start Of Frame, Differential lossless (sequential), arithmetic coding"

    return-object p0

    .line 76
    :pswitch_11
    const-string p0, "Start Of Frame, Differential progressive Dct, arithmetic coding"

    return-object p0

    .line 74
    :pswitch_12
    const-string p0, "Start Of Frame, Differential sequential Dct, arithmetic coding"

    return-object p0

    .line 83
    :pswitch_13
    const-string p0, "Define arithmetic coding conditioning(s)"

    return-object p0

    .line 71
    :pswitch_14
    const-string p0, "Start Of Frame, Lossless (sequential), arithmetic coding"

    return-object p0

    .line 69
    :pswitch_15
    const-string p0, "Start Of Frame, Progressive Dct, arithmetic coding"

    return-object p0

    .line 67
    :pswitch_16
    const-string p0, "Start Of Frame, Extended sequential Dct, arithmetic coding"

    return-object p0

    .line 65
    :pswitch_17
    const-string p0, "Start Of Frame, Reserved for JPEG extensions, arithmetic coding"

    return-object p0

    .line 62
    :pswitch_18
    const-string p0, "Start Of Frame, Differential lossless (sequential), Huffman coding"

    return-object p0

    .line 60
    :pswitch_19
    const-string p0, "Start Of Frame, Differential progressive Dct, Huffman coding"

    return-object p0

    .line 58
    :pswitch_1a
    const-string p0, "Start Of Frame, Differential sequential Dct, Huffman coding"

    return-object p0

    .line 81
    :pswitch_1b
    const-string p0, "Define Huffman table(s)"

    return-object p0

    .line 55
    :pswitch_1c
    const-string p0, "Start Of Frame, Lossless (sequential), Huffman coding"

    return-object p0

    .line 53
    :pswitch_1d
    const-string p0, "Start Of Frame, Progressive Dct, Huffman coding"

    return-object p0

    .line 51
    :pswitch_1e
    const-string p0, "Start Of Frame, Extended sequential Dct, Huffman coding"

    return-object p0

    .line 49
    :pswitch_1f
    const-string p0, "Start Of Frame, Baseline Dct, Huffman coding"

    return-object p0

    .line 123
    :cond_3
    const-string p0, "Comment"

    return-object p0

    .line 125
    :cond_4
    const-string p0, "For temporary private use in arithmetic coding"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0xffc0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Segment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/segments/Segment;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
