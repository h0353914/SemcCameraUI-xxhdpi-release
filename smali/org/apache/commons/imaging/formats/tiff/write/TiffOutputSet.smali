.class public final Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;
.super Ljava/lang/Object;
.source "TiffOutputSet.java"


# static fields
.field private static final NEWLINE:Ljava/lang/String;


# instance fields
.field public final byteOrder:Ljava/nio/ByteOrder;

.field private final directories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 35
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffConstants;->DEFAULT_TIFF_BYTE_ORDER:Ljava/nio/ByteOrder;

    invoke-direct {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;-><init>(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    return-void
.end method


# virtual methods
.method public addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 59
    iget v0, p1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 60
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Output set already contains a directory of that type."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_0
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 226
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;-><init>(ILjava/nio/ByteOrder;)V

    .line 228
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    return-object v0
.end method

.method public addGPSDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 233
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    const/4 v2, -0x3

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;-><init>(ILjava/nio/ByteOrder;)V

    .line 235
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    return-object v0
.end method

.method public addInteroperabilityDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 241
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOrCreateExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 243
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    const/4 v2, -0x4

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;-><init>(ILjava/nio/ByteOrder;)V

    .line 245
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    return-object v0
.end method

.method public addRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 219
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;-><init>(ILjava/nio/ByteOrder;)V

    .line 221
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addDirectory(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;)V

    return-object v0
.end method

.method public dump()V
    .locals 0

    .line 291
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 2

    .line 120
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 121
    iget v1, v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 1

    .line 209
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 210
    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public findField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 0

    .line 205
    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findField(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    move-result-object p0

    return-object p0
.end method

.method public getDirectories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    const/4 v0, -0x2

    .line 75
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    return-object p0
.end method

.method public getGPSDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    const/4 v0, -0x3

    .line 112
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    return-object p0
.end method

.method public getInteroperabilityDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    const/4 v0, -0x4

    .line 116
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 90
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOrCreateRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    const/4 v0, -0x2

    .line 92
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateGPSDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOrCreateExifDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    const/4 v0, -0x3

    .line 104
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 108
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addGPSDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    return-object p0
.end method

.method public getOrCreateRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 84
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->addRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    return-object p0
.end method

.method protected getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 51
    invoke-virtual {v1, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getOutputItems(Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSummary;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRootDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->findDirectory(I)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object p0

    return-object p0
.end method

.method public removeField(I)V
    .locals 1

    .line 199
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    .line 200
    invoke-virtual {v0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V
    .locals 0

    .line 195
    iget p1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->removeField(I)V

    return-void
.end method

.method public setGPSInDegrees(DD)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->getOrCreateGPSDirectory()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    move-result-object v0

    .line 141
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_VERSION_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    invoke-virtual {v0, v1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 142
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_VERSION_ID:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_VERSION:[B

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoByte;[B)V

    const-wide/16 v1, 0x0

    cmpg-double v5, p1, v1

    if-gez v5, :cond_0

    const-string v5, "W"

    goto :goto_0

    :cond_0
    const-string v5, "E"

    .line 145
    :goto_0
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v1, p3, v1

    if-gez v1, :cond_1

    const-string v1, "S"

    goto :goto_1

    :cond_1
    const-string v1, "N"

    .line 147
    :goto_1
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    .line 149
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 150
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    invoke-virtual {v0, v2, v9}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V

    .line 153
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 154
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE_REF:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;

    new-array v5, v8, [Ljava/lang/String;

    aput-object v1, v5, v10

    invoke-virtual {v0, v2, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoAscii;[Ljava/lang/String;)V

    double-to-long v1, v3

    long-to-double v1, v1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v3, v11

    const-wide/high16 v13, 0x404e000000000000L    # 60.0

    mul-double/2addr v3, v13

    double-to-long v8, v3

    long-to-double v8, v8

    rem-double/2addr v3, v11

    mul-double/2addr v3, v13

    .line 167
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v0, v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 168
    sget-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LONGITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    const/4 v15, 0x3

    new-array v13, v15, [Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-static {v1, v2}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v1

    aput-object v1, v13, v10

    invoke-static {v8, v9}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v13, v2

    invoke-static {v3, v4}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v13, v3

    invoke-virtual {v0, v5, v13}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    double-to-long v4, v6

    long-to-double v4, v4

    rem-double/2addr v6, v11

    const-wide/high16 v8, 0x404e000000000000L    # 60.0

    mul-double/2addr v6, v8

    double-to-long v13, v6

    long-to-double v13, v13

    rem-double/2addr v6, v11

    mul-double/2addr v6, v8

    .line 185
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    invoke-virtual {v0, v2}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->removeField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;)V

    .line 186
    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/constants/GpsTagConstants;->GPS_TAG_GPS_LATITUDE:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;

    new-array v8, v15, [Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-static {v4, v5}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v4

    aput-object v4, v8, v10

    invoke-static {v13, v14}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v4

    const/4 v1, 0x1

    aput-object v4, v8, v1

    invoke-static {v6, v7}, Lorg/apache/commons/imaging/common/RationalNumber;->valueOf(D)Lorg/apache/commons/imaging/common/RationalNumber;

    move-result-object v1

    aput-object v1, v8, v3

    invoke-virtual {v0, v2, v8}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->add(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfoRational;[Lorg/apache/commons/imaging/common/RationalNumber;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 251
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    if-nez p1, :cond_0

    const-string p1, ""

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 261
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "TiffOutputSet {"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "byteOrder: "

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->byteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 268
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    move v2, v1

    .line 270
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 271
    iget-object v3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->directories:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;

    const-string v4, "%s\tdirectory %d: %s (%d)%n"

    const/4 v5, 0x4

    .line 272
    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->description()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget v7, v3, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v3}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputDirectory;->getFields()Ljava/util/List;

    move-result-object v3

    .line 276
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    .line 277
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\t\tfield "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    sget-object v4, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 284
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputSet;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
