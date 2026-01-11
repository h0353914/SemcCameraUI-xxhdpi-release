.class public final Lbq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lai;


# instance fields
.field private final a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbq;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    iput p2, p0, Lbq;->b:I

    return-void
.end method


# virtual methods
.method public final a(Lbi;)V
    .locals 2

    iget v0, p0, Lbq;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 3
    iget p1, p1, Lbi;->e:I

    .line 4
    invoke-static {p1}, Lbh;->a(I)I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    sget p1, Lbh;->a:I

    :goto_0
    add-int/lit8 v0, p1, -0x2

    if-eqz p1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    throw v1

    .line 3
    :cond_2
    iget p1, p1, Lbi;->d:I

    .line 2
    invoke-static {p1}, Lbh;->a(I)I

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    sget p1, Lbh;->a:I

    :goto_1
    add-int/lit8 v0, p1, -0x2

    if-eqz p1, :cond_4

    :goto_2
    iget-object p0, p0, Lbq;->a:Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;

    .line 3
    invoke-interface {p0, v0}, Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;->onAvailabilityStatusFetched(I)V

    return-void

    .line 2
    :cond_4
    throw v1
.end method
