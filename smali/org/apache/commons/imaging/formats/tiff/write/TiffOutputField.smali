.class public Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
.super Ljava/lang/Object;
.source "TiffOutputField.java"


# static fields
.field private static final NEWLINE:Ljava/lang/String;


# instance fields
.field private bytes:[B

.field public final count:I

.field public final fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

.field private final separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

.field private sortHint:I

.field public final tag:I

.field public final tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "line.separator"

    .line 38
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->NEWLINE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 37
    iput v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->sortHint:I

    .line 47
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    .line 48
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    .line 49
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    .line 50
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->count:I

    .line 51
    iput-object p5, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    goto :goto_0

    .line 56
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Field Seperate value ("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    new-instance p2, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    invoke-direct {p2, p1, p5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;-><init>(Ljava/lang/String;[B)V

    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V
    .locals 6

    .line 42
    iget v1, p1, Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;->tag:I

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(ILorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    return-void
.end method

.method protected static createOffsetField(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Ljava/nio/ByteOrder;)Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 64
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    sget-object v2, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;->writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B

    move-result-object p1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;-><init>(Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;I[B)V

    return-object v0
.end method


# virtual methods
.method public bytesEqual([B)Z
    .locals 0

    .line 106
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method protected getSeperateValue()Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem;
    .locals 0

    .line 98
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    return-object p0
.end method

.method public getSortHint()I
    .locals 0

    .line 156
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->sortHint:I

    return p0
.end method

.method protected final isLocalValue()Z
    .locals 1

    .line 102
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length p0, p0

    const/4 v0, 0x4

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected setData([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 115
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Cannot change size of value."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    .line 120
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    if-eqz v0, :cond_1

    .line 121
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    invoke-virtual {p0, p1}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->updateValue([B)V

    :cond_1
    return-void
.end method

.method public setSortHint(I)V
    .locals 0

    .line 160
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->sortHint:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, ""

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget-object v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tagInfo:Lorg/apache/commons/imaging/formats/tiff/taginfos/TagInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "count: "

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    iget v1, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected writeField(Lorg/apache/commons/imaging/common/BinaryOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation

    .line 70
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->tag:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 71
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->fieldType:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    invoke-virtual {v0}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getType()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write2Bytes(I)V

    .line 72
    iget v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->count:I

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    .line 74
    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->isLocalValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    if-eqz v0, :cond_0

    .line 76
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Unexpected separate value item."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 78
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length v0, v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    .line 79
    new-instance p1, Lorg/apache/commons/imaging/ImageWriteException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local value has invalid length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 83
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    invoke-virtual {p1, v0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write([B)V

    .line 84
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->bytes:[B

    array-length p0, p0

    sub-int/2addr v1, p0

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    if-ge v0, v1, :cond_4

    .line 86
    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    if-nez v0, :cond_3

    .line 90
    new-instance p0, Lorg/apache/commons/imaging/ImageWriteException;

    const-string p1, "Missing separate value item."

    invoke-direct {p0, p1}, Lorg/apache/commons/imaging/ImageWriteException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 93
    :cond_3
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputField;->separateValueItem:Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;

    invoke-virtual {p0}, Lorg/apache/commons/imaging/formats/tiff/write/TiffOutputItem$Value;->getOffset()J

    move-result-wide v0

    long-to-int p0, v0

    invoke-virtual {p1, p0}, Lorg/apache/commons/imaging/common/BinaryOutputStream;->write4Bytes(I)V

    :cond_4
    return-void
.end method
