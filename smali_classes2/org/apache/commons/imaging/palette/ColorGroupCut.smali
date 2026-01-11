.class Lorg/apache/commons/imaging/palette/ColorGroupCut;
.super Ljava/lang/Object;
.source "ColorGroupCut.java"


# instance fields
.field public final less:Lorg/apache/commons/imaging/palette/ColorGroup;

.field public final limit:I

.field public final mode:Lorg/apache/commons/imaging/palette/ColorComponent;

.field public final more:Lorg/apache/commons/imaging/palette/ColorGroup;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorGroup;Lorg/apache/commons/imaging/palette/ColorComponent;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->less:Lorg/apache/commons/imaging/palette/ColorGroup;

    .line 27
    iput-object p2, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->more:Lorg/apache/commons/imaging/palette/ColorGroup;

    .line 28
    iput-object p3, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->mode:Lorg/apache/commons/imaging/palette/ColorComponent;

    .line 29
    iput p4, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->limit:I

    return-void
.end method


# virtual methods
.method public getColorGroup(I)Lorg/apache/commons/imaging/palette/ColorGroup;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->mode:Lorg/apache/commons/imaging/palette/ColorComponent;

    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/palette/ColorComponent;->argbComponent(I)I

    move-result p1

    .line 34
    iget v0, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->limit:I

    if-gt p1, v0, :cond_0

    .line 35
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->less:Lorg/apache/commons/imaging/palette/ColorGroup;

    return-object p0

    .line 37
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/palette/ColorGroupCut;->more:Lorg/apache/commons/imaging/palette/ColorGroup;

    return-object p0
.end method
