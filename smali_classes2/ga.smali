.class public final Lga;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:I

.field static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 1
    invoke-static {v1, v0}, Lga;->a(II)I

    move-result v0

    sput v0, Lga;->a:I

    const/4 v0, 0x4

    .line 2
    invoke-static {v1, v0}, Lga;->a(II)I

    move-result v0

    sput v0, Lga;->b:I

    return-void
.end method

.method public static a(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x7

    return p0
.end method

.method static a(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    or-int/2addr p0, p1

    return p0
.end method

.method public static b(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x3

    return p0
.end method
