.class public final enum Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
.super Ljava/lang/Enum;
.source "TiffDirectoryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_GPS:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_SUB_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final enum TIFF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

.field public static final TIFF_DIRECTORY_ROOT:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;


# instance fields
.field public final directoryType:I

.field private final isImageDirectory:Z

.field public final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    .line 20
    new-instance v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v4, 0x0

    const-string v5, "IFD0"

    const-string v1, "TIFF_DIRECTORY_IFD0"

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v8

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 23
    new-instance v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v13, 0x1

    const-string v14, "IFD1"

    const-string v10, "TIFF_DIRECTORY_IFD1"

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object v9, v15

    invoke-direct/range {v9 .. v14}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 26
    new-instance v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v4, 0x2

    const-string v5, "IFD2"

    const-string v1, "TIFF_DIRECTORY_IFD2"

    const/4 v2, 0x2

    move-object v0, v9

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 29
    new-instance v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v20, 0x3

    const-string v21, "IFD3"

    const-string v17, "TIFF_DIRECTORY_IFD3"

    const/16 v18, 0x3

    const/16 v19, 0x1

    move-object/from16 v16, v10

    invoke-direct/range {v16 .. v21}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 32
    new-instance v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v4, -0x4

    const-string v5, "Interop IFD"

    const-string v1, "EXIF_DIRECTORY_INTEROP_IFD"

    const/4 v2, 0x4

    const/4 v3, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v6, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_INTEROP_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 34
    new-instance v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v20, -0x5

    const-string v21, "Maker Notes"

    const-string v17, "EXIF_DIRECTORY_MAKER_NOTES"

    const/16 v18, 0x5

    const/16 v19, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v21}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v5, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_MAKER_NOTES:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 36
    new-instance v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v26, -0x2

    const-string v27, "Exif IFD"

    const-string v23, "EXIF_DIRECTORY_EXIF_IFD"

    const/16 v24, 0x6

    const/16 v25, 0x0

    move-object/from16 v22, v7

    invoke-direct/range {v22 .. v27}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v7, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_EXIF_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 38
    new-instance v11, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/16 v20, -0x3

    const-string v21, "GPS IFD"

    const-string v17, "EXIF_DIRECTORY_GPS"

    const/16 v18, 0x7

    move-object/from16 v16, v11

    invoke-direct/range {v16 .. v21}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;-><init>(Ljava/lang/String;IZILjava/lang/String;)V

    sput-object v11, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_GPS:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-object v0, v8

    move-object v1, v15

    move-object v2, v9

    move-object v3, v10

    move-object v4, v6

    move-object v6, v7

    move-object v7, v11

    .line 19
    filled-new-array/range {v0 .. v7}, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->$VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 65
    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD0:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 66
    sput-object v8, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->TIFF_DIRECTORY_ROOT:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 67
    sput-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 68
    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 69
    sput-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_IFD3:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 70
    sput-object v15, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_SUB_IFD:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 71
    sput-object v9, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_SUB_IFD1:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    .line 72
    sput-object v10, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_SUB_IFD2:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-boolean p3, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory:Z

    .line 47
    iput p4, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->directoryType:I

    .line 48
    iput-object p5, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->name:Ljava/lang/String;

    return-void
.end method

.method public static getExifDirectoryType(I)Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
    .locals 5

    .line 57
    invoke-static {}, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->values()[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 58
    iget v4, v3, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->directoryType:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    sget-object p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->EXIF_DIRECTORY_UNKNOWN:Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
    .locals 1

    .line 19
    const-class v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;
    .locals 1

    .line 19
    sget-object v0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->$VALUES:[Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;

    return-object v0
.end method


# virtual methods
.method public isImageDirectory()Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lorg/apache/commons/imaging/formats/tiff/constants/TiffDirectoryType;->isImageDirectory:Z

    return p0
.end method
