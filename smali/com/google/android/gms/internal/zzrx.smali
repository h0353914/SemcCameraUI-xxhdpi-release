.class public final Lcom/google/android/gms/internal/zzrx;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrx$zza;
    }
.end annotation


# instance fields
.field private final zzbij:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    sget-object p1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 0

    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrx;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static zzA(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrx;->zzlJ(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzB(II)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrx;->zzlK(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzC([B)Lcom/google/android/gms/internal/zzrx;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/google/android/gms/internal/zzrx;->zzb([BII)Lcom/google/android/gms/internal/zzrx;

    move-result-object p0

    return-object p0
.end method

.method public static zzE([B)I
    .locals 1

    array-length v0, p0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrx;->zzlO(I)I

    move-result v0

    array-length p0, p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static zza(Ljava/lang/CharSequence;I)I
    .locals 4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_3

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x800

    if-ge v2, v3, :cond_0

    rsub-int/lit8 v2, v2, 0x7f

    ushr-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x2

    const v3, 0xd800

    if-gt v3, v2, :cond_2

    const v3, 0xdfff

    if-gt v2, v3, :cond_2

    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v2

    const/high16 v3, 0x10000

    if-ge v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unpaired surrogate at index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private static zza(Ljava/lang/CharSequence;[BII)I
    .locals 8

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    add-int/2addr p3, p2

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v1, v0, :cond_0

    add-int v3, v1, p2

    if-ge v3, p3, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-ge v4, v2, :cond_0

    int-to-byte v2, v4

    aput-byte v2, p1, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ne v1, v0, :cond_1

    add-int/2addr p2, v0

    return p2

    :cond_1
    add-int/2addr p2, v1

    :goto_1
    if-ge v1, v0, :cond_b

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-ge v3, v2, :cond_2

    if-ge p2, p3, :cond_2

    add-int/lit8 v4, p2, 0x1

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    :goto_2
    move p2, v4

    goto/16 :goto_3

    :cond_2
    const/16 v4, 0x800

    const/16 v5, 0x3f

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, p3, -0x2

    if-gt p2, v4, :cond_3

    add-int/lit8 v4, p2, 0x1

    const/16 v6, 0x3c0

    ushr-int/lit8 v7, v3, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    add-int/lit8 p2, v4, 0x1

    and-int/2addr v3, v5

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    goto :goto_3

    :cond_3
    const v4, 0xdfff

    const v6, 0xd800

    if-lt v3, v6, :cond_4

    if-ge v4, v3, :cond_5

    :cond_4
    add-int/lit8 v7, p3, -0x3

    if-gt p2, v7, :cond_5

    add-int/lit8 v4, p2, 0x1

    const/16 v6, 0x1e0

    ushr-int/lit8 v7, v3, 0xc

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    add-int/lit8 p2, v4, 0x1

    ushr-int/lit8 v6, v3, 0x6

    and-int/2addr v6, v5

    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, p1, v4

    add-int/lit8 v4, p2, 0x1

    and-int/2addr v3, v5

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    goto :goto_2

    :cond_5
    add-int/lit8 v7, p3, -0x4

    if-gt p2, v7, :cond_8

    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_7

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-nez v6, :cond_6

    move v1, v4

    goto :goto_4

    :cond_6
    invoke-static {v3, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    add-int/lit8 v3, p2, 0x1

    const/16 v6, 0xf0

    ushr-int/lit8 v7, v1, 0x12

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    add-int/lit8 p2, v3, 0x1

    ushr-int/lit8 v6, v1, 0xc

    and-int/2addr v6, v5

    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, p1, v3

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v6, v1, 0x6

    and-int/2addr v6, v5

    or-int/2addr v6, v2

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    add-int/lit8 p2, v3, 0x1

    and-int/2addr v1, v5

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    move v1, v4

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    :goto_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unpaired surrogate at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    if-gt v6, v3, :cond_a

    if-gt v3, v4, :cond_a

    add-int/lit8 p1, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    if-eq p1, p3, :cond_9

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    invoke-static {v3, p0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p0

    if-nez p0, :cond_a

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unpaired surrogate at index "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed writing "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p3, " at index "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    return p2
.end method

.method private static zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {p0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw p0

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzrx;->zza(Ljava/lang/CharSequence;[BII)I

    move-result p0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/nio/BufferOverflowException;

    invoke-direct {p1}, Ljava/nio/BufferOverflowException;-><init>()V

    invoke-virtual {p1, p0}, Ljava/nio/BufferOverflowException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p1

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public static zzaa(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzad(J)I

    move-result p0

    return p0
.end method

.method public static zzab(J)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzaf(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzad(J)I

    move-result p0

    return p0
.end method

.method public static zzad(J)I
    .locals 4

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static zzaf(J)J
    .locals 3

    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static zzav(Z)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static zzb(ID)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzrx;->zzk(D)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(ILcom/google/android/gms/internal/zzse;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrx;->zzd(Lcom/google/android/gms/internal/zzse;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb(I[B)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrx;->zzE([B)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzb([BII)Lcom/google/android/gms/internal/zzrx;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzrx;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzrx;-><init>([BII)V

    return-object v0
.end method

.method private static zzb(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    .locals 7

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    :goto_1
    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    :cond_0
    const/16 v4, 0x800

    const/16 v5, 0x3f

    if-ge v2, v4, :cond_1

    const/16 v4, 0x3c0

    ushr-int/lit8 v6, v2, 0x6

    or-int/2addr v4, v6

    :goto_2
    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    goto :goto_1

    :cond_1
    const v4, 0xd800

    if-lt v2, v4, :cond_5

    const v4, 0xdfff

    if-ge v4, v2, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v1, 0x1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-eq v4, v6, :cond_4

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-nez v6, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    const/16 v2, 0xf0

    ushr-int/lit8 v6, v1, 0x12

    or-int/2addr v2, v6

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, v1, 0xc

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v2, v1, 0x6

    and-int/2addr v2, v5

    or-int/2addr v2, v3

    int-to-byte v2, v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/2addr v1, v5

    or-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move v1, v4

    goto :goto_5

    :cond_4
    :goto_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unpaired surrogate at index "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_4
    const/16 v4, 0x1e0

    ushr-int/lit8 v6, v2, 0xc

    or-int/2addr v4, v6

    int-to-byte v4, v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    ushr-int/lit8 v4, v2, 0x6

    and-int/2addr v4, v5

    or-int/2addr v4, v3

    goto :goto_2

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    return-void
.end method

.method public static zzc(IF)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrx;->zzj(F)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzc(ILcom/google/android/gms/internal/zzse;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrx;->zze(Lcom/google/android/gms/internal/zzse;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzc(IZ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrx;->zzav(Z)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method private static zzc(Ljava/lang/CharSequence;)I
    .locals 5

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x80

    if-ge v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x800

    if-ge v3, v4, :cond_1

    rsub-int/lit8 v3, v3, 0x7f

    ushr-int/lit8 v3, v3, 0x1f

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/zzrx;->zza(Ljava/lang/CharSequence;I)I

    move-result p0

    add-int/2addr v2, p0

    :cond_2
    if-ge v2, v0, :cond_3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UTF-8 length does not fit in int: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v1, v2

    const-wide v3, 0x100000000L

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return v2
.end method

.method public static zzd(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzrx;->zzaa(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzse;)I
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzse;->zzFR()I

    move-result p0

    return p0
.end method

.method public static zze(IJ)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzrx;->zzab(J)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method

.method public static zze(Lcom/google/android/gms/internal/zzse;)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzse;->zzFR()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlO(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzfA(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzc(Ljava/lang/CharSequence;)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlO(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method public static zzj(F)I
    .locals 0

    const/4 p0, 0x4

    return p0
.end method

.method public static zzk(D)I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method public static zzlJ(I)I
    .locals 0

    if-ltz p0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlO(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static zzlK(I)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlQ(I)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlO(I)I

    move-result p0

    return p0
.end method

.method public static zzlM(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/zzsh;->zzD(II)I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlO(I)I

    move-result p0

    return p0
.end method

.method public static zzlO(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static zzlQ(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method public static zzn(ILjava/lang/String;)I
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzrx;->zzlM(I)I

    move-result p0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrx;->zzfA(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public zzC(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzsh;->zzD(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzlN(I)V

    return-void
.end method

.method public zzD([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrx;->zzlN(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzF([B)V

    return-void
.end method

.method public zzF([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/gms/internal/zzrx;->zzc([BII)V

    return-void
.end method

.method public zzFD()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p0

    return p0
.end method

.method public zzFE()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrx;->zzFD()I

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Did not write as much data as expected."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public zzY(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzrx;->zzac(J)V

    return-void
.end method

.method public zzZ(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/zzrx;->zzaf(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzrx;->zzac(J)V

    return-void
.end method

.method public zza(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzrx;->zzj(D)V

    return-void
.end method

.method public zza(ILcom/google/android/gms/internal/zzse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzrx;->zzc(Lcom/google/android/gms/internal/zzse;)V

    return-void
.end method

.method public zza(I[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzrx;->zzD([B)V

    return-void
.end method

.method public zzac(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzlL(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrx;->zzlL(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public zzae(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzrx$zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/internal/zzrx$zza;-><init>(II)V

    throw p1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public zzau(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzlL(I)V

    return-void
.end method

.method public zzb(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzrx$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/zzrx$zza;-><init>(II)V

    throw p1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public zzb(IF)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzrx;->zzi(F)V

    return-void
.end method

.method public zzb(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzrx;->zzY(J)V

    return-void
.end method

.method public zzb(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzrx;->zzfz(Ljava/lang/String;)V

    return-void
.end method

.method public zzb(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzrx;->zzau(Z)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/zzse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzse;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public zzc(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/zzrx;->zzZ(J)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/internal/zzse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzse;->zzFQ()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrx;->zzlN(I)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzse;->zza(Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method public zzc([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lt v0, p3, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/zzrx$zza;

    iget-object p2, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/internal/zzrx$zza;-><init>(II)V

    throw p1
.end method

.method public zzfz(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrx;->zzlO(I)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    invoke-static {v1}, Lcom/google/android/gms/internal/zzrx;->zzlO(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-ge v2, v0, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzrx$zza;

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/zzrx$zza;-><init>(II)V

    throw p1

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    add-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-static {p1, v2}, Lcom/google/android/gms/internal/zzrx;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    sub-int v1, p1, v1

    sub-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzrx;->zzlN(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    invoke-static {p1}, Lcom/google/android/gms/internal/zzrx;->zzc(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrx;->zzlN(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzrx;->zza(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Lcom/google/android/gms/internal/zzrx$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/zzrx$zza;-><init>(II)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzrx$zza;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0
.end method

.method public zzi(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzlP(I)V

    return-void
.end method

.method public zzj(D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzrx;->zzae(J)V

    return-void
.end method

.method public zzlH(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzlN(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzrx;->zzac(J)V

    return-void
.end method

.method public zzlI(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrx;->zzlQ(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzlN(I)V

    return-void
.end method

.method public zzlL(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzb(B)V

    return-void
.end method

.method public zzlN(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzlL(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrx;->zzlL(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public zzlP(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/zzrx$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p0

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/internal/zzrx$zza;-><init>(II)V

    throw p1

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzrx;->zzbij:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public zzy(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzrx;->zzlH(I)V

    return-void
.end method

.method public zzz(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzrx;->zzlI(I)V

    return-void
.end method
