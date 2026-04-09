.class final Lcom/google/android/gms/internal/zzsg;
.super Ljava/lang/Object;


# instance fields
.field final tag:I

.field final zzbiw:[B


# direct methods
.method constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzsg;->tag:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsg;->zzbiw:[B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/zzsg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzsg;

    iget v1, p0, Lcom/google/android/gms/internal/zzsg;->tag:I

    iget v3, p1, Lcom/google/android/gms/internal/zzsg;->tag:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsg;->zzbiw:[B

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsg;->zzbiw:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    move v0, v2

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzsg;->tag:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    const/16 v0, 0x1f

    mul-int/2addr v0, v1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsg;->zzbiw:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method zzB()I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzsg;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrx;->zzlO(I)I

    move-result v0

    const/4 v1, 0x0

    add-int/2addr v1, v0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsg;->zzbiw:[B

    array-length p0, p0

    add-int/2addr v1, p0

    return v1
.end method

.method zza(Lcom/google/android/gms/internal/zzrx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/zzsg;->tag:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzlN(I)V

    iget-object p0, p0, Lcom/google/android/gms/internal/zzsg;->zzbiw:[B

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrx;->zzF([B)V

    return-void
.end method
