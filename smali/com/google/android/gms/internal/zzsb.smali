.class Lcom/google/android/gms/internal/zzsb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private zzbir:Lcom/google/android/gms/internal/zzrz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzrz<",
            "**>;"
        }
    .end annotation
.end field

.field private zzbis:Ljava/lang/Object;

.field private zzbit:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzsg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    return-void
.end method

.method private toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb;->zzB()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrx;->zzC([B)Lcom/google/android/gms/internal/zzrx;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzsb;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-object v0
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsb;->zzFI()Lcom/google/android/gms/internal/zzsb;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/zzsb;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzsb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzrz;->zzbil:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [B

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [I

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [J

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [F

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [D

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [Z

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    :cond_9
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsb;->toByteArray()[B

    move-result-object p0

    invoke-direct {p1}, Lcom/google/android/gms/internal/zzsb;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    const/16 v0, 0x20f

    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzsb;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, p0

    return v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method zzB()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzrz;->zzX(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsg;->zzB()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move p0, v0

    return p0
.end method

.method public final zzFI()Lcom/google/android/gms/internal/zzsb;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzsb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsb;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/zzse;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/zzse;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzse;->zzFG()Lcom/google/android/gms/internal/zzse;

    move-result-object p0

    :goto_1
    iput-object p0, v0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [[B

    array-length v1, p0

    new-array v1, v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_a

    aget-object v3, p0, v2

    invoke-virtual {v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [Z

    invoke-virtual {p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [J

    invoke-virtual {p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [F

    invoke-virtual {p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/google/android/gms/internal/zzse;

    if-eqz v1, :cond_a

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    check-cast p0, [Lcom/google/android/gms/internal/zzse;

    array-length v1, p0

    new-array v1, v1, [Lcom/google/android/gms/internal/zzse;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_a

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzse;->zzFG()Lcom/google/android/gms/internal/zzse;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/zzrz;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrx;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzsg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzsg;->zza(Lcom/google/android/gms/internal/zzrx;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method zza(Lcom/google/android/gms/internal/zzsg;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zzb(Lcom/google/android/gms/internal/zzrz;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzrz<",
            "*TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    if-eq v0, p1, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Tried to getExtension with a differernt Extension."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzsb;->zzbir:Lcom/google/android/gms/internal/zzrz;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrz;->zzE(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsb;->zzbit:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsb;->zzbis:Ljava/lang/Object;

    return-object p0
.end method
