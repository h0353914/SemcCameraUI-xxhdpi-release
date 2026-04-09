.class public abstract Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
.super Ljava/lang/Object;
.source "FieldType.java"


# static fields
.field public static final ANY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

.field public static final ASCII_OR_BYTE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ASCII_OR_RATIONAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

.field public static final BYTE_OR_SHORT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

.field public static final FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

.field public static final IFD:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

.field public static final LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

.field public static final LONG_OR_IFD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final LONG_OR_SHORT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

.field public static final SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

.field public static final SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

.field public static final SHORT_OR_LONG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT_OR_LONG_OR_RATIONAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHORT_OR_RATIONAL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

.field public static final SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

.field public static final SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

.field public static final UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;


# instance fields
.field private final elementSize:I

.field private final name:Ljava/lang/String;

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 32
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const-string v1, "Byte"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    .line 33
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    const-string v1, "ASCII"

    const/4 v3, 0x2

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    .line 34
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    const-string v1, "Short"

    const/4 v4, 0x3

    invoke-direct {v0, v4, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    .line 35
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const-string v1, "Long"

    const/4 v5, 0x4

    invoke-direct {v0, v5, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    .line 36
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    const-string v1, "Rational"

    const/4 v6, 0x5

    invoke-direct {v0, v6, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    .line 37
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const-string v1, "SByte"

    const/4 v7, 0x6

    invoke-direct {v0, v7, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    .line 38
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const-string v1, "Undefined"

    const/4 v8, 0x7

    invoke-direct {v0, v8, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    .line 39
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    const-string v1, "SShort"

    const/16 v9, 0x8

    invoke-direct {v0, v9, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    .line 40
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const-string v1, "SLong"

    const/16 v10, 0x9

    invoke-direct {v0, v10, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    .line 41
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    const-string v1, "SRational"

    const/16 v11, 0xa

    invoke-direct {v0, v11, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    .line 42
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    const-string v1, "Float"

    const/16 v12, 0xb

    invoke-direct {v0, v12, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    .line 43
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    const-string v1, "Double"

    const/16 v13, 0xc

    invoke-direct {v0, v13, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    .line 44
    new-instance v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    const-string v1, "IFD"

    const/16 v14, 0xd

    invoke-direct {v0, v14, v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->IFD:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    .line 50
    new-array v0, v14, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    const/4 v14, 0x0

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SBYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v1, v0, v6

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->UNDEFINED:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v1, v0, v7

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SSHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v8

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SLONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v9

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SRATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v10

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->FLOAT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeFloat;

    aput-object v1, v0, v11

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->DOUBLE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeDouble;

    aput-object v1, v0, v12

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->IFD:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v13

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ANY:Ljava/util/List;

    .line 58
    new-array v0, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_LONG:Ljava/util/List;

    .line 62
    new-array v0, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_RATIONAL:Ljava/util/List;

    .line 66
    new-array v0, v4, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT_OR_LONG_OR_RATIONAL:Ljava/util/List;

    .line 70
    new-array v0, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG_OR_SHORT:Ljava/util/List;

    .line 74
    new-array v0, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->SHORT:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeShort;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE_OR_SHORT:Ljava/util/List;

    .line 78
    new-array v0, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->IFD:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeLong;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->LONG_OR_IFD:Ljava/util/List;

    .line 82
    new-array v0, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->RATIONAL:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeRational;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII_OR_RATIONAL:Ljava/util/List;

    .line 86
    new-array v0, v3, [Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeAscii;

    aput-object v1, v0, v14

    sget-object v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->BYTE:Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldTypeByte;

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ASCII_OR_BYTE:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput p1, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->type:I

    .line 92
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    .line 93
    iput p3, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->elementSize:I

    return-void
.end method

.method public static getFieldType(I)Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageReadException;
        }
    .end annotation

    .line 110
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->ANY:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;

    .line 111
    invoke-virtual {v1}, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->getType()I

    move-result v2

    if-ne v2, p0, :cond_0

    return-object v1

    .line 115
    :cond_1
    new-instance v0, Lorg/apache/commons/imaging/ImageReadException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is unsupported"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/imaging/ImageReadException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSize()I
    .locals 0

    .line 106
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->elementSize:I

    return p0
.end method

.method public getType()I
    .locals 0

    .line 98
    iget p0, p0, Lorg/apache/commons/imaging/formats/tiff/fieldtypes/FieldType;->type:I

    return p0
.end method

.method public abstract getValue(Lorg/apache/commons/imaging/formats/tiff/TiffField;)Ljava/lang/Object;
.end method

.method public abstract writeData(Ljava/lang/Object;Ljava/nio/ByteOrder;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/imaging/ImageWriteException;
        }
    .end annotation
.end method
