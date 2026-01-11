.class public Lorg/apache/commons/imaging/common/RationalNumber;
.super Ljava/lang/Number;
.source "RationalNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/common/RationalNumber$Option;
    }
.end annotation


# static fields
.field private static final TOLERANCE:D = 1.0E-8

.field private static final serialVersionUID:J = -0x74be5c50e41188e3L


# instance fields
.field public final divisor:I

.field public final numerator:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 35
    iput p1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    .line 36
    iput p2, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    return-void
.end method

.method static factoryMethod(JJ)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 9

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    const-wide/32 v3, -0x80000000

    if-gtz v2, :cond_0

    cmp-long v2, p0, v3

    if-ltz v2, :cond_0

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    cmp-long v2, p2, v3

    if-gez v2, :cond_3

    :cond_0
    :goto_0
    cmp-long v2, p0, v0

    if-gtz v2, :cond_1

    cmp-long v2, p0, v3

    if-ltz v2, :cond_1

    cmp-long v2, p2, v0

    if-gtz v2, :cond_1

    cmp-long v2, p2, v3

    if-gez v2, :cond_2

    .line 47
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    cmp-long v2, v5, v7

    if-lez v2, :cond_2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    cmp-long v2, v5, v7

    if-lez v2, :cond_2

    const/4 v2, 0x1

    shr-long/2addr p0, v2

    shr-long/2addr p2, v2

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_4

    .line 59
    :cond_3
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/imaging/common/RationalNumber;->gcd(JJ)J

    move-result-wide v0

    .line 60
    div-long/2addr p2, v0

    .line 61
    div-long/2addr p0, v0

    .line 63
    new-instance v0, Lorg/apache/commons/imaging/common/RationalNumber;

    long-to-int p0, p0

    long-to-int p1, p2

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object v0

    .line 55
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid value, numerator: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", divisor: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static gcd(JJ)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-nez v0, :cond_0

    return-wide p0

    .line 73
    :cond_0
    rem-long/2addr p0, p2

    invoke-static {p2, p3, p0, p1}, Lorg/apache/commons/imaging/common/RationalNumber;->gcd(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 11

    const-wide v0, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v0, p0, v0

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    .line 148
    new-instance p0, Lorg/apache/commons/imaging/common/RationalNumber;

    const p1, 0x7fffffff

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object p0

    :cond_0
    const-wide v2, -0x3e20000000400000L    # -2.147483647E9

    cmpg-double v0, p0, v2

    if-gtz v0, :cond_1

    .line 150
    new-instance p0, Lorg/apache/commons/imaging/common/RationalNumber;

    const p1, -0x7fffffff

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object p0

    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    const/4 v4, 0x0

    if-gez v0, :cond_2

    .line 156
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v4

    :goto_0
    cmpl-double v2, p0, v2

    if-nez v2, :cond_3

    .line 163
    new-instance p0, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {p0, v4, v1}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object p0

    :cond_3
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, p0, v2

    if-ltz v5, :cond_5

    double-to-int v2, p0

    int-to-double v5, v2

    cmpg-double v3, v5, p0

    if-gez v3, :cond_4

    .line 167
    new-instance v3, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {v3, v2, v1}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    .line 168
    new-instance v5, Lorg/apache/commons/imaging/common/RationalNumber;

    add-int/2addr v2, v1

    invoke-direct {v5, v2, v1}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto :goto_2

    .line 170
    :cond_4
    new-instance v3, Lorg/apache/commons/imaging/common/RationalNumber;

    add-int/lit8 v5, v2, -0x1

    invoke-direct {v3, v5, v1}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    .line 171
    new-instance v5, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {v5, v2, v1}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto :goto_2

    :cond_5
    div-double v5, v2, p0

    double-to-int v5, v5

    int-to-double v6, v5

    div-double/2addr v2, v6

    cmpg-double v2, v2, p0

    if-gez v2, :cond_6

    .line 176
    new-instance v3, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {v3, v1, v5}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    .line 177
    new-instance v2, Lorg/apache/commons/imaging/common/RationalNumber;

    sub-int/2addr v5, v1

    invoke-direct {v2, v1, v5}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    goto :goto_1

    .line 179
    :cond_6
    new-instance v3, Lorg/apache/commons/imaging/common/RationalNumber;

    add-int/lit8 v2, v5, 0x1

    invoke-direct {v3, v1, v2}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    .line 180
    new-instance v2, Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-direct {v2, v1, v5}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    :goto_1
    move-object v5, v2

    .line 183
    :goto_2
    invoke-static {v3, p0, p1}, Lorg/apache/commons/imaging/common/RationalNumber$Option;->factory(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$Option;

    move-result-object v1

    .line 184
    invoke-static {v5, p0, p1}, Lorg/apache/commons/imaging/common/RationalNumber$Option;->factory(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$Option;

    move-result-object v2

    .line 186
    iget-wide v5, v1, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    iget-wide v7, v2, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    cmpg-double v3, v5, v7

    if-gez v3, :cond_7

    move-object v3, v1

    goto :goto_3

    :cond_7
    move-object v3, v2

    .line 191
    :goto_3
    iget-wide v5, v3, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    const-wide v7, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v5, v5, v7

    if-lez v5, :cond_c

    const/16 v5, 0x64

    if-ge v4, v5, :cond_c

    .line 192
    iget-object v5, v1, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    iget v5, v5, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-long v5, v5

    iget-object v7, v2, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    iget v7, v7, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-long v7, v7

    add-long/2addr v5, v7

    iget-object v7, v1, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    iget v7, v7, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-long v7, v7

    iget-object v9, v2, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    iget v9, v9, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-static {v5, v6, v7, v8}, Lorg/apache/commons/imaging/common/RationalNumber;->factoryMethod(JJ)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v5

    .line 197
    invoke-static {v5, p0, p1}, Lorg/apache/commons/imaging/common/RationalNumber$Option;->factory(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$Option;

    move-result-object v6

    .line 199
    invoke-virtual {v5}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v7

    cmpg-double v5, p0, v7

    if-gez v5, :cond_9

    .line 200
    iget-wide v7, v2, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    iget-wide v9, v6, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    cmpg-double v2, v7, v9

    if-gtz v2, :cond_8

    goto :goto_5

    :cond_8
    move-object v2, v6

    goto :goto_4

    .line 206
    :cond_9
    iget-wide v7, v1, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    iget-wide v9, v6, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    cmpg-double v1, v7, v9

    if-gtz v1, :cond_a

    goto :goto_5

    :cond_a
    move-object v1, v6

    .line 213
    :goto_4
    iget-wide v7, v6, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    iget-wide v9, v3, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    cmpg-double v5, v7, v9

    if-gez v5, :cond_b

    move-object v3, v6

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 218
    :cond_c
    :goto_5
    iget-object p0, v3, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/RationalNumber;->negate()Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object p0

    :cond_d
    return-object p0
.end method


# virtual methods
.method public doubleValue()D
    .locals 4

    .line 83
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-double v0, v0

    iget p0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public floatValue()F
    .locals 1

    .line 88
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-float v0, v0

    iget p0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public intValue()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    iget p0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    div-int/2addr v0, p0

    return v0
.end method

.method public longValue()J
    .locals 4

    .line 98
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-long v0, v0

    iget p0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-long v2, p0

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public negate()Lorg/apache/commons/imaging/common/RationalNumber;
    .locals 2

    .line 78
    new-instance v0, Lorg/apache/commons/imaging/common/RationalNumber;

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    neg-int v1, v1

    iget p0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/imaging/common/RationalNumber;-><init>(II)V

    return-object v0
.end method

.method public toDisplayString()Ljava/lang/String;
    .locals 5

    .line 115
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    rem-int v2, v0, v1

    if-nez v2, :cond_0

    .line 116
    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x3

    .line 119
    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 120
    iget v1, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-double v1, v1

    iget p0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-double v3, p0

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 103
    iget v0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    const-string v1, ")"

    const-string v2, "/"

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Invalid rational ("

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget p0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 106
    :cond_0
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 108
    iget v3, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    iget v4, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    rem-int v5, v3, v4

    if-nez v5, :cond_1

    .line 109
    div-int/2addr v3, v4

    int-to-long v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/common/RationalNumber;->numerator:I

    int-to-double v3, v3

    iget p0, p0, Lorg/apache/commons/imaging/common/RationalNumber;->divisor:I

    int-to-double v5, p0

    div-double/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
