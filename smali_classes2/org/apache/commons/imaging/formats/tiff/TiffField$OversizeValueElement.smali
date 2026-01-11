.class public final Lorg/apache/commons/imaging/formats/tiff/TiffField$OversizeValueElement;
.super Lorg/apache/commons/imaging/formats/tiff/TiffElement;
.source "TiffField.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/imaging/formats/tiff/TiffField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OversizeValueElement"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/imaging/formats/tiff/TiffField;


# direct methods
.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/TiffField;II)V
    .locals 0

    .line 148
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField$OversizeValueElement;->this$0:Lorg/apache/commons/imaging/formats/tiff/TiffField;

    int-to-long p1, p2

    .line 149
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/imaging/formats/tiff/TiffElement;-><init>(JI)V

    return-void
.end method


# virtual methods
.method public getElementDescription(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "OversizeValueElement, tag: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField$OversizeValueElement;->this$0:Lorg/apache/commons/imaging/formats/tiff/TiffField;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getTagInfo()Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    move-result-object v0

    iget-object v0, v0, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", fieldType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/TiffField$OversizeValueElement;->this$0:Lorg/apache/commons/imaging/formats/tiff/TiffField;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/TiffField;->getFieldType()Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
