.class public abstract Lorg/apache/commons/imaging/formats/tiff/TiffElement;
.super Ljava/lang/Object;
.source "TiffElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/tiff/TiffElement$Stub;,
        Lorg/apache/commons/imaging/formats/tiff/TiffElement$DataElement;
    }
.end annotation


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/formats/tiff/TiffElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final length:I

.field public final offset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(JI)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->offset:J

    .line 38
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->length:I

    return-void
.end method


# virtual methods
.method public getElementDescription()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/TiffElement;->getElementDescription(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract getElementDescription(Z)Ljava/lang/String;
.end method
