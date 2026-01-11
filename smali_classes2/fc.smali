.class Lfc;
.super Ljava/util/AbstractMap;
.source "PG"


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/util/Map;

.field public c:Z

.field public d:Ljava/util/Map;

.field private final e:I

.field private volatile f:Lfb;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    iput p1, p0, Lfc;->e:I

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lfc;->a:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfc;->b:Ljava/util/Map;

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfc;->d:Ljava/util/Map;

    return-void
.end method

.method private final a(Ljava/lang/Comparable;)I
    .locals 4

    iget-object v0, p0, Lfc;->a:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    if-ltz v1, :cond_2

    iget-object v3, p0, Lfc;->a:Ljava/util/List;

    .line 6
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lez;

    iget-object v3, v3, Lez;->a:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int p0, v0

    return p0

    :cond_0
    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    if-gt v2, v1, :cond_5

    add-int v0, v2, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Lfc;->a:Ljava/util/List;

    .line 7
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lez;

    iget-object v3, v3, Lez;->a:Ljava/lang/Comparable;

    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_3

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_0

    :cond_3
    if-lez v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    neg-int p0, v2

    return p0
.end method

.method static a(I)Lfc;
    .locals 1

    new-instance v0, Lev;

    .line 44
    invoke-direct {v0, p0}, Lev;-><init>(I)V

    return-object v0
.end method

.method private final d()Ljava/util/SortedMap;
    .locals 2

    .line 35
    invoke-virtual {p0}, Lfc;->c()V

    iget-object v0, p0, Lfc;->b:Ljava/util/Map;

    .line 36
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfc;->b:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    .line 37
    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lfc;->b:Ljava/util/Map;

    .line 38
    move-object v1, v0

    check-cast v1, Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    iput-object v0, p0, Lfc;->d:Ljava/util/Map;

    :cond_0
    iget-object p0, p0, Lfc;->b:Ljava/util/Map;

    .line 39
    check-cast p0, Ljava/util/SortedMap;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, Lfc;->a:Ljava/util/List;

    .line 32
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 45
    invoke-virtual {p0}, Lfc;->c()V

    .line 46
    invoke-direct {p0, p1}, Lfc;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lfc;->a:Ljava/util/List;

    .line 47
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lez;

    invoke-virtual {p0, p2}, Lez;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    invoke-virtual {p0}, Lfc;->c()V

    iget-object v1, p0, Lfc;->a:Ljava/util/List;

    .line 49
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, p0, Lfc;->a:Ljava/util/List;

    .line 49
    instance-of v1, v1, Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lfc;->e:I

    .line 50
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lfc;->a:Ljava/util/List;

    :cond_2
    :goto_0
    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 49
    iget v1, p0, Lfc;->e:I

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lfc;->a:Ljava/util/List;

    .line 51
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lfc;->e:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lfc;->a:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    .line 52
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lez;

    .line 53
    invoke-direct {p0}, Lfc;->d()Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, v1, Lez;->a:Ljava/lang/Comparable;

    iget-object v1, v1, Lez;->b:Ljava/lang/Object;

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lfc;->a:Ljava/util/List;

    new-instance v2, Lez;

    .line 54
    invoke-direct {v2, p0, p1, p2}, Lez;-><init>(Lfc;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_4
    invoke-direct {p0}, Lfc;->d()Ljava/util/SortedMap;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final b()Ljava/lang/Iterable;
    .locals 1

    iget-object v0, p0, Lfc;->b:Ljava/util/Map;

    .line 33
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lfc;->b:Ljava/util/Map;

    .line 34
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Ley;->b:Ljava/lang/Iterable;

    :goto_0
    return-object p0
.end method

.method public final b(I)Ljava/util/Map$Entry;
    .locals 0

    iget-object p0, p0, Lfc;->a:Ljava/util/List;

    .line 31
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    return-object p0
.end method

.method public final c(I)Ljava/lang/Object;
    .locals 5

    .line 63
    invoke-virtual {p0}, Lfc;->c()V

    iget-object v0, p0, Lfc;->a:Ljava/util/List;

    .line 64
    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lez;

    iget-object p1, p1, Lez;->b:Ljava/lang/Object;

    iget-object v0, p0, Lfc;->b:Ljava/util/Map;

    .line 65
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lfc;->d()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lfc;->a:Ljava/util/List;

    new-instance v2, Lez;

    .line 67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Comparable;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, p0, v4, v3}, Lez;-><init>(Lfc;Ljava/lang/Comparable;Ljava/lang/Object;)V

    .line 67
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object p1
.end method

