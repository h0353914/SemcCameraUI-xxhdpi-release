.class Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;
.super Ljava/lang/Object;
.source "IcnsImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IcnsContents"
.end annotation


# instance fields
.field public final icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

.field public final icnsHeader:Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;)V
    .locals 0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsHeader:Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsHeader;

    .line 225
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsContents;->icnsElements:[Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;

    return-void
.end method
