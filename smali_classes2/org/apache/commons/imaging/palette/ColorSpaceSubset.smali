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
    .locals 4

    .line 59
    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v1, v0, 0x8

    shr-int/2addr p1, v1

    .line 60
    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    if-le v3, p1, :cond_0

    return v2

    .line 63
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v3, p0, v2

    if-ge v3, p1, :cond_1

    return v2

    :cond_1
    rsub-int/lit8 p1, v0, 0x8

    shr-int p1, p2, p1

    const/4 p2, 0x1

    .line 68
    aget v3, v1, p2

    if-le v3, p1, :cond_2

    return v2

    .line 71
    :cond_2
    aget v3, p0, p2

    if-ge v3, p1, :cond_3

    return v2

    :cond_3
    rsub-int/lit8 p1, v0, 0x8

    shr-int p1, p3, p1

    const/4 p3, 0x2

    .line 76
    aget v0, v1, p3

    if-le v0, p1, :cond_4

    return v2

    .line 79
    :cond_4
    aget p0, p0, p3

    if-ge p0, p1, :cond_5

    return v2

    :cond_5
    return p2
.end method

.method public dump(Ljava/lang/String;)V
    .locals 13

    .line 87
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v4, v3, v1

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 88
    aget v5, v0, v4

    aget v6, v3, v4

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    const/4 v6, 0x2

    .line 89
    aget v0, v0, v6

    aget v3, v3, v6

    sub-int/2addr v0, v3

    add-int/2addr v0, v4

    mul-int v3, v2, v5

    mul-int/2addr v3, v0

    .line 92
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v8, ": ["

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v8, "] total : "

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 98
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "\trgb: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", red: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v8, v8, v1

    iget v9, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v9, v9, 0x8

    shl-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v9, v9, v1

    iget v10, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v10, v10, 0x8

    shl-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", green: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v10, v10, v4

    iget v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v10, v10, v4

    iget v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v11, v11, 0x8

    shl-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", blue: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v11, v11, v6

    iget v12, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v12, v12, 0x8

    shl-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v11, v11, v6

    iget v12, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v12, v12, 0x8

    shl-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 105
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "\tred: "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v11, v11, v1

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v11, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v1, v11, v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v7, v7, v4

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v7, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v4, v7, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v4, v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget p0, p0, v6

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 108
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\trdiff: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", gdiff: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", bdiff: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", colorArea: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpJustRGB(Ljava/lang/String;)V
    .locals 5

    .line 115
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\trgb: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", red: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v3, v2

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", green: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v2, v2, v3

    iget v3, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", blue: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    iget v4, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    aget v1, v1, v3

    iget p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->precision:I

    rsub-int/lit8 p0, p0, 0x8

    shl-int p0, v1, p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getArea()I
    .locals 5

    .line 125
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->maxs:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->mins:[I

    aget v1, p0, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x1

    add-int/2addr v2, v1

    .line 126
    aget v3, v0, v1

    aget v4, p0, v1

    sub-int/2addr v3, v4

    add-int/2addr v3, v1

    const/4 v4, 0x2

    .line 127
    aget v0, v0, v4

    aget p0, p0, v4

    sub-int/2addr v0, p0

    add-int/2addr v0, v1

    mul-int/2addr v2, v3

    mul-int/2addr v2, v0

    return v2
.end method

.method public final getIndex()I
    .locals 0

    .line 161
    iget p0, p0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->index:I

    return p0
.end method

.method public setAverageRGB([I)V
    .locals 18

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

    mul-int/lit8 v15, v14, 0x2

    shl-int v15, v12, v15

    shl-int v16, v9, v14

    or-int v15, v15, v16

    or-int/2addr v15, v1

    .line 146
    aget v15, p1, v15

    rsub-int/lit8 v16, v14, 0x8

    shl-int v16, v1, v16

    mul-int v2, v15, v16

    move/from16 v17, v12

    int-to-long v11, v2

    add-long/2addr v3, v11

    rsub-int/lit8 v2, v14, 0x8

    shl-int v2, v9, v2

    mul-int/2addr v2, v15

    int-to-long v11, v2

    add-long/2addr v5, v11

    rsub-int/lit8 v2, v14, 0x8

    shl-int v2, v17, v2

    mul-int/2addr v15, v2

    int-to-long v11, v15

    add-long/2addr v7, v11

    add-int/lit8 v12, v17, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    const/4 v2, 0x0

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    goto :goto_0

    .line 154
    :cond_2
    iget v1, v0, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->total:I

    int-to-long v11, v1

    div-long/2addr v3, v11

    int-to-long v11, v1

    .line 155
    div-long/2addr v5, v11

    int-to-long v1, v1

    .line 156
    div-long/2addr v7, v1

    const-wide/16 v1, 0xff

    and-long/2addr v3, v1

    const/16 v9, 0x10

    shl-long/2addr v3, v9

    and-long/2addr v5, v1

    shl-long/2addr v5, v10

    or-long/2addr v3, v5

    and-long/2addr v1, v7

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
