.class public final Lorg/apache/commons/imaging/color/ColorHunterLab;
.super Ljava/lang/Object;
.source "ColorHunterLab.java"


# static fields
.field public static final BLACK:Lorg/apache/commons/imaging/color/ColorHunterLab;

.field public static final BLUE:Lorg/apache/commons/imaging/color/ColorHunterLab;

.field public static final GREEN:Lorg/apache/commons/imaging/color/ColorHunterLab;

.field public static final RED:Lorg/apache/commons/imaging/color/ColorHunterLab;

.field public static final WHITE:Lorg/apache/commons/imaging/color/ColorHunterLab;


# instance fields
.field public final L:D

.field public final a:D

.field public final b:D


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 29
    new-instance v7, Lorg/apache/commons/imaging/color/ColorHunterLab;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    sput-object v7, Lorg/apache/commons/imaging/color/ColorHunterLab;->BLACK:Lorg/apache/commons/imaging/color/ColorHunterLab;

    .line 39
    new-instance v0, Lorg/apache/commons/imaging/color/ColorHunterLab;

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    const-wide v11, -0x3feaa7ef9db22d0eL    # -5.336

    const-wide v13, 0x4015bb645a1cac08L    # 5.433

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorHunterLab;->WHITE:Lorg/apache/commons/imaging/color/ColorHunterLab;

    .line 49
    new-instance v0, Lorg/apache/commons/imaging/color/ColorHunterLab;

    const-wide v2, 0x40470df3b645a1cbL    # 46.109

    const-wide v4, 0x4053bd916872b021L    # 78.962

    const-wide v6, 0x403dcb4395810625L    # 29.794

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorHunterLab;->RED:Lorg/apache/commons/imaging/color/ColorHunterLab;

    .line 59
    new-instance v0, Lorg/apache/commons/imaging/color/ColorHunterLab;

    const-wide v9, 0x4055246a7ef9db23L    # 84.569

    const-wide v11, -0x3fadded916872b02L    # -72.518

    const-wide v13, 0x40496bc6a7ef9db2L    # 50.842

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorHunterLab;->GREEN:Lorg/apache/commons/imaging/color/ColorHunterLab;

    .line 69
    new-instance v0, Lorg/apache/commons/imaging/color/ColorHunterLab;

    const-wide v2, 0x403adeb851eb851fL    # 26.87

    const-wide v4, 0x405238a3d70a3d71L    # 72.885

    const-wide v6, -0x3f982276c8b43958L    # -190.923

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/imaging/color/ColorHunterLab;-><init>(DDD)V

    sput-object v0, Lorg/apache/commons/imaging/color/ColorHunterLab;->BLUE:Lorg/apache/commons/imaging/color/ColorHunterLab;

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-wide p1, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    .line 77
    iput-wide p3, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    .line 78
    iput-wide p5, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

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
    check-cast p1, Lorg/apache/commons/imaging/color/ColorHunterLab;

    .line 96
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 99
    :cond_2
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    iget-wide v4, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_3

    return v1

    .line 102
    :cond_3
    iget-wide v2, p1, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

    iget-wide p0, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

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
    iget-wide v0, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    .line 115
    iget-wide v3, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    .line 117
    iget-wide v3, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

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

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->L:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", b: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/imaging/color/ColorHunterLab;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
