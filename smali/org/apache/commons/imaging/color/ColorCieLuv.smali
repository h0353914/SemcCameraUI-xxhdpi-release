.class public final Lorg/apache/commons/imaging/color/ColorCieLuv;
.super Ljava/lang/Object;
.source "ColorCieLuv.java"


# static fields
.field public static final BLACK:Lorg/apache/commons/imaging/color/ColorCieLuv;

.field public static final BLUE:Lorg/apache/commons/imaging/color/ColorCieLuv;

.field public static final GREEN:Lorg/apache/commons/imaging/color/ColorCieLuv;

.field public static final RED:Lorg/apache/commons/imaging/color/ColorCieLuv;

.field public static final WHITE:Lorg/apache/commons/imaging/color/ColorCieLuv;


# instance fields
.field public final L:D

.field public final u:D

.field public final v:D


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 29
    new-instance v7, Lorg/apache/commons/imaging/color/ColorCieLuv;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/color/ColorCieLuv;-><init>(DDD)V

    sput-object v7, Lorg/apache/commons/imaging/color/ColorCieLuv;->BLACK:Lorg/apache/commons/imaging/color/ColorCieLuv;

    .line 39
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCieLuv;

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-wide/16 v11, 0x0

    const-wide v13, -0x406e978d4fdf3b64L    # -0.017

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorCieLuv;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCieLuv;->WHITE:Lorg/apache/commons/imaging/color/ColorCieLuv;

    .line 49
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCieLuv;

    const-wide v2, 0x404a9dd2f1a9fbe7L    # 53.233

    const-wide v4, 0x4065e1b22d0e5604L    # 175.053

    const-wide v6, 0x4042e020c49ba5e3L    # 37.751

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorCieLuv;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCieLuv;->RED:Lorg/apache/commons/imaging/color/ColorCieLuv;

    .line 59
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCieLuv;

    const-wide v9, 0x4055ef2b020c49baL    # 87.737

    const-wide v11, -0x3fab3ae147ae147bL    # -83.08

    const-wide v13, 0x405ad9a9fbe76c8bL    # 107.401

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorCieLuv;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCieLuv;->GREEN:Lorg/apache/commons/imaging/color/ColorCieLuv;

    .line 69
    new-instance v0, Lorg/apache/commons/imaging/color/ColorCieLuv;

    const-wide v2, 0x404026c8b4395810L    # 32.303

    const-wide v4, -0x3fdd333333333333L    # -9.4

    const-wide v6, -0x3f9fb48b43958106L    # -130.358

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorCieLuv;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorCieLuv;->BLUE:Lorg/apache/commons/imaging/color/ColorCieLuv;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->L:D

    .line 77
    iput-wide p3, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->u:D

    .line 78
    iput-wide p5, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->v:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 91
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 95
    :cond_1
    check-cast p1, Lorg/apache/commons/imaging/color/ColorCieLuv;

    .line 96
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorCieLuv;->L:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->L:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 99
    :cond_2
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorCieLuv;->u:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->u:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 102
    :cond_3
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorCieLuv;->v:D

    iget-wide p0, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->v:D

    invoke-static {v2, v3, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 7

    .line 113
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->L:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    .line 115
    iget-wide v3, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->u:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    .line 117
    iget-wide v3, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->v:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    mul-int/2addr v1, v0

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int p0, v2

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{L: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->L:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", u: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->u:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", v: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorCieLuv;->v:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
