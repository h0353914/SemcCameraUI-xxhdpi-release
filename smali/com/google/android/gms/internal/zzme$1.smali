.class Lcom/google/android/gms/internal/zzme$1;
.super Lcom/google/android/gms/internal/zzmh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzme;->zzpx()Lcom/google/android/gms/internal/zzmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzmh<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic zzagA:Lcom/google/android/gms/internal/zzme;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzme;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzmh;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzme;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzme;->mArray:[Ljava/lang/Object;

    shl-int/lit8 p1, p1, 0x1

    add-int/2addr p1, p2

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    return-object p0
.end method

.method protected colGetSize()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    iget p0, p0, Lcom/google/android/gms/internal/zzme;->mSize:I

    return p0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzme;->indexOfNull()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzme;->indexOf(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzme;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzme;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzme;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/zzme$1;->zzagA:Lcom/google/android/gms/internal/zzme;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzme;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
