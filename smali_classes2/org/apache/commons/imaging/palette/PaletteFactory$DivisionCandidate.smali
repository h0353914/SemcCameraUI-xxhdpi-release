.class Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;
.super Ljava/lang/Object;
.source "PaletteFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/palette/PaletteFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DivisionCandidate"
.end annotation


# instance fields
.field private final dst_a:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

.field private final dst_b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;Lorg/apache/commons/imaging/palette/ColorSpaceSubset;)V
    .locals 0

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_a:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    .line 264
    iput-object p2, p0, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    .locals 0

    .line 256
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_a:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;)Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
    .locals 0

    .line 256
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/PaletteFactory$DivisionCandidate;->dst_b:Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    return-object p0
.end method
