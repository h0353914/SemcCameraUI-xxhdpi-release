.class final Ldt;
.super Ldv;
.source "PG"


# static fields
.field private static final c:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ldt;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ldv;-><init>()V

    return-void
.end method

.method static b(Ljava/lang/Object;J)Ljava/util/List;
    .locals 0

    .line 3
    invoke-static {p0, p1, p2}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;J)V
    .locals 2

    .line 4
    invoke-static {p1, p2, p3}, Lfr;->f(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 5
    instance-of v0, p0, Lds;

    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Lds;

    invoke-interface {p0}, Lds;->e()Lds;

    move-result-object p0

    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Ldt;->c:Ljava/lang/Class;

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 8
    instance-of v0, p0, Leo;

    if-eqz v0, :cond_3

    instance-of v0, p0, Ldi;

    if-nez v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    check-cast p0, Ldi;

    invoke-interface {p0}, Ldi;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12
    invoke-interface {p0}, Ldi;->b()V

    :cond_2
    return-void

    .line 9
    :cond_3
    :goto_0
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 10
    :goto_1
    invoke-static {p1, p2, p3, p0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3

    .line 13
    invoke-static {p2, p3, p4}, Ldt;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    .line 15
    invoke-static {p1, p3, p4}, Ldt;->b(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    instance-of v1, v0, Lds;

    if-eqz v1, :cond_0

    .line 18
    new-instance v0, Ldr;

    invoke-direct {v0, p2}, Ldr;-><init>(I)V

    goto :goto_1

    .line 19
    :cond_0
    instance-of v1, v0, Leo;

    if-eqz v1, :cond_2

    instance-of v1, v0, Ldi;

    if-nez v1, :cond_1

    goto :goto_0

    .line 21
    :cond_1
    check-cast v0, Ldi;

    invoke-interface {v0, p2}, Ldi;->a(I)Ldi;

    move-result-object p2

    move-object v0, p2

    goto :goto_1

    .line 19
    :cond_2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    :goto_1
    invoke-static {p1, p3, p4, v0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 21
    :cond_3
    sget-object v1, Ldt;->c:Ljava/lang/Class;

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 26
    invoke-static {p1, p3, p4, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    :goto_2
    move-object v0, v1

    goto :goto_3

    .line 27
    :cond_4
    instance-of v1, v0, Lfl;

    if-eqz v1, :cond_5

    .line 28
    new-instance v1, Ldr;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ldr;-><init>(I)V

    .line 29
    check-cast v0, Lfl;

    invoke-virtual {v1, v0}, Lbw;->addAll(Ljava/util/Collection;)Z

    .line 30
    invoke-static {p1, p3, p4, v1}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_2

    .line 31
    :cond_5
    instance-of v1, v0, Leo;

    if-eqz v1, :cond_6

    instance-of v1, v0, Ldi;

    if-eqz v1, :cond_6

    move-object v1, v0

    check-cast v1, Ldi;

    .line 32
    invoke-interface {v1}, Ldi;->a()Z

    move-result v2

    if-nez v2, :cond_6

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p2

    invoke-interface {v1, v0}, Ldi;->a(I)Ldi;

    move-result-object v0

    .line 34
    invoke-static {p1, p3, p4, v0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 35
    :cond_6
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    .line 36
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez p2, :cond_7

    if-lez v1, :cond_7

    .line 37
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_7
    if-gtz p2, :cond_8

    goto :goto_4

    :cond_8
    move-object p0, v0

    .line 38
    :goto_4
    invoke-static {p1, p3, p4, p0}, Lfr;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method
