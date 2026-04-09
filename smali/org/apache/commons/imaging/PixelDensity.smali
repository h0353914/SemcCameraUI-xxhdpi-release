.class public final Lorg/apache/commons/imaging/PixelDensity;
.super Ljava/lang/Object;
.source "PixelDensity.java"


# static fields
.field private static final PIXEL_NO_UNIT:I = 0x0

.field private static final PIXEL_PER_CENTIMETRE:I = 0x64

.field private static final PIXEL_PER_INCH:I = 0xfe

.field private static final PIXEL_PER_METRE:I = 0x2710


# instance fields
.field private final horizontalDensity:D

.field private final unitLength:I

.field private final verticalDensity:D


# direct methods
.method private constructor <init>(DDI)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    .line 37
    iput-wide p3, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    .line 38
    iput p5, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    return-void
.end method

.method public static createFromPixelsPerCentimetre(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 7

    .line 54
    new-instance v6, Lorg/apache/commons/imaging/PixelDensity;

    const/16 v5, 0x64

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v6
.end method

.method public static createFromPixelsPerInch(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 7

    .line 46
    new-instance v6, Lorg/apache/commons/imaging/PixelDensity;

    const/16 v5, 0xfe

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v6
.end method

.method public static createFromPixelsPerMetre(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 7

    .line 50
    new-instance v6, Lorg/apache/commons/imaging/PixelDensity;

    const/16 v5, 0x2710

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v6
.end method

.method public static createUnitless(DD)Lorg/apache/commons/imaging/PixelDensity;
    .locals 7

    .line 42
    new-instance v6, Lorg/apache/commons/imaging/PixelDensity;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/PixelDensity;-><init>(DDI)V

    return-object v6
.end method


# virtual methods
.method public getRawHorizontalDensity()D
    .locals 2

    .line 74
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    return-wide v0
.end method

.method public getRawVerticalDensity()D
    .locals 2

    .line 78
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    return-wide v0
.end method

.method public horizontalDensityCentimetres()D
    .locals 4

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInCentimetres()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    return-wide v0

    .line 117
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget p0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public horizontalDensityInches()D
    .locals 4

    .line 82
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInInches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    return-wide v0

    .line 85
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    const-wide v2, 0x406fc00000000000L    # 254.0

    mul-double/2addr v0, v2

    iget p0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public horizontalDensityMetres()D
    .locals 4

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInMetres()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    return-wide v0

    .line 101
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->horizontalDensity:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    iget p0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public isInCentimetres()Z
    .locals 1

    .line 66
    iget p0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInInches()Z
    .locals 1

    .line 62
    iget p0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    const/16 v0, 0xfe

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInMetres()Z
    .locals 1

    .line 70
    iget p0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    const/16 v0, 0x2710

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isUnitless()Z
    .locals 0

    .line 58
    iget p0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public verticalDensityCentimetres()D
    .locals 4

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInCentimetres()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    return-wide v0

    .line 125
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    iget p0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public verticalDensityInches()D
    .locals 4

    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInInches()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    return-wide v0

    .line 93
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    const-wide v2, 0x406fc00000000000L    # 254.0

    mul-double/2addr v0, v2

    iget p0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public verticalDensityMetres()D
    .locals 4

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/imaging/PixelDensity;->isInMetres()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    return-wide v0

    .line 109
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/imaging/PixelDensity;->verticalDensity:D

    const-wide v2, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v0, v2

    iget p0, p0, Lorg/apache/commons/imaging/PixelDensity;->unitLength:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method
