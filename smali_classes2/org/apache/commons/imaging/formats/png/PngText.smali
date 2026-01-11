.class public abstract Lorg/apache/commons/imaging/formats/png/PngText;
.super Ljava/lang/Object;
.source "PngText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/imaging/formats/png/PngText$Itxt;,
        Lorg/apache/commons/imaging/formats/png/PngText$Ztxt;,
        Lorg/apache/commons/imaging/formats/png/PngText$Text;
    }
.end annotation


# instance fields
.field public final keyword:Ljava/lang/String;

.field public final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/png/PngText;->keyword:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/png/PngText;->text:Ljava/lang/String;

    return-void
.end method
