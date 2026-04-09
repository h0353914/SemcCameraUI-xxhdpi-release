.class Lorg/apache/commons/imaging/formats/psd/ImageResourceType;
.super Ljava/lang/Object;
.source "ImageResourceType.java"


# static fields
.field private static final TYPES:[Lorg/apache/commons/imaging/formats/psd/ImageResourceType;


# instance fields
.field public final description:Ljava/lang/String;

.field public final from:I

.field public final to:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x57

    .line 26
    new-array v0, v0, [Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Number of channels, rows, columns, depth, and mode."

    const/16 v3, 0x3e8

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Optional. Macintosh print manager print info record"

    const/16 v3, 0x3e9

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Indexed color table."

    const/16 v3, 0x3eb

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "ResolutionInfo structure"

    const/16 v3, 0x3ed

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Names of the alpha channels as a series of Pascal strings."

    const/16 v3, 0x3ee

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "DisplayInfo structure"

    const/16 v3, 0x3ef

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Optional. The caption as a Pascal string."

    const/16 v3, 0x3f0

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Border information"

    const/16 v3, 0x3f1

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Background color"

    const/16 v3, 0x3f2

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Print flags (labels, crop marks, color bars, registration marks, negative, flip, interpolate, caption)"

    const/16 v3, 0x3f3

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Grayscale and multichannel halftoning information."

    const/16 v3, 0x3f4

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Color halftoning information"

    const/16 v3, 0x3f5

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Duotone halftoning information"

    const/16 v3, 0x3f6

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Grayscale and multichannel transfer function"

    const/16 v3, 0x3f7

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Color transfer functions"

    const/16 v3, 0x3f8

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Duotone transfer functions"

    const/16 v3, 0x3f9

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Duotone image information"

    const/16 v3, 0x3fa

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Effective black and white values for the dot range."

    const/16 v3, 0x3fb

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Obsolete"

    const/16 v3, 0x3fc

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "EPS options"

    const/16 v3, 0x3fd

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Quick Mask information"

    const/16 v3, 0x3fe

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Obsolete"

    const/16 v3, 0x3ff

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Layer state information"

    const/16 v3, 0x400

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Working path (not saved)"

    const/16 v3, 0x401

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Layers group information"

    const/16 v3, 0x402

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Obsolete"

    const/16 v3, 0x403

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "IPTC-NAA record"

    const/16 v3, 0x404

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Image mode for raw format files"

    const/16 v3, 0x405

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "JPEG quality"

    const/16 v3, 0x406

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Grid and guides information"

    const/16 v3, 0x408

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Thumbnail resource"

    const/16 v3, 0x409

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Copyright flag"

    const/16 v3, 0x40a

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "URL"

    const/16 v3, 0x40b

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Thumbnail resource"

    const/16 v3, 0x40c

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Global lighting angle for effects layer"

    const/16 v3, 0x40d

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Color samplers resource"

    const/16 v3, 0x40e

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "ICC Profile"

    const/16 v3, 0x40f

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Watermark"

    const/16 v3, 0x410

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "ICC Untagged. Disables any assumed profile handling when opening the file"

    const/16 v3, 0x411

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Effects visible. global flag to show/hide all the effects layer. Only present when they are hidden."

    const/16 v3, 0x412

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Spot Halftone"

    const/16 v3, 0x413

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Document specific IDs"

    const/16 v3, 0x414

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Unicode Alpha Names"

    const/16 v3, 0x415

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Indexed Color Table Count. Number of colors in table that are actually defined"

    const/16 v3, 0x416

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Transparency Index. Index of transparent color, if any"

    const/16 v3, 0x417

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Global Altitude"

    const/16 v3, 0x419

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Slices"

    const/16 v3, 0x41a

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Workflow URL"

    const/16 v3, 0x41b

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Jump To XPEP"

    const/16 v3, 0x41c

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Alpha Identifiers"

    const/16 v3, 0x41d

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "URL List"

    const/16 v3, 0x41e

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Version Info"

    const/16 v3, 0x421

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "EXIF data 1"

    const/16 v3, 0x422

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "EXIF data 3"

    const/16 v3, 0x423

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "XMP metadata"

    const/16 v3, 0x424

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Caption digest"

    const/16 v3, 0x425

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Print scale"

    const/16 v3, 0x426

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Pixel Aspect Ratio"

    const/16 v3, 0x428

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Layer Comps"

    const/16 v3, 0x429

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Alternate Duotone Colors"

    const/16 v3, 0x42a

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Alternate Spot Colors"

    const/16 v3, 0x42b

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Layer Selection ID(s)"

    const/16 v3, 0x42d

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "HDR Toning information"

    const/16 v3, 0x42e

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Print info"

    const/16 v3, 0x42f

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Layer Group(s) Enabled ID"

    const/16 v3, 0x430

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x40

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Color samplers resource"

    const/16 v3, 0x431

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x41

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Measurement Scale"

    const/16 v3, 0x432

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x42

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Timeline Information"

    const/16 v3, 0x433

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x43

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Sheet Disclosure"

    const/16 v3, 0x434

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x44

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "DisplayInfo structure to support floating point colors"

    const/16 v3, 0x435

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x45

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Onion Skins"

    const/16 v3, 0x436

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x46

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Count Information. Information about the count in the document."

    const/16 v3, 0x438

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x47

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Print Information. Information about the current print settings in the document. The color management options."

    const/16 v3, 0x43a

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x48

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Print Style. Information about the current print style in the document. The printing marks, labels, ornaments, etc."

    const/16 v3, 0x43b

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x49

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Macintosh NSPrintInfo. Variable OS specific info for Macintosh. NSPrintInfo."

    const/16 v3, 0x43c

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Windows DEVMODE. Variable OS specific info for Windows. DEVMODE."

    const/16 v3, 0x43d

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Auto Save File Path"

    const/16 v3, 0x43e

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Auto Save Format"

    const/16 v3, 0x43f

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Path Selection State. Information about the current path selection state"

    const/16 v3, 0x440

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Path Information (saved paths)."

    const/16 v3, 0x7d0

    const/16 v4, 0xbb6

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Name of clipping path"

    const/16 v3, 0xbb7

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x50

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Origin Path Info"

    const/16 v3, 0xbb8

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x51

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Plug-In resource(s). Resources added by a plug-in"

    const/16 v3, 0xfa0

    const/16 v4, 0x1387

    invoke-direct {v1, v3, v4, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    const/16 v2, 0x52

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Image Ready variables. XML representation of variables definition"

    const/16 v3, 0x1b58

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x53

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Image Ready data sets"

    const/16 v3, 0x1b59

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x54

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Lightroom workflow, if present the document is in the middle of a Lightroom workflow"

    const/16 v3, 0x1f40

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x55

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    const-string v2, "Print flags information (center crop marks, bleed width value, bleed width scale)"

    const/16 v3, 0x2710

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    const/16 v2, 0x56

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->TYPES:[Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->from:I

    .line 138
    iput p2, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->to:I

    .line 139
    iput-object p3, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->description:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->from:I

    .line 132
    iput p1, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->to:I

    .line 133
    iput-object p2, p0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->description:Ljava/lang/String;

    return-void
.end method

.method public static getDescription(I)Ljava/lang/String;
    .locals 5

    .line 117
    sget-object v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->TYPES:[Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 118
    iget v4, v3, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->from:I

    if-gt v4, p0, :cond_0

    iget v4, v3, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->to:I

    if-gt p0, v4, :cond_0

    .line 119
    iget-object p0, v3, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;->description:Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "Unknown"

    return-object p0
.end method
