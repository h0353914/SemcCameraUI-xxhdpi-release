.class Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;
.super Ljava/lang/Object;
.source "ImageResourceBlock.java"


# instance fields
.field final data:[B

.field final id:I

.field final nameData:[B


# direct methods
.method constructor <init>(I[B[B)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->id:I

    .line 30
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->nameData:[B

    .line 31
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->data:[B

    return-void
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getName: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->nameData:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    .line 36
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceBlock;->nameData:[B

    const-string v1, "ISO-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
