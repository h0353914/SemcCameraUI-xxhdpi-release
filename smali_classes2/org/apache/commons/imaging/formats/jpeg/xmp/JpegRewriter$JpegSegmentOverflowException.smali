.class public Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter$JpegSegmentOverflowException;
.super Lorg/apache/commons/imaging/ImageWriteException;
.source "JpegRewriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/jpeg/xmp/JpegRewriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JpegSegmentOverflowException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xebd7feefcddda3eL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 346
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    return-void
.end method
