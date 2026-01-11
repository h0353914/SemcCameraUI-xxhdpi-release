.class final Lco;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lgb;


# instance fields
.field public final a:Lcn;


# direct methods
.method public constructor <init>(Lcn;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "output"

    .line 2
    invoke-static {p1, v0}, Ldj;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lco;->a:Lcn;

    iput-object p0, p1, Lcn;->b:Lco;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object p0, p0, Lco;->a:Lcn;

    const/4 v0, 0x3

    .line 25
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    return-void
.end method

.method public final a(ID)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcn;->a(ID)V

    return-void
.end method

.method public final a(IF)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 10
    invoke-virtual {p0, p1, p2}, Lcn;->a(IF)V

    return-void
.end method

.method public final a(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 21
    invoke-virtual {p0, p1, p2}, Lcn;->i(II)V

    return-void
.end method

.method public final a(IJ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcn;->e(IJ)V

    return-void
.end method

.method public final a(ILck;)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcn;->b(ILck;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 1

    .line 18
    instance-of v0, p2, Lck;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 19
    check-cast p2, Lck;

    invoke-virtual {p0, p1, p2}, Lcn;->c(ILck;)V

    return-void

    :cond_0
    iget-object p0, p0, Lco;->a:Lcn;

    .line 20
    check-cast p2, Leh;

    invoke-virtual {p0, p1, p2}, Lcn;->a(ILeh;)V

    return-void
.end method

.method public final a(ILjava/lang/Object;Les;)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 17
    check-cast p2, Leh;

    invoke-virtual {p0, p1, p2, p3}, Lcn;->b(ILeh;Les;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 26
    invoke-virtual {p0, p1, p2}, Lcn;->b(ILjava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 3
    invoke-virtual {p0, p1, p2}, Lcn;->a(IZ)V

    return-void
.end method

.method public final b(I)V
    .locals 1

    iget-object p0, p0, Lco;->a:Lcn;

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    return-void
.end method

.method public final b(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 7
    invoke-virtual {p0, p1, p2}, Lcn;->g(II)V

    return-void
.end method

.method public final b(IJ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcn;->f(IJ)V

    return-void
.end method

.method public final b(ILjava/lang/Object;Les;)V
    .locals 1

    iget-object p0, p0, Lco;->a:Lcn;

    .line 11
    check-cast p2, Leh;

    const/4 v0, 0x3

    .line 12
    invoke-virtual {p0, p1, v0}, Lcn;->f(II)V

    iget-object v0, p0, Lcn;->b:Lco;

    .line 13
    invoke-interface {p3, p2, v0}, Les;->a(Ljava/lang/Object;Lgb;)V

    const/4 p2, 0x4

    .line 14
    invoke-virtual {p0, p1, p2}, Lcn;->f(II)V

    return-void
.end method

.method public final c(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcn;->g(II)V

    return-void
.end method

.method public final c(IJ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 28
    invoke-virtual {p0, p1, p2, p3}, Lcn;->e(IJ)V

    return-void
.end method

.method public final d(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 8
    invoke-virtual {p0, p1, p2}, Lcn;->i(II)V

    return-void
.end method

.method public final d(IJ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcn;->f(IJ)V

    return-void
.end method

.method public final e(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 27
    invoke-virtual {p0, p1, p2}, Lcn;->h(II)V

    return-void
.end method

.method public final e(IJ)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 24
    invoke-virtual {p0, p1, p2, p3}, Lcn;->a(IJ)V

    return-void
.end method

.method public final f(II)V
    .locals 0

    iget-object p0, p0, Lco;->a:Lcn;

    .line 23
    invoke-virtual {p0, p1, p2}, Lcn;->a(II)V

    return-void
.end method
