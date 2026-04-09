.class final Lcom/google/android/gms/internal/zzmh$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic zzagL:Lcom/google/android/gms/internal/zzmh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmh;I)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh$zza;->zzagL:Lcom/google/android/gms/internal/zzmh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zza;->mCanRemove:Z

    iput p2, p0, Lcom/google/android/gms/internal/zzmh$zza;->mOffset:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmh;->colGetSize()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/zzmh$zza;->mSize:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zza;->mIndex:I

    iget p0, p0, Lcom/google/android/gms/internal/zzmh$zza;->mSize:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zza;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget v1, p0, Lcom/google/android/gms/internal/zzmh$zza;->mIndex:I

    iget v2, p0, Lcom/google/android/gms/internal/zzmh$zza;->mOffset:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzmh;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/zzmh$zza;->mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/zzmh$zza;->mIndex:I

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzmh$zza;->mCanRemove:Z

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zza;->mCanRemove:Z

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zza;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh$zza;->mIndex:I

    iget v0, p0, Lcom/google/android/gms/internal/zzmh$zza;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzmh$zza;->mSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzmh$zza;->mCanRemove:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmh$zza;->zzagL:Lcom/google/android/gms/internal/zzmh;

    iget p0, p0, Lcom/google/android/gms/internal/zzmh$zza;->mIndex:I

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzmh;->colRemoveAt(I)V

    return-void
.end method
