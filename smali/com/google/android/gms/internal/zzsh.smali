.class public final Lcom/google/android/gms/internal/zzsh;
.super Ljava/lang/Object;


# static fields
.field public static final zzbiA:[D

.field public static final zzbiB:[Z

.field public static final zzbiC:[Ljava/lang/String;

.field public static final zzbiD:[[B

.field public static final zzbiE:[B

.field public static final zzbix:[I

.field public static final zzbiy:[J

.field public static final zzbiz:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/google/android/gms/internal/zzsh;->zzbix:[I

    new-array v1, v0, [J

    sput-object v1, Lcom/google/android/gms/internal/zzsh;->zzbiy:[J

    new-array v1, v0, [F

    sput-object v1, Lcom/google/android/gms/internal/zzsh;->zzbiz:[F

    new-array v1, v0, [D

    sput-object v1, Lcom/google/android/gms/internal/zzsh;->zzbiA:[D

    new-array v1, v0, [Z

    sput-object v1, Lcom/google/android/gms/internal/zzsh;->zzbiB:[Z

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lcom/google/android/gms/internal/zzsh;->zzbiC:[Ljava/lang/String;

    new-array v1, v0, [[B

    sput-object v1, Lcom/google/android/gms/internal/zzsh;->zzbiD:[[B

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/zzsh;->zzbiE:[B

    return-void
.end method

.method static zzD(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzrw;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlA(I)Z

    move-result p0

    return p0
.end method

.method public static final zzc(Lcom/google/android/gms/internal/zzrw;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->getPosition()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlA(I)Z

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzrw;->zzFo()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrw;->zzlA(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzrw;->zzlE(I)V

    return v1
.end method

.method static zzlU(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static zzlV(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method
