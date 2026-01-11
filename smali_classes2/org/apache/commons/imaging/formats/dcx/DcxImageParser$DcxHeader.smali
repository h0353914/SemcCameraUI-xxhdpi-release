.class Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;
.super Ljava/lang/Object;
.source "DcxImageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/dcx/DcxImageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DcxHeader"
.end annotation


# static fields
.field public static final DCX_ID:I = 0x3ade68b1


# instance fields
.field public final id:I

.field public final pageTable:[J


# direct methods
.method public constructor <init>(I[J)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p1, p0, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;->id:I

    .line 116
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;->pageTable:[J

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 120
    const-string v0, "DcxHeader"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Id: 0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Pages: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/dcx/DcxImageParser$DcxHeader;->pageTable:[J

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method
