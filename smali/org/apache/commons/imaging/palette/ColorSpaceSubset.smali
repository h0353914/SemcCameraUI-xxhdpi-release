.class Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
.super Ljava/lang/Object;
.source "ColorSpaceSubset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;
    }
.end annotation


# static fields
.field public static final RGB_COMPARATOR:Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;


# instance fields
.field private index:I

.field final maxs:[I

.field final mins:[I

.field final precision:I

.field final precisionMask:I

.field rgb:I

.field final total:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->RGB_COMPARATOR:Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;

    return-void
.end method

.method constructor <init>(II)V
    .locals 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    .line 35
    iput p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    .line 36
    iput p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precisionMask:I

    const/4 p1, 0x3

    .line 38
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    .line 39
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 p2, 0x0

    move v0, p2

    :goto_0
    if-ge v0, p1, :cond_0

    .line 41
    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aput p2, v1, v0

    .line 42
    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    iget v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precisionMask:I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 45
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    return-void
.end method

.method constructor <init>(II[I[I)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    .line 50
    iput p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    .line 51
    iput-object p3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    .line 52
    iput-object p4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 p1, 0x1

    shl-int p2, p1, p2

    sub-int/2addr p2, p1

    .line 53
    iput p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precisionMask:I

    const/4 p1, -0x1

    .line 55
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    return-void
.end method


# virtual methods
.method public final contains(III)Z
    .locals 2

    .line 59
    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v0, v0, 0x8

    shr-int/2addr p1, v0

    .line 60
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-le v0, p1, :cond_0

    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v0, v0, v1

    if-ge v0, p1, :cond_1

    return v1

    .line 67
    :cond_1
    iget p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, p2, p1

    .line 68
    iget-object p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v0, 0x1

    aget p2, p2, v0

    if-le p2, p1, :cond_2

    return v1

    .line 71
    :cond_2
    iget-object p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget p2, p2, v0

    if-ge p2, p1, :cond_3

    return v1

    .line 75
    :cond_3
    iget p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 p1, p1, 0x8

    shr-int p1, p3, p1

    .line 76
    iget-object p2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 p3, 0x2

    aget p2, p2, p3

    if-le p2, p1, :cond_4

    return v1

    .line 79
    :cond_4
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget p0, p0, p3

    if-ge p0, p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public dump(Ljava/lang/String;)V
    .locals 10

    .line 87
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v2, v2, v1

    sub-int/2addr v0, v2

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 88
    iget-object v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v3, v3, v2

    iget-object v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 89
    iget-object v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v6, v6, v5

    sub-int/2addr v4, v6

    add-int/2addr v4, v2

    mul-int v6, v0, v3

    mul-int/2addr v6, v4

    .line 92
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": ["

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] total : "

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\trgb: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "red: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v8, v8, v1

    iget v9, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v8, v8, v1

    iget v9, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "green: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v8, v8, v2

    iget v9, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v8, v8, v2

    iget v9, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "blue: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v8, v8, v5

    iget v9, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v8, v8, v5

    iget v9, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\tred: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v1, v8, v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "green: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v1, v1, v2

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v1, v1, v2

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "blue: "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v1, v1, v5

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget p0, p0, v5

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\trdiff: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "gdiff: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "bdiff: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "colorArea: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpJustRGB(Ljava/lang/String;)V
    .locals 4

    .line 115
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\trgb: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "red: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v1, v1, v2

    iget v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "green: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v1, v1, v2

    iget v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "blue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v1, v1, v2

    iget p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 p0, p0, 0x8

    shl-int p0, v1, p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getArea()I
    .locals 5

    .line 125
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v1, v2, v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 126
    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v1

    iget-object v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v3, v3, v1

    sub-int/2addr v2, v3

    add-int/2addr v2, v1

    .line 127
    iget-object v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget p0, p0, v4

    sub-int/2addr v3, p0

    add-int/2addr v3, v1

    mul-int/2addr v0, v2

    mul-int/2addr v0, v3

    return v0
.end method

.method public final getIndex()I
    .locals 0

    .line 161
    iget p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->index:I

    return p0
.end method

.method public setAverageRGB([I)V
    .locals 17

    move-object/from16 v0, p0

    .line 139
    iget-object v1, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    :goto_0
    iget-object v9, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v9, v9, v2

    const/16 v10, 0x8

    if-gt v1, v9, :cond_2

    .line 140
    iget-object v9, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v11, 0x1

    aget v9, v9, v11

    :goto_1
    iget-object v12, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v12, v12, v11

    if-gt v9, v12, :cond_1

    .line 141
    iget-object v12, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    :goto_2
    iget-object v14, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v14, v14, v13

    if-gt v12, v14, :cond_0

    .line 143
    iget v14, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    mul-int/2addr v14, v13

    shl-int v14, v12, v14

    iget v15, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    mul-int/2addr v15, v11

    shl-int v15, v9, v15

    or-int/2addr v14, v15

    iget v15, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    mul-int/2addr v15, v2

    shl-int v15, v1, v15

    or-int/2addr v14, v15

    .line 146
    aget v14, p1, v14

    .line 147
    iget v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int v11, v1, v11

    mul-int/2addr v11, v14

    move/from16 v16, v14

    int-to-long v13, v11

    add-long/2addr v3, v13

    .line 148
    iget v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int v11, v9, v11

    mul-int v14, v16, v11

    int-to-long v13, v14

    add-long/2addr v5, v13

    .line 149
    iget v11, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int v11, v12, v11

    mul-int v14, v16, v11

    int-to-long v13, v14

    add-long/2addr v7, v13

    add-int/lit8 v12, v12, 0x1

    const/4 v11, 0x1

    const/4 v13, 0x2

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    :cond_2
    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    int-to-long v11, v1

    div-long/2addr v3, v11

    .line 155
    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    int-to-long v11, v1

    div-long/2addr v5, v11

    .line 156
    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    int-to-long v11, v1

    div-long/2addr v7, v11

    const-wide/16 v11, 0xff

    and-long/2addr v3, v11

    const/16 v1, 0x10

    shl-long/2addr v3, v1

    and-long/2addr v5, v11

    shl-long/2addr v5, v10

    or-long/2addr v3, v5

    and-long v5, v7, v11

    shl-long v1, v5, v2

    or-long/2addr v1, v3

    long-to-int v1, v1

    .line 157
    iput v1, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    return-void
.end method

.method public final setIndex(I)V
    .locals 0

    .line 165
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->index:I

    return-void
.end method
