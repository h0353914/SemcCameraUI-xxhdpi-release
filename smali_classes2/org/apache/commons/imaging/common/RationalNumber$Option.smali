.class Lorg/apache/commons/imaging/common/RationalNumber$Option;
.super Ljava/lang/Object;
.source "RationalNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/RationalNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Option"
.end annotation


# instance fields
.field public final error:D

.field public final rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/common/RationalNumber;D)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    .line 130
    iput-wide p2, p0, Lorg/apache/commons/imaging/common/RationalNumber$Option;->error:D

    return-void
.end method

.method public static factory(Lorg/apache/commons/imaging/common/RationalNumber;D)Lorg/apache/commons/imaging/common/RationalNumber$Option;
    .locals 3

    .line 134
    new-instance v0, Lorg/apache/commons/imaging/common/RationalNumber$Option;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v1

    sub-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide p1

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/imaging/common/RationalNumber$Option;-><init>(Lorg/apache/commons/imaging/common/RationalNumber;D)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 0

    .line 139
    iget-object p0, p0, Lorg/apache/commons/imaging/common/RationalNumber$Option;->rationalNumber:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/common/RationalNumber;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
