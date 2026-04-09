.class public Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;
.super Ljava/lang/Object;
.source "TiffImageMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPSInfo"
.end annotation


# instance fields
.field public final latitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final latitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final latitudeRef:Ljava/lang/String;

.field public final latitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final longitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final longitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

.field public final longitudeRef:Ljava/lang/String;

.field public final longitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;Lorg/apache/commons/imaging/common/RationalNumber;)V
    .locals 0

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 513
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeRef:Ljava/lang/String;

    .line 514
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeRef:Ljava/lang/String;

    .line 515
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    .line 516
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    .line 517
    iput-object p5, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    .line 518
    iput-object p6, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    .line 519
    iput-object p7, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    .line 520
    iput-object p8, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    return-void
.end method


# virtual methods
.method public getLatitudeAsDegreesNorth()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 564
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeRef:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 566
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeRef:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    neg-double v0, v0

    return-wide v0

    .line 569
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown latitude ref: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeRef:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLongitudeAsDegreesEast()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 545
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->doubleValue()D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 549
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeRef:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "e"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-wide v0

    .line 551
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeRef:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "w"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    neg-double v0, v0

    return-wide v0

    .line 554
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown longitude ref: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeRef:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x58

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 531
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GPS. Latitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " degrees, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " minutes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->latitudeRef:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", Longitude: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeDegrees:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " degrees, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeMinutes:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " minutes, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeSeconds:Lorg/apache/commons/imaging/common/RationalNumber;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/common/RationalNumber;->toDisplayString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " seconds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffImageMetadata$GPSInfo;->longitudeRef:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    .line 539
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 541
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
