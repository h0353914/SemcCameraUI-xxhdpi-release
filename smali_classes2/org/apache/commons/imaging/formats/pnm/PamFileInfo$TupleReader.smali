.class abstract Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;
.super Ljava/lang/Object;
.source "PamFileInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "TupleReader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;


# direct methods
.method private constructor <init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;->this$0:Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$1;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/formats/pnm/PamFileInfo$TupleReader;-><init>(Lorg/apache/commons/imaging/formats/pnm/PamFileInfo;)V

    return-void
.end method


# virtual methods
.method public abstract getColorType()Lorg/apache/commons/imaging/ImageInfo$ColorType;
.end method

.method public abstract getRGB(Ljava/io/InputStream;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
