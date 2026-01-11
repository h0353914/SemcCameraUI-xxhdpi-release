.class public final Lorg/apache/commons/imaging/formats/tiff/TiffDirectory$ImageDataElement;
.super Lorg/apache/commons/imaging/formats/tiff/TiffElement;
.source "TiffDirectory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffDirectory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ImageDataElement"
.end annotation


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 616
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffElement;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public getElementDescription(Z)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 624
    :cond_0
    const-string p0, "ImageDataElement"

    return-object p0
.end method
