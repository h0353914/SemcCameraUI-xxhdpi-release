.class public Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;
.super Ljava/lang/Object;
.source "IptcBlock.java"


# instance fields
.field final blockData:[B

.field final blockNameBytes:[B

.field public final blockType:I


# direct methods
.method public constructor <init>(I[B[B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockData:[B

    .line 30
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockNameBytes:[B

    .line 31
    iput p1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    return-void
.end method


# virtual methods
.method public isIPTCBlock()Z
    .locals 1

    .line 35
    iget p0, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcBlock;->blockType:I

    const/16 v0, 0x404

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
