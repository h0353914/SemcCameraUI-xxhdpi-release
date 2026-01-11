.class Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;
.super Ljava/lang/Object;
.source "LongestAxisMedianCut.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;->doCut(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/imaging/palette/ColorCount;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;

.field final synthetic val$mode:Lorg/apache/commons/imaging/palette/ColorComponent;


# direct methods
.method constructor <init>(Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;Lorg/apache/commons/imaging/palette/ColorComponent;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;->this$0:Lorg/apache/commons/imaging/palette/LongestAxisMedianCut;

    iput-object p2, p0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;->val$mode:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 63
    check-cast p1, Lorg/apache/commons/imaging/palette/ColorCount;

    check-cast p2, Lorg/apache/commons/imaging/palette/ColorCount;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;->compare(Lorg/apache/commons/imaging/palette/ColorCount;Lorg/apache/commons/imaging/palette/ColorCount;)I

    move-result p0

    return p0
.end method

.method public compare(Lorg/apache/commons/imaging/palette/ColorCount;Lorg/apache/commons/imaging/palette/ColorCount;)I
    .locals 1

    .line 65
    sget-object v0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$3;->$SwitchMap$org$apache$commons$imaging$palette$ColorComponent:[I

    iget-object p0, p0, Lorg/apache/commons/imaging/palette/LongestAxisMedianCut$2;->val$mode:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/palette/ColorComponent;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 73
    :cond_0
    iget p0, p1, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    iget p1, p2, Lorg/apache/commons/imaging/palette/ColorCount;->blue:I

    :goto_0
    sub-int/2addr p0, p1

    return p0

    .line 71
    :cond_1
    iget p0, p1, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    iget p1, p2, Lorg/apache/commons/imaging/palette/ColorCount;->green:I

    goto :goto_0

    .line 69
    :cond_2
    iget p0, p1, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    iget p1, p2, Lorg/apache/commons/imaging/palette/ColorCount;->red:I

    goto :goto_0

    .line 67
    :cond_3
    iget p0, p1, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    iget p1, p2, Lorg/apache/commons/imaging/palette/ColorCount;->alpha:I

    goto :goto_0
.end method
