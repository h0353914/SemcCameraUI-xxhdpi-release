.class final Ldf;
.super Lbw;
.source "PG"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ldi;
.implements Leo;


# static fields
.field private static final b:Ldf;


# instance fields
.field private c:[I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ldf;

    const/4 v1, 0x0

    .line 1
    new-array v2, v1, [I

    invoke-direct {v0, v2, v1}, Ldf;-><init>([II)V

    sput-object v0, Ldf;->b:Ldf;

    .line 2
    invoke-virtual {v0}, Lbw;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    .line 3
    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ldf;-><init>([II)V

    return-void
.end method

.method private constructor <init>([II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lbw;-><init>()V

    iput-object p1, p0, Ldf;->c:[I

    iput p2, p0, Ldf;->d:I

    return-void
.end method

.method private final d(I)V
    .locals 1

    if-ltz p1, :cond_0

    .line 35
    iget v0, p0, Ldf;->d:I

    if-ge p1, v0, :cond_0

    return-void

    .line 0
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 35
    invoke-direct {p0, p1}, Ldf;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final e(I)Ljava/lang/String;
    .locals 2

    iget p0, p0, Ldf;->d:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x23

    .line 49
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Size:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic a(I)Ldi;
    .locals 2

    iget v0, p0, Ldf;->d:I

    if-lt p1, v0, :cond_0

    .line 50
    new-instance v0, Ldf;

    iget-object v1, p0, Ldf;->c:[I

    .line 51
    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iget p0, p0, Ldf;->d:I

    invoke-direct {v0, p1, p0}, Ldf;-><init>([II)V

    return-object v0

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final bridge synthetic add(ILjava/lang/Object;)V
    .locals 4

    .line 5
    check-cast p2, Ljava/lang/Integer;

    .line 6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 7
    invoke-virtual {p0}, Lbw;->c()V

    if-ltz p1, :cond_1

    .line 8
    iget v0, p0, Ldf;->d:I

    if-gt p1, v0, :cond_1

    iget-object v1, p0, Ldf;->c:[I

    .line 9
    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    .line 10
    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3

    .line 15
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 11
    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 12
    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Ldf;->c:[I

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Ldf;->d:I

    sub-int/2addr v3, p1

    .line 13
    invoke-static {v1, p1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ldf;->c:[I

    .line 10
    :goto_0
    iget-object v0, p0, Ldf;->c:[I

    .line 14
    aput p2, v0, p1

    iget p1, p0, Ldf;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldf;->d:I

    .line 15
    iget p1, p0, Ldf;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldf;->modCount:I

    return-void

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 8
    invoke-direct {p0, p1}, Ldf;->e(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final bridge synthetic add(Ljava/lang/Object;)Z
    .locals 0

    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ldf;->c(I)V

    const/4 p0, 0x1

    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    .line 18
    invoke-virtual {p0}, Lbw;->c()V

    .line 19
    invoke-static {p1}, Ldj;->a(Ljava/lang/Object;)V

    .line 20
    instance-of v0, p1, Ldf;

    if-nez v0, :cond_0

    .line 21
    invoke-super {p0, p1}, Lbw;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 22
    :cond_0
    check-cast p1, Ldf;

    .line 23
    iget v0, p1, Ldf;->d:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, p0, Ldf;->d:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_2

    add-int/2addr v2, v0

    iget-object v0, p0, Ldf;->c:[I

    .line 24
    array-length v3, v0

    if-le v2, v3, :cond_1

    .line 25
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Ldf;->c:[I

    .line 26
    :cond_1
    iget-object v0, p1, Ldf;->c:[I

    iget-object v3, p0, Ldf;->c:[I

    iget v4, p0, Ldf;->d:I

    iget p1, p1, Ldf;->d:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Ldf;->d:I

    .line 27
    iget p1, p0, Ldf;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ldf;->modCount:I

    return v0

    :cond_2
    new-instance p0, Ljava/lang/OutOfMemoryError;

    .line 28
    invoke-direct {p0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p0

    :cond_3
    return v1
.end method

.method public final b(I)I
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Ldf;->d(I)V

    iget-object p0, p0, Ldf;->c:[I

    .line 44
    aget p0, p0, p1

    return p0
.end method

.method public final c(I)V
    .locals 4

    .line 29
    invoke-virtual {p0}, Lbw;->c()V

    iget v0, p0, Ldf;->d:I

    iget-object v1, p0, Ldf;->c:[I

    .line 30
    array-length v2, v1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    .line 31
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 32
    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Ldf;->c:[I

    :cond_0
    iget-object v0, p0, Ldf;->c:[I

    iget v1, p0, Ldf;->d:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ldf;->d:I

    .line 33
    aput p1, v0, v1

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Ldf;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    .line 36
    instance-of v1, p1, Ldf;

    if-nez v1, :cond_0

    .line 37
    invoke-super {p0, p1}, Lbw;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 38
    :cond_0
    check-cast p1, Ldf;

    iget v1, p0, Ldf;->d:I

    .line 39
    iget v2, p1, Ldf;->d:I

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 40
    iget-object p1, p1, Ldf;->c:[I

    move v1, v3

    :goto_0
    iget v2, p0, Ldf;->d:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ldf;->c:[I

    .line 41
    aget v2, v2, v1

    aget v4, p1, v1

    if-ne v2, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    return v0

    :cond_3
    return v3

    :cond_4
    return v0
.end method

.method public final bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Ldf;->b(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Ldf;->d:I

    if-ge v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ldf;->c:[I

    .line 45
    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 4

    .line 46
    instance-of v0, p1, Ljava/lang/Integer;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 47
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Ldf;->d:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Ldf;->c:[I

    .line 48
    aget v3, v3, v2

    if-eq v3, p1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method public final bridge synthetic remove(I)Ljava/lang/Object;
    .locals 4

    .line 52
    invoke-virtual {p0}, Lbw;->c()V

    .line 53
    invoke-direct {p0, p1}, Ldf;->d(I)V

    iget-object v0, p0, Ldf;->c:[I

    .line 54
    aget v1, v0, p1

    iget v2, p0, Ldf;->d:I

    add-int/lit8 v3, v2, -0x1

    if-ge p1, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    .line 55
    invoke-static {v0, v3, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Ldf;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ldf;->d:I

    .line 56
    iget p1, p0, Ldf;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldf;->modCount:I

    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    .line 58
    invoke-virtual {p0}, Lbw;->c()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ldf;->d:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Ldf;->c:[I

    .line 59
    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Ldf;->c:[I

    add-int/lit8 v0, v1, 0x1

    iget v2, p0, Ldf;->d:I

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 60
    invoke-static {p1, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Ldf;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ldf;->d:I

    .line 61
    iget p1, p0, Ldf;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ldf;->modCount:I

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method protected final removeRange(II)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Lbw;->c()V

    if-lt p2, p1, :cond_0

    .line 63
    iget-object v0, p0, Ldf;->c:[I

    iget v1, p0, Ldf;->d:I

    sub-int/2addr v1, p2

    .line 64
    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Ldf;->d:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Ldf;->d:I

    .line 65
    iget p1, p0, Ldf;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ldf;->modCount:I

    return-void

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "toIndex < fromIndex"

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 66
    check-cast p2, Ljava/lang/Integer;

    .line 67
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 68
    invoke-virtual {p0}, Lbw;->c()V

    .line 69
    invoke-direct {p0, p1}, Ldf;->d(I)V

    iget-object p0, p0, Ldf;->c:[I

    .line 70
    aget v0, p0, p1

    .line 71
    aput p2, p0, p1

    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget p0, p0, Ldf;->d:I

    return p0
.end method
