.class public interface abstract Lorg/apache/commons/imaging/formats/psd/datareaders/DataReader;
.super Ljava/lang/Object;
.source "DataReader.java"


# virtual methods
.method public abstract readData(Ljava/io/InputStream;Ljava/awt/image/BufferedImage;Lorg/apache/commons/imaging/formats/psd/ImageContents;Lorg/apache/commons/imaging/common/BinaryFileParser;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
