.class public Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter$ExifOverflowException;
.super Lorg/apache/commons/imaging/ImageWriteException;
.source "ExifRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/exif/ExifRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExifOverflowException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13731298f6a89f92L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 571
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    return-void
.end method
