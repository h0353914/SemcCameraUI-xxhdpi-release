.class public Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;
.super Ljava/lang/Object;
.source "LongestAxisMedianCut.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/MedianCut;


# static fields
.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            "Lorg/apache/commons/imaging/palette/ColorComponent;",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 63
    new-instance v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;

    invoke-direct {v0, p0, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;-><init>(Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;Lorg/apache/commons/imaging/palette/ColorComponent;)V

    .line 80
    iget-object p0, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 81
    iget p0, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p0, v0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    move v3, v2

    .line 85
    iget-object v4, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 86
    iget-object v4, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/palette/ColorCount;

    .line 88
    iget v4, v4, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    add-int/2addr v2, v4

    if-ge v2, p0, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    :cond_0
    iget-object v4, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_1
    if-lez v1, :cond_2

    sub-int/2addr v2, p0

    .line 100
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr p0, v3

    .line 101
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 107
    :cond_2
    :goto_1
    invoke-interface {p3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 108
    new-instance p0, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {v2, v0, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    iget-object v4, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 114
    new-instance v2, Lorg/apache/commons/imaging/palette/ColorGroup;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, p4}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    .line 115
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance p0, Lorg/apache/commons/imaging/palette/ColorGroup;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v3, p4}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    .line 117
    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object p3, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/imaging/palette/ColorCount;

    .line 121
    sget-object p4, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$3;->$SwitchMap$org$apache$commons$imaging$palette$ColorComponent:[I

    invoke-virtual {p2}, Lorg/apache/commons/imaging/palette/ColorComponent;->ordinal()I

    move-result v0

    aget p4, p4, v0

    packed-switch p4, :pswitch_data_0

    .line 135
    new-instance p0, Ljava/lang/Error;

    const-string p1, "Bad mode."

    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :pswitch_0
    iget p3, p3, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    goto :goto_2

    .line 129
    :pswitch_1
    iget p3, p3, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    goto :goto_2

    .line 126
    :pswitch_2
    iget p3, p3, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    goto :goto_2

    .line 123
    :pswitch_3
    iget p3, p3, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    .line 137
    :goto_2
    new-instance p4, Lorg/apache/commons/imaging/palette/ColorGroupCut;

    invoke-direct {p4, v2, p0, p2, p3}, Lorg/apache/commons/imaging/palette/ColorGroupCut;-><init>(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;I)V

    iput-object p4, p1, Lorg/apache/commons/imaging/palette/ColorGroup;->cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public performNextMedianCut(Ljava/util/List;Z)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/palette/ColorGroup;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 38
    sget-object v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    .line 39
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/palette/ColorGroup;

    .line 41
    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    if-nez v2, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 44
    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    if-le v0, v2, :cond_1

    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    if-le v0, v2, :cond_1

    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->alphaDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-le v0, v2, :cond_1

    .line 48
    sget-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->ALPHA:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    goto :goto_0

    .line 49
    :cond_1
    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    if-le v0, v2, :cond_2

    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->redDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-le v0, v2, :cond_2

    .line 51
    sget-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->RED:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    goto :goto_0

    .line 52
    :cond_2
    iget v0, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->greenDiff:I

    iget v2, v1, Lorg/apache/commons/imaging/palette/ColorGroup;->blueDiff:I

    if-le v0, v2, :cond_3

    .line 53
    sget-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->GREEN:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    goto :goto_0

    .line 55
    :cond_3
    sget-object v0, Lorg/apache/commons/imaging/palette/ColorComponent;->BLUE:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0, v1, v0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method
