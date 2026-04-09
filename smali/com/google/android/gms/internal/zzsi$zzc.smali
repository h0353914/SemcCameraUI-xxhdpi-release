.class public final Lcom/google/android/gms/internal/zzsi$zzc;
.super Lcom/google/android/gms/internal/zzry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzry<",
        "Lcom/google/android/gms/internal/zzsi$zzc;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbiL:[B

.field public zzbiM:[[B

.field public zzbiN:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzry;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsi$zzc;->zzFU()Lcom/google/android/gms/internal/zzsi$zzc;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzsi$zzc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzsi$zzc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    iget-object v3, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    invoke-static {v1, v3}, Lcom/google/android/gms/internal/zzsc;->zza([[B[[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    iget-boolean v3, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsa;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6
    :goto_0
    iget-object p0, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz p0, :cond_8

    iget-object p0, p1, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    move v0, v2

    :cond_8
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

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    invoke-static {v2}, Lcom/google/android/gms/internal/zzsc;->zza([[B)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v2, 0x4d5

    :goto_0
    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsa;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsa;->hashCode()I

    move-result p0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p0, 0x0

    :goto_2
    add-int/2addr v0, p0

    return v0
.end method

.method protected zzB()I
    .locals 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzry;->zzB()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    sget-object v2, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v1, v1

    if-lez v1, :cond_3

    const/4 v1, 0x0

    move v3, v1

    move v4, v3

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v5, v5

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    aget-object v5, v5, v1

    if-eqz v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    invoke-static {v5}, Lcom/google/android/gms/internal/zzrx;->zzE([B)I

    move-result v5

    add-int/2addr v3, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v0, v3

    mul-int/2addr v2, v4

    add-int/2addr v0, v2

    :cond_3
    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eqz v1, :cond_4

    const/4 v1, 0x3

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/zzrx;->zzc(IZ)I

    move-result p0

    add-int/2addr v0, p0

    :cond_4
    return v0
.end method

.method public zzFU()Lcom/google/android/gms/internal/zzsi$zzc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    sget-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiD:[[B

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbik:Lcom/google/android/gms/internal/zzsa;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiv:I

    return-object p0
.end method

.method public zzI(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzc;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0xa

    if-eq v0, v1, :cond_6

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const/16 v1, 0x18

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzsi$zzc;->zza(Lcom/google/android/gms/internal/zzrw;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFs()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    goto :goto_0

    :cond_2
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/zzsh;->zzc(Lcom/google/android/gms/internal/zzrw;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [[B

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_5

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrw;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    goto :goto_0

    :cond_7
    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    sget-object v1, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiL:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiM:[[B

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzrx;->zza(I[B)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzsi$zzc;->zzbiN:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzb(IZ)V

    :cond_3
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzsi$zzc;->zzI(Lcom/google/android/gms/internal/zzrw;)Lcom/google/android/gms/internal/zzsi$zzc;

    move-result-object p0

    return-object p0
.end method
