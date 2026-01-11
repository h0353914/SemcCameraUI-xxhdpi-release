.class final Lfb;
.super Ljava/util/AbstractSet;
.source "PG"


# instance fields
.field final synthetic a:Lfc;


# direct methods
.method public constructor <init>(Lfc;)V
    .locals 0

    iput-object p1, p0, Lfb;->a:Lfc;

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    check-cast p1, Ljava/util/Map$Entry;

    .line 3
    invoke-virtual {p0, p1}, Lfb;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lfb;->a:Lfc;

    .line 4
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lfc;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Lfb;->a:Lfc;

    .line 5
    invoke-virtual {p0}, Lfc;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    .line 6
    check-cast p1, Ljava/util/Map$Entry;

    iget-object p0, p0, Lfb;->a:Lfc;

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 8
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lfa;

    iget-object p0, p0, Lfb;->a:Lfc;

    .line 10
    invoke-direct {v0, p0}, Lfa;-><init>(Lfc;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 11
    check-cast p1, Ljava/util/Map$Entry;

    .line 12
    invoke-virtual {p0, p1}, Lfb;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lfb;->a:Lfc;

    .line 13
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfc;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lfb;->a:Lfc;

    .line 14
    invoke-virtual {p0}, Lfc;->size()I

    move-result p0

    return p0
.end method