.method public final c()V
    .locals 0

    iget-boolean p0, p0, Lfc;->c:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 8
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final clear()V
    .locals 1

    .line 9
    invoke-virtual {p0}, Lfc;->c()V

    iget-object v0, p0, Lfc;->a:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lfc;->a:Ljava/util/List;

    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget-object v0, p0, Lfc;->b:Ljava/util/Map;

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lfc;->b:Ljava/util/Map;

    .line 13
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 14
    check-cast p1, Ljava/lang/Comparable;

    .line 15
    invoke-direct {p0, p1}, Lfc;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object p0, p0, Lfc;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lfc;->f:Lfb;

    if-nez v0, :cond_0

    new-instance v0, Lfb;

    .line 16
    invoke-direct {v0, p0}, Lfb;-><init>(Lfc;)V

    iput-object v0, p0, Lfc;->f:Lfb;

    :cond_0
    iget-object p0, p0, Lfc;->f:Lfb;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-eq p0, p1, :cond_6

    .line 17
    instance-of v1, p1, Lfc;

    if-nez v1, :cond_0

    .line 18
    invoke-super {p0, p1}, Ljava/util/AbstractMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 19
    :cond_0
    check-cast p1, Lfc;

    .line 20
    invoke-virtual {p0}, Lfc;->size()I

    move-result v1

    .line 21
    invoke-virtual {p1}, Lfc;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_5

    .line 22
    invoke-virtual {p0}, Lfc;->a()I

    move-result v2

    .line 23
    invoke-virtual {p1}, Lfc;->a()I

    move-result v4

    if-ne v2, v4, :cond_4

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    .line 24
    invoke-virtual {p0, v4}, Lfc;->b(I)Ljava/util/Map$Entry;

    move-result-object v5

    invoke-virtual {p1, v4}, Lfc;->b(I)Ljava/util/Map$Entry;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    if-eq v2, v1, :cond_3

    iget-object p0, p0, Lfc;->b:Ljava/util/Map;

    .line 25
    iget-object p1, p1, Lfc;->b:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    return v0

    .line 26
    :cond_4
    invoke-virtual {p0}, Lfc;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1}, Lfc;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    return v3

    :cond_6
    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 27
    check-cast p1, Ljava/lang/Comparable;

    .line 28
    invoke-direct {p0, p1}, Lfc;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object p0, p0, Lfc;->a:Ljava/util/List;

    .line 29
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lez;

    iget-object p0, p0, Lez;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-object p0, p0, Lfc;->b:Ljava/util/Map;

    .line 30
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    .line 40
    invoke-virtual {p0}, Lfc;->a()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lfc;->a:Ljava/util/List;

    .line 41
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lez;

    invoke-virtual {v3}, Lez;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfc;->b:Ljava/util/Map;

    .line 42
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object p0, p0, Lfc;->b:Ljava/util/Map;

    .line 43
    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    add-int/2addr v2, p0

    :cond_1
    return v2
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lfc;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lfc;->c()V

    .line 58
    check-cast p1, Ljava/lang/Comparable;

    .line 59
    invoke-direct {p0, p1}, Lfc;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lfc;->c(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lfc;->b:Ljava/util/Map;

    .line 61
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lfc;->b:Ljava/util/Map;

    .line 62
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lfc;->a:Ljava/util/List;

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object p0, p0, Lfc;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
