.class public Lorg/apache/commons/imaging/common/GenericImageMetadata$GenericImageMetadataItem;
.super Ljava/lang/Object;
.source "GenericImageMetadata.java"

# interfaces
.implements Lorg/apache/commons/imaging/common/ImageMetadata$ImageMetadataItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/common/GenericImageMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericImageMetadataItem"
.end annotation


# instance fields
.field private final keyword:Ljava/lang/String;

.field private final text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/apache/commons/imaging/common/GenericImageMetadata$GenericImageMetadataItem;->keyword:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lorg/apache/commons/imaging/common/GenericImageMetadata$GenericImageMetadataItem;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKeyword()Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lorg/apache/commons/imaging/common/GenericImageMetadata$GenericImageMetadataItem;->keyword:Ljava/lang/String;

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 0

    .line 80
    iget-object p0, p0, Lorg/apache/commons/imaging/common/GenericImageMetadata$GenericImageMetadataItem;->text:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/common/GenericImageMetadata$GenericImageMetadataItem;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/imaging/common/GenericImageMetadata$GenericImageMetadataItem;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/common/GenericImageMetadata$GenericImageMetadataItem;->text:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p0
.end method
