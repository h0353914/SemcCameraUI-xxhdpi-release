.class Lorg/apache/commons/imaging/palette/ColorCount;
.super Ljava/lang/Object;
.source "ColorCount.java"


# instance fields
.field public final alpha:I

.field public final argb:I

.field public final blue:I

.field public count:I

.field public final green:I

.field public final red:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorCount;->argb:I

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0xff

    and-int/2addr v0, v1

    .line 30
    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v1

    .line 31
    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    shr-int/lit8 v0, p1, 0x8

    and-int/2addr v0, v1

    .line 32
    iput v0, p0, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    shr-int/lit8 p1, p1, 0x0

    and-int/2addr p1, v1

    .line 33
    iput p1, p0, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 43
    instance-of v0, p1, Lorg/apache/commons/imaging/palette/ColorCount;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 44
    check-cast p1, Lorg/apache/commons/imaging/palette/ColorCount;

    .line 45
    iget p1, p1, Lorg/apache/commons/imaging/palette/ColorCount;->argb:I

    iget p0, p0, Lorg/apache/commons/imaging/palette/ColorCount;->argb:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 0

    .line 38
    iget p0, p0, Lorg/apache/commons/imaging/palette/ColorCount;->argb:I

    return p0
.end method
