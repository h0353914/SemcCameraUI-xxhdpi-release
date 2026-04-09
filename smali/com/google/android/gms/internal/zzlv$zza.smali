.class public final Lcom/google/android/gms/internal/zzlv$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field public final zzaeE:I

.field public final zzaeF:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzlv$zza;->zzaeE:I

    iput p2, p0, Lcom/google/android/gms/internal/zzlv$zza;->zzaeF:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lcom/google/android/gms/internal/zzlv$zza;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzlv$zza;

    iget v2, p1, Lcom/google/android/gms/internal/zzlv$zza;->zzaeE:I

    iget v3, p0, Lcom/google/android/gms/internal/zzlv$zza;->zzaeE:I

    if-ne v2, v3, :cond_2

    iget p1, p1, Lcom/google/android/gms/internal/zzlv$zza;->zzaeF:I

    iget p0, p0, Lcom/google/android/gms/internal/zzlv$zza;->zzaeF:I

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/internal/zzlv$zza;->zzaeE:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/google/android/gms/internal/zzlv$zza;->zzaeF:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
