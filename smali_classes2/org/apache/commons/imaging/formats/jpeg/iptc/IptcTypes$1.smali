.class final Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes$1;
.super Ljava/lang/Object;
.source "IptcTypes.java"

# interfaces
.implements Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes;->getUnknown(I)Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$type:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 157
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 159
    const-string p0, "Unknown"

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 163
    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes$1;->val$type:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcTypes$1;->val$type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
