.class public final Lcom/google/android/gms/internal/zzsi$zzd;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry<",
        "Lcom/google/android/gms/internal/zzsi$zzd;",
        ">;"
    }
.end annotation


# instance fields
.field public tag:Ljava/lang/String;

.field public zzbiO:J

.field public zzbiP:J

.field public zzbiQ:I

.field public zzbiR:I

.field public zzbiS:Z

.field public zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

.field public zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

.field public zzbiV:[B

.field public zzbiW:[B

.field public zzbiX:[B

.field public zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

.field public zzbiZ:Ljava/lang/String;

.field public zzbja:J

.field public zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

.field public zzbjc:[B

.field public zzbjd:I

.field public zzbje:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zzd;->zzFV()Lcom/google/android/gms/internal/zzsi$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzsi$zzd;

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    if-eqz v1, :cond_5

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v1, :cond_a

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v1, :cond_b

    return v2

    :cond_a
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzsi$zzb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v1, :cond_10

    return v2

    :cond_f
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzsi$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v1, :cond_11

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-eqz v1, :cond_12

    return v2

    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-wide v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iget-wide v5, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v1, :cond_14

    iget-object v1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v1, :cond_15

    return v2

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/zzsi$zzc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->equals([I[I)Z

    move-result v1

    if-nez v1, :cond_18

    return v2

    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_0

    :cond_19
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_0
    iget-object p0, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz p0, :cond_1c

    iget-object p0, p1, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_1b

    return v0

    :cond_1b
    move v0, v2

    :cond_1c
    return v0
.end method

.method public hashCode()I
    .locals 9

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

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x4cf

    goto :goto_1

    :cond_1
    const/16 v2, 0x4d5

    :goto_1
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v2, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsi$zzb;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsi$zza;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iget-wide v7, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    ushr-long v6, v7, v6

    xor-long/2addr v4, v6

    long-to-int v2, v4

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v2, :cond_5

    move v2, v3

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsi$zzc;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->hashCode([I)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result v3

    :cond_7
    :goto_6
    add-int/2addr v0, v3

    return v0
.end method

.method protected zzB()I
    .locals 10

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const/4 v5, 0x1

    invoke-static {v5, v1, v2}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v1, v1

    if-lez v1, :cond_4

    move v1, v0

    move v0, v5

    :goto_0
    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v6, v6

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    aget-object v6, v6, v0

    if-eqz v6, :cond_2

    const/4 v7, 0x3

    invoke-static {v7, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v6

    add-int/2addr v1, v6

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v6, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x6

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v6, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x8

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v1, :cond_8

    const/16 v1, 0x9

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    iget-boolean v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eqz v1, :cond_a

    const/16 v1, 0xb

    iget v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eqz v1, :cond_b

    const/16 v1, 0xc

    iget v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    sget-object v6, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_c

    const/16 v1, 0xd

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xe

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzn(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d
    iget-wide v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    const-wide/32 v8, 0x2bf20

    cmp-long v1, v6, v8

    if-eqz v1, :cond_e

    const/16 v1, 0xf

    iget-wide v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    invoke-static {v1, v6, v7}, Lcom/google/android/gms/internal/zzrx;->zze(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v1, :cond_f

    const/16 v1, 0x10

    iget-object v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_f
    iget-wide v6, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v1, v6, v3

    if-eqz v1, :cond_10

    const/16 v1, 0x11

    iget-wide v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    invoke-static {v1, v3, v4}, Lcom/google/android/gms/internal/zzrx;->zzd(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    sget-object v3, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x12

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11
    iget v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eqz v1, :cond_12

    const/16 v1, 0x13

    iget v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzrx;->zzA(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v1, v1

    if-lez v1, :cond_14

    move v1, v5

    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v3, v3

    if-ge v5, v3, :cond_13

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    aget v3, v3, v5

    invoke-static {v3}, Lcom/google/android/gms/internal/zzrx;->zzlJ(I)I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_13
    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length p0, p0

    mul-int/2addr v2, p0

    add-int/2addr v0, v2

    :cond_14
    return v0
.end method

.method public zzFV()Lcom/google/android/gms/internal/zzsi$zzd;
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-static {}, Lcom/google/android/gms/internal/zzsi$zze;->zzFW()[Lcom/google/android/gms/internal/zzsi$zze;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    const-string v2, ""

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-wide/32 v2, 0x2bf20

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbix:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiv:I

    return-object p0
.end method

.method public zzJ(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzd;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zzd;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :sswitch_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFv()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlC(I)I

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v2

    move v3, v1

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFA()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v2, v2

    :goto_2
    add-int/2addr v3, v2

    new-array v3, v3, [I

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v4, v1, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    :goto_3
    array-length v1, v3

    if-ge v2, v1, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v1

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iput-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zzlD(I)V

    goto :goto_0

    :sswitch_1
    const/16 v0, 0xa0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-nez v2, :cond_5

    move v2, v1

    goto :goto_4

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v2, v2

    :goto_4
    add-int/2addr v0, v2

    new-array v0, v0, [I

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v1

    aput v1, v0, v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v1

    aput v1, v0, v2

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    goto/16 :goto_0

    :sswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    goto :goto_6

    :sswitch_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFu()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    goto/16 :goto_0

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFr()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    goto/16 :goto_0

    :sswitch_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zzb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    goto :goto_6

    :sswitch_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    goto/16 :goto_0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzsi$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsi$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    :goto_6
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    goto/16 :goto_0

    :sswitch_10
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    if-nez v2, :cond_b

    move v2, v1

    goto :goto_7

    :cond_b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v2, v2

    :goto_7
    add-int/2addr v0, v2

    new-array v0, v0, [Lcom/google/android/gms/internal/zzsi$zze;

    if-eqz v2, :cond_c

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    invoke-static {v3, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    :goto_8
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_d

    new-instance v1, Lcom/google/android/gms/internal/zzsi$zze;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzsi$zze;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    new-instance v1, Lcom/google/android/gms/internal/zzsi$zze;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzsi$zze;-><init>()V

    aput-object v1, v0, v2

    aget-object v1, v0, v2

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFq()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    goto/16 :goto_0

    :sswitch_13
    return-object p0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x8 -> :sswitch_12
        0x12 -> :sswitch_11
        0x1a -> :sswitch_10
        0x32 -> :sswitch_f
        0x3a -> :sswitch_e
        0x42 -> :sswitch_d
        0x4a -> :sswitch_c
        0x50 -> :sswitch_b
        0x58 -> :sswitch_a
        0x60 -> :sswitch_9
        0x6a -> :sswitch_8
        0x72 -> :sswitch_7
        0x78 -> :sswitch_6
        0x82 -> :sswitch_5
        0x88 -> :sswitch_4
        0x92 -> :sswitch_3
        0x98 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xa2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiO:J

    const/4 v4, 0x1

    invoke-virtual {p1, v4, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzd;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v0, v0

    if-lez v0, :cond_3

    move v0, v1

    :goto_0
    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiT:[Lcom/google/android/gms/internal/zzsi$zze;

    aget-object v4, v4, v0

    if-eqz v4, :cond_2

    const/4 v5, 0x3

    invoke-virtual {p1, v5, v4}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    sget-object v4, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x6

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiV:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiY:Lcom/google/android/gms/internal/zzsi$zza;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    sget-object v4, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_6

    const/16 v0, 0x8

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiW:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    if-eqz v0, :cond_7

    const/16 v0, 0x9

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiU:Lcom/google/android/gms/internal/zzsi$zzb;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_7
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    if-eqz v0, :cond_8

    const/16 v0, 0xa

    iget-boolean v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiS:Z

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zzb(IZ)V

    :cond_8
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    if-eqz v0, :cond_9

    const/16 v0, 0xb

    iget v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiQ:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    if-eqz v0, :cond_a

    const/16 v0, 0xc

    iget v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiR:I

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    sget-object v4, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0xd

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiX:[B

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xe

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiZ:Ljava/lang/String;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zzb(ILjava/lang/String;)V

    :cond_c
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    const-wide/32 v6, 0x2bf20

    cmp-long v0, v4, v6

    if-eqz v0, :cond_d

    const/16 v0, 0xf

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbja:J

    invoke-virtual {p1, v0, v4, v5}, Lcom/google/android/gms/internal/zzrx;->zzc(IJ)V

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    if-eqz v0, :cond_e

    const/16 v0, 0x10

    iget-object v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjb:Lcom/google/android/gms/internal/zzsi$zzc;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/gms/internal/zzrx;->zza(ILcom/google/android/gms/internal/zzse;)V

    :cond_e
    iget-wide v4, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_f

    const/16 v0, 0x11

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbiP:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/android/gms/internal/zzrx;->zzb(IJ)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x12

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjc:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_10
    iget v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    if-eqz v0, :cond_11

    const/16 v0, 0x13

    iget v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbjd:I

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v0, v0

    if-lez v0, :cond_12

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    array-length v0, v0

    if-ge v1, v0, :cond_12

    const/16 v0, 0x14

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzd;->zzbje:[I

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzrx;->zzy(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zzd;->zzJ(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzd;

    move-result-object p0

    return-object p0
.end method
