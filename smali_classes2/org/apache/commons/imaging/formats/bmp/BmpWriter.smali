.class interface abstract Lorg/apache/commons/imaging/formats/bmp/BmpWriter;
.super Ljava/lang/Object;
.source "BmpWriter.java"


# virtual methods
.method public abstract getBitsPerPixel()I
.end method

.method public abstract getImageData(Ljava/awt/image/BufferedImage;)[B
.end method

.method public abstract getPaletteSize()I
.end method

.method public abstract writePalette(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
