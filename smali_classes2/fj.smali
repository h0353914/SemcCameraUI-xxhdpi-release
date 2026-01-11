.class final Lfj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field final a:Ljava/util/ListIterator;

.field final synthetic b:I

.field final synthetic c:Lfl;


# direct methods
.method public constructor <init>(Lfl;I)V
    .locals 0

    iput-object p1, p0, Lfj;->c:Lfl;

    iput p2, p0, Lfj;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lfl;->a:Lds;

    .line 3
    invoke-interface {p1, p2}, Lds;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lfj;->a:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final bridge synthetic add(Ljava/lang/Object;)V
    .locals 0

    .line 4
    check-cast p1, Ljava/lang/String;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 6
    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget-object p0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 7
    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 8
    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final nextIndex()I
    .locals 0

    iget-object p0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 9
    invoke-interface {p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public final bridge synthetic previous()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 10
    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    iget-object p0, p0, Lfj;->a:Ljava/util/ListIterator;

    .line 11
    invoke-interface {p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 12
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 13
    check-cast p1, Ljava/lang/String;

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 14
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
