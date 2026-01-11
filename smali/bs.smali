.class public final Lbs;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/net/Uri;

.field public b:Landroid/graphics/Bitmap;

.field public c:Ljava/lang/Long;

.field public d:Lbe;

.field public e:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lbr;
    .locals 1

    new-instance v0, Lbr;

    .line 3
    invoke-direct {v0}, Lbr;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Lz;)Landroid/os/Bundle;
    .locals 10

    new-instance v0, Landroid/os/Bundle;

    .line 4
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lbs;->a:Landroid/net/Uri;

    if-nez v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    const-string/jumbo v2, "uri"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    :goto_0
    iget-object v3, p0, Lbs;->b:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget p0, p1, Lz;->a:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_1

    iget p0, p1, Lz;->d:I

    goto :goto_1

    :cond_1
    const/high16 p0, 0x2000000

    .line 6
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    if-le p1, p0, :cond_2

    .line 7
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Input bitmap is %d bytes, which is larger than our maximum of %d bytes. Downsampling..."

    .line 8
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 9
    const-string v1, "LensMetadata"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float p0, p0

    .line 10
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    new-instance v8, Landroid/graphics/Matrix;

    .line 11
    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 12
    invoke-virtual {v8, p0, p0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 13
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v9, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    :cond_2
    const-string p0, "bitmap"

    .line 14
    invoke-virtual {v0, p0, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    const-string p0, "lens_transition_type"

    const/4 p1, 0x0

    .line 15
    invoke-virtual {v0, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final b()Lbr;
    .locals 1

    new-instance v0, Lbr;

    .line 2
    invoke-direct {v0, p0}, Lbr;-><init>(Lbs;)V

    return-object v0
.end method

.method public final c()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    .line 16
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, p0, Lbs;->c:Ljava/lang/Long;

    if-eqz v1, :cond_0

    const-string v2, "activity_launch_timestamp_nanos"

    .line 17
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 18
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v1, p0, Lbs;->d:Lbe;

    if-eqz v1, :cond_1

    const-string v2, "lens_initial_parameters"

    .line 19
    invoke-virtual {v1}, Lbu;->m()[B

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    :cond_1
    iget-object p0, p0, Lbs;->e:Ljava/lang/Integer;

    if-eqz p0, :cond_2

    const-string v1, "lens_intent_type"

    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method
