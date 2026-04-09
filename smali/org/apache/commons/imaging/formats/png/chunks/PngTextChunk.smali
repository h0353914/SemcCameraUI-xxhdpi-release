.class public abstract Lorg/apache/commons/imaging/formats/png/chunks/PngTextChunk;
.super Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;
.source "PngTextChunk.java"


# direct methods
.method public constructor <init>(III[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/imaging/formats/png/chunks/PngChunk;-><init>(III[B)V

    return-void
.end method


# virtual methods
.method public abstract getContents()Lorg/apache/commons/imaging/formats/png/PngText;
.end method

.method public abstract getKeyword()Ljava/lang/String;
.end method

.method public abstract getText()Ljava/lang/String;
.end method
