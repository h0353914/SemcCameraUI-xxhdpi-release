.class public Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut;
.super Ljava/lang/Object;
.source "MostPopulatedBoxesMedianCut.java"

# interfaces
.implements Lorg/apache/commons/imaging/palette/MedianCut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public performNextMedianCut(Ljava/util/List;Z)Z
    .locals 20
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

    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 33
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v3

    move v6, v4

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/imaging/palette/ColorGroup;

    .line 34
    iget v8, v7, Lorg/apache/commons/imaging/palette/ColorGroup;->maxDiff:I

    if-lez v8, :cond_0

    .line 35
    iget v8, v7, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    if-le v8, v6, :cond_0

    .line 37
    iget v5, v7, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    move v6, v5

    move-object v5, v7

    goto :goto_0

    :cond_1
    if-nez v5, :cond_2

    return v4

    :cond_2
    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 50
    invoke-static {}, Lorg/apache/commons/imaging/palette/ColorComponent;->values()[Lorg/apache/commons/imaging/palette/ColorComponent;

    move-result-object v2

    array-length v8, v2

    const/4 v9, -0x1

    move-wide v10, v6

    move-object v6, v3

    move v3, v4

    :goto_1
    const/4 v7, 0x1

    if-ge v3, v8, :cond_b

    aget-object v12, v2, v3

    if-eqz v1, :cond_4

    .line 51
    sget-object v13, Lorg/apache/commons/imaging/palette/ColorComponent;->ALPHA:Lorg/apache/commons/imaging/palette/ColorComponent;

    if-ne v12, v13, :cond_4

    move-object/from16 v17, v2

    :cond_3
    :goto_2
    move/from16 v18, v8

    goto/16 :goto_5

    .line 54
    :cond_4
    iget-object v13, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    new-instance v14, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;

    invoke-direct {v14, v12}, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;-><init>(Lorg/apache/commons/imaging/palette/ColorComponent;)V

    invoke-static {v13, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 55
    iget v13, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    int-to-double v13, v13

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v13, v13

    move v14, v4

    move v15, v14

    :goto_3
    move/from16 v16, v15

    .line 59
    iget-object v4, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v14, v4, :cond_6

    .line 60
    iget-object v4, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/palette/ColorCount;

    .line 62
    iget v4, v4, Lorg/apache/commons/imaging/palette/ColorCount;->count:I

    add-int/2addr v4, v15

    if-ge v4, v13, :cond_5

    add-int/lit8 v14, v14, 0x1

    move v15, v4

    goto :goto_3

    :cond_5
    move v15, v4

    .line 70
    :cond_6
    iget-object v4, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    if-ne v14, v4, :cond_7

    add-int/lit8 v14, v14, -0x1

    goto :goto_4

    :cond_7
    if-lez v14, :cond_8

    sub-int/2addr v15, v13

    .line 73
    invoke-static {v15}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v13, v13, v16

    .line 74
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v7

    if-ge v7, v4, :cond_8

    add-int/lit8 v14, v14, -0x1

    .line 80
    :cond_8
    :goto_4
    new-instance v4, Ljava/util/ArrayList;

    iget-object v7, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    add-int/lit8 v13, v14, 0x1

    const/4 v15, 0x0

    invoke-interface {v7, v15, v13}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 82
    new-instance v7, Ljava/util/ArrayList;

    iget-object v15, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    move-object/from16 v17, v2

    iget-object v2, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v15, v13, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 85
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_2

    .line 88
    :cond_9
    new-instance v2, Lorg/apache/commons/imaging/palette/ColorGroup;

    invoke-direct {v2, v4, v1}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    .line 89
    new-instance v4, Lorg/apache/commons/imaging/palette/ColorGroup;

    invoke-direct {v4, v7, v1}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    .line 90
    iget v7, v2, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    iget v13, v4, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    sub-int/2addr v7, v13

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    move/from16 v18, v8

    int-to-double v7, v7

    .line 91
    iget v2, v2, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    iget v4, v4, Lorg/apache/commons/imaging/palette/ColorGroup;->totalPoints:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v19, v12

    int-to-double v12, v2

    div-double/2addr v7, v12

    cmpg-double v2, v7, v10

    if-gez v2, :cond_a

    move-wide v10, v7

    move v9, v14

    move-object/from16 v6, v19

    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v2, v17

    move/from16 v8, v18

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_b
    if-nez v6, :cond_c

    const/4 v2, 0x0

    return v2

    :cond_c
    const/4 v2, 0x0

    .line 103
    iget-object v3, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    new-instance v4, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;

    invoke-direct {v4, v6}, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$ColorComparer;-><init>(Lorg/apache/commons/imaging/palette/ColorComponent;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 104
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    add-int/lit8 v8, v9, 0x1

    invoke-interface {v4, v2, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    iget-object v10, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v4, v8, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 109
    new-instance v4, Lorg/apache/commons/imaging/palette/ColorGroup;

    invoke-direct {v4, v3, v1}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    .line 110
    new-instance v3, Lorg/apache/commons/imaging/palette/ColorGroup;

    invoke-direct {v3, v2, v1}, Lorg/apache/commons/imaging/palette/ColorGroup;-><init>(Ljava/util/List;Z)V

    .line 111
    invoke-interface {v0, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->colorCounts:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/palette/ColorCount;

    .line 117
    sget-object v1, Lorg/apache/commons/imaging/palette/MostPopulatedBoxesMedianCut$1;->$SwitchMap$org$apache$commons$imaging$palette$ColorComponent:[I

    invoke-virtual {v6}, Lorg/apache/commons/imaging/palette/ColorComponent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 131
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Bad mode."

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :pswitch_0
    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    goto :goto_6

    .line 125
    :pswitch_1
    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    goto :goto_6

    .line 122
    :pswitch_2
    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    goto :goto_6

    .line 119
    :pswitch_3
    iget v0, v0, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    .line 133
    :goto_6
    new-instance v1, Lorg/apache/commons/imaging/palette/ColorGroupCut;

    invoke-direct {v1, v4, v3, v6, v0}, Lorg/apache/commons/imaging/palette/ColorGroupCut;-><init>(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;I)V

    iput-object v1, v5, Lorg/apache/commons/imaging/palette/ColorGroup;->cut:Lorg/apache/commons/imaging/palette/ColorGroupCut;

    return v7

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
