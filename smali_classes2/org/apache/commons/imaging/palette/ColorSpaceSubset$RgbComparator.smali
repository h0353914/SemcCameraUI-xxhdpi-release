.class public Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;
.super Ljava/lang/Object;
.source "ColorSpaceSubset.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/palette/ColorSpaceSubset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RgbComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/imaging/palette/ColorSpaceSubset;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x711183284013235L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 168
    check-cast p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    check-cast p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/palette/ColorSpaceSubset$RgbComparator;->compare(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;Lorg/apache/commons/imaging/palette/ColorSpaceSubset;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/commons/imaging/palette/ColorSpaceSubset;Lorg/apache/commons/imaging/palette/ColorSpaceSubset;)I
    .locals 0

    .line 172
    iget p0, p1, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    iget p1, p2, Lorg/apache/commons/imaging/palette/ColorSpaceSubset;->rgb:I

    sub-int/2addr p0, p1

    return p0
.end method
