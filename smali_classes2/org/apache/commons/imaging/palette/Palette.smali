.class public interface abstract Lorg/apache/commons/imaging/palette/Palette;
.super Ljava/lang/Object;
.source "Palette.java"


# virtual methods
.method public abstract getEntry(I)I
.end method

.method public abstract getPaletteIndex(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation
.end method

.method public abstract length()I
.end method
