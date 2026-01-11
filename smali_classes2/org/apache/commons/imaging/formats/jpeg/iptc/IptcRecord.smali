.class public Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;
.super Ljava/lang/Object;
.source "IptcRecord.java"


# static fields
.field public static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final bytes:[B

.field public final iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

.field public final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord$1;

    invoke-direct {v0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord$1;-><init>()V

    sput-object v0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    .line 45
    :try_start_0
    const-string p1, "ISO-8859-1"

    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 49
    :goto_0
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->bytes:[B

    .line 50
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;[BLjava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    .line 37
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->bytes:[B

    .line 38
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIptcTypeName()Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->iptcType:Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;

    invoke-interface {p0}, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcType;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRawBytes()[B
    .locals 0

    .line 54
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->bytes:[B

    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    .line 58
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/jpeg/iptc/IptcRecord;->value:Ljava/lang/String;

    return-object p0
.end method
