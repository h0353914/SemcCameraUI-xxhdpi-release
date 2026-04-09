.class public Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;
.super Lorg/apache/commons/imaging/common/GenericImageMetadata;
.source "JpegPhotoshopMetadata.java"


# instance fields
.field public final photoshopApp13Data:Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;)V
    .locals 3

    .line 32
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/GenericImageMetadata;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;->photoshopApp13Data:Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;

    .line 35
    invoke-virtual {p1}, Lorg/apache/commons/imaging/formats/jpeg/iptc/PhotoshopApp13Data;->getRecords()Ljava/util/List;

    move-result-object p1

    .line 36
    sget-object v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;

    .line 38
    iget-object v1, v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    sget-object v2, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->RECORD_VERSION:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;

    if-eq v1, v2, :cond_0

    .line 39
    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->getIptcTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public dump()V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/jpeg/JpegPhotoshopMetadata;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    return-void
.end method
