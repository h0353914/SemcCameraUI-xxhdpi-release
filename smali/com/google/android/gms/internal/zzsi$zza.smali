.class public final Lcom/google/android/gms/internal/zzsi$zza;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry<",
        "Lcom/google/android/gms/internal/zzsi$zza;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbiF:[Ljava/lang/String;

.field public zzbiG:[Ljava/lang/String;

.field public zzbiH:[I

.field public zzbiI:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zza;->zzFS()Lcom/google/android/gms/internal/zzsi$zza;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzsi$zza;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzsi$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([J[J)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_7
    :goto_0
    iget-object p0, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz p0, :cond_9

    iget-object p0, p1, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_8

    return v0

    :cond_8
    move v0, v2

    :cond_9
    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    const/16 v0, 0x1f

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([J)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    add-int/2addr v0, p0

    return v0
.end method

.method protected zzB()I
    .locals 7

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    move v1, v3

    move v4, v1

    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lcom/google/android/gms/internal/zzrx;->zzfA(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v4

    mul-int/2addr v5, v2

    add-int/2addr v0, v5

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_5

    move v1, v3

    move v4, v1

    move v5, v4

    :goto_1
    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_4

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    aget-object v6, v6, v1

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    invoke-static {v6}, Lcom/google/android/gms/internal/zzrx;->zzfA(Ljava/lang/String;)I

    move-result v6

    add-int/2addr v4, v6

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v4

    mul-int/2addr v5, v2

    add-int/2addr v0, v5

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v1, v1

    if-lez v1, :cond_7

    move v1, v3

    move v4, v1

    :goto_2
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v5, v5

    if-ge v1, v5, :cond_6

    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    aget v5, v5, v1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzrx;->zzlJ(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v1, v1

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v1, v1

    if-lez v1, :cond_9

    move v1, v3

    :goto_3
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v4, v4

    if-ge v3, v4, :cond_8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/zzrx;->zzaa(J)I

    move-result v4

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length p0, p0

    mul-int/2addr v2, p0

    add-int/2addr v0, v2

    :cond_9
    return v0
.end method

.method public zzFS()Lcom/google/android/gms/internal/zzsi$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiC:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiC:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbix:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiy:[J

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiv:I

    return-object p0
.end method

.method public zzG(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zza;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    if-eqz v0, :cond_1b

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    const/16 v1, 0x12

    if-eq v0, v1, :cond_13

    const/16 v1, 0x18

    if-eq v0, v1, :cond_f

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_a

    const/16 v1, 0x20

    if-eq v0, v1, :cond_6

    const/16 v1, 0x22

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zza;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v1

    move v3, v2

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFA()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v1, v1

    :goto_2
    add-int/2addr v3, v1

    new-array v3, v3, [J

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_3
    array-length v2, v3

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    goto/16 :goto_9

    :cond_6
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-nez v1, :cond_7

    move v1, v2

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v1, v1

    :goto_4
    add-int/2addr v0, v1

    new-array v0, v0, [J

    if-eqz v1, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    :goto_5
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_9

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v1

    move v3, v2

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFA()I

    move-result v4

    if-lez v4, :cond_b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_7

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v1, v1

    :goto_7
    add-int/2addr v3, v1

    new-array v3, v3, [I

    if-eqz v1, :cond_d

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    :goto_8
    array-length v2, v3

    if-ge v1, v2, :cond_e

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v2

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_e
    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    :goto_9
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlD(I)V

    goto/16 :goto_0

    :cond_f
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-nez v1, :cond_10

    move v1, v2

    goto :goto_a

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v1, v1

    :goto_a
    add-int/2addr v0, v1

    new-array v0, v0, [I

    if-eqz v1, :cond_11

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_11
    :goto_b
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_12

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v2

    aput v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    goto/16 :goto_0

    :cond_13
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    if-nez v1, :cond_14

    move v1, v2

    goto :goto_c

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v1, v1

    :goto_c
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_15

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    :goto_d
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_16

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    :cond_16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_17
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    if-nez v1, :cond_18

    move v1, v2

    goto :goto_e

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v1, v1

    :goto_e
    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    if-eqz v1, :cond_19

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_19
    :goto_f
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_1b
    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiF:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiG:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v0, v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    array-length v2, v2

    if-ge v0, v2, :cond_4

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiH:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v0, v0

    if-lez v0, :cond_5

    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    array-length v0, v0

    if-ge v1, v0, :cond_5

    const/4 v0, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zza;->zzbiI:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzse;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zza;->zzG(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zza;

    move-result-object p0

    return-object p0
.end method
