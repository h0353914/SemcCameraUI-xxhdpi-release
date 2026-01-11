.class final Lfk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field final a:Ljava/util/Iterator;

.field final synthetic b:Lfl;


# direct methods
.method public constructor <init>(Lfl;)V
    .locals 0

    iput-object p1, p0, Lfk;->b:Lfl;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p1, p1, Lfl;->a:Lds;

    .line 3
    invoke-interface {p1}, Lds;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lfk;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lfk;->a:Ljava/util/Iterator;

    .line 4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lfk;->a:Ljava/util/Iterator;

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 6
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
