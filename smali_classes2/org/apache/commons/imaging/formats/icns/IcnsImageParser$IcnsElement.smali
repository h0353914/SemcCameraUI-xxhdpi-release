.class Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;
.super Ljava/lang/Object;
.source "IcnsImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/icns/IcnsImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IcnsElement"
.end annotation


# instance fields
.field public final data:[B

.field public final elementSize:I

.field public final type:I


# direct methods
.method public constructor <init>(II[B)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput p1, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->type:I

    .line 179
    iput p2, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->elementSize:I

    .line 180
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->data:[B

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    .line 184
    const-string v0, "IcnsElement"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 185
    iget v0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->type:I

    invoke-static {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->findAnyType(I)Lorg/apache/commons/imaging/formats/icns/IcnsType;

    move-result-object v0

    .line 187
    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 190
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Type: 0x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->type:I

    invoke-static {v3}, Lorg/apache/commons/imaging/formats/icns/IcnsType;->describeType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ElementSize: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/commons/imaging/formats/icns/IcnsImageParser$IcnsElement;->elementSize:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
