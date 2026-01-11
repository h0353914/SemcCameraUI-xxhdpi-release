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
    .locals 91

    .line 26
    new-instance v1, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v0, v1

    const/16 v2, 0x3e8

    const-string v3, "Number of channels, rows, columns, depth, and mode."

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v2, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v1, v2

    const/16 v3, 0x3e9

    const-string v4, "Optional. Macintosh print manager print info record"

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v3, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v2, v3

    const/16 v4, 0x3eb

    const-string v5, "Indexed color table."

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v4, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v3, v4

    const/16 v5, 0x3ed

    const-string v6, "ResolutionInfo structure"

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v5, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v4, v5

    const/16 v6, 0x3ee

    const-string v7, "Names of the alpha channels as a series of Pascal strings."

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v6, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v5, v6

    const/16 v7, 0x3ef

    const-string v8, "DisplayInfo structure"

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v7, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v6, v7

    const/16 v8, 0x3f0

    const-string v9, "Optional. The caption as a Pascal string."

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v8, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v7, v8

    const/16 v9, 0x3f1

    const-string v10, "Border information"

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v9, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v8, v9

    const/16 v10, 0x3f2

    const-string v11, "Background color"

    invoke-direct {v9, v10, v11}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v10, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v9, v10

    const/16 v11, 0x3f3

    const-string v12, "Print flags (labels, crop marks, color bars, registration marks, negative, flip, interpolate, caption)"

    invoke-direct {v10, v11, v12}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v11, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v10, v11

    const/16 v12, 0x3f4

    const-string v13, "Grayscale and multichannel halftoning information."

    invoke-direct {v11, v12, v13}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v12, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v11, v12

    const/16 v13, 0x3f5

    const-string v14, "Color halftoning information"

    invoke-direct {v12, v13, v14}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v13, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v12, v13

    const/16 v14, 0x3f6

    const-string v15, "Duotone halftoning information"

    invoke-direct {v13, v14, v15}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v14, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v13, v14

    const/16 v15, 0x3f7

    move-object/from16 v87, v0

    const-string v0, "Grayscale and multichannel transfer function"

    invoke-direct {v14, v15, v0}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v14, v0

    const/16 v15, 0x3f8

    move-object/from16 v88, v1

    const-string v1, "Color transfer functions"

    invoke-direct {v0, v15, v1}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object v15, v0

    const/16 v1, 0x3f9

    move-object/from16 v89, v2

    const-string v2, "Duotone transfer functions"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v16, v0

    const/16 v1, 0x3fa

    const-string v2, "Duotone image information"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v17, v0

    const/16 v1, 0x3fb

    const-string v2, "Effective black and white values for the dot range."

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v18, v0

    const/16 v1, 0x3fc

    const-string v2, "Obsolete"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v19, v0

    const/16 v1, 0x3fd

    move-object/from16 v90, v3

    const-string v3, "EPS options"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v20, v0

    const/16 v1, 0x3fe

    const-string v3, "Quick Mask information"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v21, v0

    const/16 v1, 0x3ff

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v22, v0

    const/16 v1, 0x400

    const-string v3, "Layer state information"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v23, v0

    const/16 v1, 0x401

    const-string v3, "Working path (not saved)"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v24, v0

    const/16 v1, 0x402

    const-string v3, "Layers group information"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v25, v0

    const/16 v1, 0x403

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v26, v0

    const/16 v1, 0x404

    const-string v2, "IPTC-NAA record"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v27, v0

    const/16 v1, 0x405

    const-string v2, "Image mode for raw format files"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v28, v0

    const/16 v1, 0x406

    const-string v2, "JPEG quality"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v29, v0

    const/16 v1, 0x408

    const-string v2, "Grid and guides information"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v30, v0

    const/16 v1, 0x409

    const-string v2, "Thumbnail resource"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v31, v0

    const/16 v1, 0x40a

    const-string v3, "Copyright flag"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v32, v0

    const/16 v1, 0x40b

    const-string v3, "URL"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v33, v0

    const/16 v1, 0x40c

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v34, v0

    const/16 v1, 0x40d

    const-string v2, "Global lighting angle for effects layer"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v35, v0

    const/16 v1, 0x40e

    const-string v2, "Color samplers resource"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v36, v0

    const/16 v1, 0x40f

    const-string v3, "ICC Profile"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v37, v0

    const/16 v1, 0x410

    const-string v3, "Watermark"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v38, v0

    const/16 v1, 0x411

    const-string v3, "ICC Untagged. Disables any assumed profile handling when opening the file"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v39, v0

    const/16 v1, 0x412

    const-string v3, "Effects visible. global flag to show/hide all the effects layer. Only present when they are hidden."

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v40, v0

    const/16 v1, 0x413

    const-string v3, "Spot Halftone"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v41, v0

    const/16 v1, 0x414

    const-string v3, "Document specific IDs"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v42, v0

    const/16 v1, 0x415

    const-string v3, "Unicode Alpha Names"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v43, v0

    const/16 v1, 0x416

    const-string v3, "Indexed Color Table Count. Number of colors in table that are actually defined"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v44, v0

    const/16 v1, 0x417

    const-string v3, "Transparency Index. Index of transparent color, if any"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v45, v0

    const/16 v1, 0x419

    const-string v3, "Global Altitude"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v46, v0

    const/16 v1, 0x41a

    const-string v3, "Slices"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v47, v0

    const/16 v1, 0x41b

    const-string v3, "Workflow URL"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v48, v0

    const/16 v1, 0x41c

    const-string v3, "Jump To XPEP"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v49, v0

    const/16 v1, 0x41d

    const-string v3, "Alpha Identifiers"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v50, v0

    const/16 v1, 0x41e

    const-string v3, "URL List"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v51, v0

    const/16 v1, 0x421

    const-string v3, "Version Info"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v52, v0

    const/16 v1, 0x422

    const-string v3, "EXIF data 1"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v53, v0

    const/16 v1, 0x423

    const-string v3, "EXIF data 3"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v54, v0

    const/16 v1, 0x424

    const-string v3, "XMP metadata"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v55, v0

    const/16 v1, 0x425

    const-string v3, "Caption digest"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v56, v0

    const/16 v1, 0x426

    const-string v3, "Print scale"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v57, v0

    const/16 v1, 0x428

    const-string v3, "Pixel Aspect Ratio"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v58, v0

    const/16 v1, 0x429

    const-string v3, "Layer Comps"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v59, v0

    const/16 v1, 0x42a

    const-string v3, "Alternate Duotone Colors"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v60, v0

    const/16 v1, 0x42b

    const-string v3, "Alternate Spot Colors"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v61, v0

    const/16 v1, 0x42d

    const-string v3, "Layer Selection ID(s)"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v62, v0

    const/16 v1, 0x42e

    const-string v3, "HDR Toning information"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v63, v0

    const/16 v1, 0x42f

    const-string v3, "Print info"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v64, v0

    const/16 v1, 0x430

    const-string v3, "Layer Group(s) Enabled ID"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v65, v0

    const/16 v1, 0x431

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v66, v0

    const/16 v1, 0x432

    const-string v2, "Measurement Scale"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v67, v0

    const/16 v1, 0x433

    const-string v2, "Timeline Information"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v68, v0

    const/16 v1, 0x434

    const-string v2, "Sheet Disclosure"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v69, v0

    const/16 v1, 0x435

    const-string v2, "DisplayInfo structure to support floating point colors"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v70, v0

    const/16 v1, 0x436

    const-string v2, "Onion Skins"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v71, v0

    const/16 v1, 0x438

    const-string v2, "Count Information. Information about the count in the document."

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v72, v0

    const/16 v1, 0x43a

    const-string v2, "Print Information. Information about the current print settings in the document. The color management options."

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v73, v0

    const/16 v1, 0x43b

    const-string v2, "Print Style. Information about the current print style in the document. The printing marks, labels, ornaments, etc."

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v74, v0

    const/16 v1, 0x43c

    const-string v2, "Macintosh NSPrintInfo. Variable OS specific info for Macintosh. NSPrintInfo."

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v75, v0

    const/16 v1, 0x43d

    const-string v2, "Windows DEVMODE. Variable OS specific info for Windows. DEVMODE."

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v76, v0

    const/16 v1, 0x43e

    const-string v2, "Auto Save File Path"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v77, v0

    const/16 v1, 0x43f

    const-string v2, "Auto Save Format"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v78, v0

    const/16 v1, 0x440

    const-string v2, "Path Selection State. Information about the current path selection state"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v79, v0

    const/16 v1, 0xbb6

    const-string v2, "Path Information (saved paths)."

    const/16 v3, 0x7d0

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v80, v0

    const/16 v1, 0xbb7

    const-string v2, "Name of clipping path"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v81, v0

    const/16 v1, 0xbb8

    const-string v2, "Origin Path Info"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v82, v0

    const/16 v1, 0x1387

    const-string v2, "Plug-In resource(s). Resources added by a plug-in"

    const/16 v3, 0xfa0

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(IILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v83, v0

    const/16 v1, 0x1b58

    const-string v2, "Image Ready variables. XML representation of variables definition"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v84, v0

    const/16 v1, 0x1b59

    const-string v2, "Image Ready data sets"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v85, v0

    const/16 v1, 0x1f40

    const-string v2, "Lightroom workflow, if present the document is in the middle of a Lightroom workflow"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    new-instance v0, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-object/from16 v86, v0

    const/16 v1, 0x2710

    const-string v2, "Print flags information (center crop marks, bleed width value, bleed width scale)"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/imaging/formats/psd/ImageResourceType;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, v87

    move-object/from16 v1, v88

    move-object/from16 v2, v89

    move-object/from16 v3, v90

    filled-new-array/range {v0 .. v86}, [Lorg/apache/commons/imaging/formats/psd/ImageResourceType;

    move-result-object v0

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

    .line 122
    :cond_1
    const-string p0, "Unknown"

    return-object p0
.end method
