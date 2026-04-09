.class public Lorg/apache/commons/imaging/formats/png/PngText$Itxt;
.super Lorg/apache/commons/imaging/formats/png/PngText;
.source "PngText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/png/PngText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Itxt"
.end annotation


# instance fields
.field public final languageTag:Ljava/lang/String;

.field public final translatedKeyword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/imaging/formats/png/PngText;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->languageTag:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lorg/apache/commons/imaging/formats/png/PngText$Itxt;->translatedKeyword:Ljava/lang/String;

    return-void
.end method
