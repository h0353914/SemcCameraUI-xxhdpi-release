.class public final enum Lorg/apache/commons/imaging/icc/IccTagTypes;
.super Ljava/lang/Enum;
.source "IccTagTypes.java"

# interfaces
.implements Lorg/apache/commons/imaging/icc/IccTagType;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/imaging/icc/IccTagTypes;",
        ">;",
        "Lorg/apache/commons/imaging/icc/IccTagType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum A_TO_B0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum A_TO_B1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum A_TO_B2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum BLUE_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum BLUE_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum B_TO_A0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum B_TO_A1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum B_TO_A2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CALIBRATION_DATE_TIME_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CHAR_TARGET_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CHROMATICITY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum CHROMATIC_ADAPTATION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum COLORANT_ORDER_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum COLORANT_TABLE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum COPYRIGHT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum DEVICE_MFG_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum DEVICE_MODEL_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GAMUT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GRAY_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GREEN_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum GREEN_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum LUMINANCE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum MEASUREMENT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum MEDIA_BLACK_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum MEDIA_WHITE_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum NAMED_COLOR_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum OUTPUT_RESPONSE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PREVIEW_0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PREVIEW_1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PREVIEW_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PROFILE_DESCRIPTION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum PROFILE_SEQUENCE_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum RED_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum RED_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum TECHNOLOGY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum VIEWING_CONDITIONS_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

.field public static final enum VIEWING_COND_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;


# instance fields
.field public final name:Ljava/lang/String;

.field public final signature:I

.field public final typeDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 59

    .line 20
    new-instance v7, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object v6, v7

    const-string v4, "lut8Type or lut16Type or lutAtoBType"

    const v5, 0x41324230

    const-string v1, "A_TO_B0_TAG"

    const/4 v2, 0x0

    const-string v3, "AToB0Tag"

    move-object v0, v7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v7, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 33
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object v7, v0

    const-string v12, "lut8Type or lut16Type or lutAtoBType"

    const v13, 0x41324231

    const-string v9, "A_TO_B1_TAG"

    const/4 v10, 0x1

    const-string v11, "AToB1Tag"

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 39
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object v8, v0

    const-string v18, "lut8Type or lut16Type or lutAtoBType"

    const v19, 0x41324232

    const-string v15, "A_TO_B2_TAG"

    const/16 v16, 0x2

    const-string v17, "AToB2Tag"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 45
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object v9, v0

    const-string v24, "XYZType"

    const v25, 0x6258595a

    const-string v21, "BLUE_MATRIX_COLUMN_TAG"

    const/16 v22, 0x3

    const-string v23, "blueMatrixColumnTag"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 50
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object v10, v0

    const-string v15, "curveType or parametricCurveType"

    const v16, 0x62545243

    const-string v12, "BLUE_TRC_TAG"

    const/4 v13, 0x4

    const-string v14, "blueTRCTag"

    move-object v11, v0

    invoke-direct/range {v11 .. v16}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 56
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object v11, v0

    const-string v21, "lut8Type or lut16Type or lutBtoAType"

    const v22, 0x42324130

    const-string v18, "B_TO_A0_TAG"

    const/16 v19, 0x5

    const-string v20, "BToA0Tag"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 62
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object v12, v0

    const-string v27, "lut8Type or lut16Type or lutBtoAType"

    const v28, 0x42324131

    const-string v24, "B_TO_A1_TAG"

    const/16 v25, 0x6

    const-string v26, "BToA1Tag"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 68
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object v13, v0

    const-string v18, "lut8Type or lut16Type or lutBtoAType"

    const v19, 0x42324132

    const-string v15, "B_TO_A2_TAG"

    const/16 v16, 0x7

    const-string v17, "BToA2Tag"

    move-object v14, v0

    invoke-direct/range {v14 .. v19}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 74
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object v14, v0

    const-string v24, "dateTimeType"

    const v25, 0x63616c74

    const-string v21, "CALIBRATION_DATE_TIME_TAG"

    const/16 v22, 0x8

    const-string v23, "calibrationDateTimeTag"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->CALIBRATION_DATE_TIME_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 81
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object v15, v0

    const-string v30, "textType"

    const v31, 0x74617267

    const-string v27, "CHAR_TARGET_TAG"

    const/16 v28, 0x9

    const-string v29, "charTargetTag"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHAR_TARGET_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 101
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v16, v0

    const-string v21, "s15Fixed16ArrayType"

    const v22, 0x63686164

    const-string v18, "CHROMATIC_ADAPTATION_TAG"

    const/16 v19, 0xa

    const-string v20, "chromaticAdaptationTag"

    move-object/from16 v17, v0

    invoke-direct/range {v17 .. v22}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATIC_ADAPTATION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 131
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v17, v0

    const-string v27, "chromaticityType"

    const v28, 0x6368726d

    const-string v24, "CHROMATICITY_TAG"

    const/16 v25, 0xb

    const-string v26, "chromaticityTag"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATICITY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 136
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v18, v0

    const-string v33, "colorantOrderType"

    const v34, 0x636c726f

    const-string v30, "COLORANT_ORDER_TAG"

    const/16 v31, 0xc

    const-string v32, "colorantOrderTag"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_ORDER_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 141
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v19, v0

    const-string v24, "colorantTableType"

    const v25, 0x636c7274

    const-string v21, "COLORANT_TABLE_TAG"

    const/16 v22, 0xd

    const-string v23, "colorantTableTag"

    move-object/from16 v20, v0

    invoke-direct/range {v20 .. v25}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_TABLE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 148
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v20, v0

    const-string v30, "multiLocalizedUnicodeType"

    const v31, 0x63707274

    const-string v27, "COPYRIGHT_TAG"

    const/16 v28, 0xe

    const-string v29, "copyrightTag"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->COPYRIGHT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 153
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v21, v0

    const-string v36, "multiLocalizedUnicodeType"

    const v37, 0x646d6e64

    const-string v33, "DEVICE_MFG_DESC_TAG"

    const/16 v34, 0xf

    const-string v35, "deviceMfgDescTag"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MFG_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 159
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v22, v0

    const-string v27, "multiLocalizedUnicodeType"

    const v28, 0x646d6464

    const-string v24, "DEVICE_MODEL_DESC_TAG"

    const/16 v25, 0x10

    const-string v26, "deviceModelDescTag"

    move-object/from16 v23, v0

    invoke-direct/range {v23 .. v28}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MODEL_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 165
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v23, v0

    const-string v33, "lut8Type or lut16Type or lutBtoAType"

    const v34, 0x67616d74

    const-string v30, "GAMUT_TAG"

    const/16 v31, 0x11

    const-string v32, "gamutTag"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->GAMUT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 173
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v24, v0

    const-string v39, "curveType or parametricCurveType"

    const v40, 0x6b545243

    const-string v36, "GRAY_TRC_TAG"

    const/16 v37, 0x12

    const-string v38, "grayTRCTag"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->GRAY_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 180
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v25, v0

    const-string v30, "XYZType"

    const v31, 0x6758595a

    const-string v27, "GREEN_MATRIX_COLUMN_TAG"

    const/16 v28, 0x13

    const-string v29, "greenMatrixColumnTag"

    move-object/from16 v26, v0

    invoke-direct/range {v26 .. v31}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 185
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v26, v0

    const-string v36, "curveType or parametricCurveType"

    const v37, 0x67545243

    const-string v33, "GREEN_TRC_TAG"

    const/16 v34, 0x14

    const-string v35, "greenTRCTag"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 192
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v27, v0

    const-string v42, "XYZType"

    const v43, 0x6c756d69

    const-string v39, "LUMINANCE_TAG"

    const/16 v40, 0x15

    const-string v41, "luminanceTag"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v43}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->LUMINANCE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 199
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v28, v0

    const-string v33, "measurementType"

    const v34, 0x6d656173

    const-string v30, "MEASUREMENT_TAG"

    const/16 v31, 0x16

    const-string v32, "measurementTag"

    move-object/from16 v29, v0

    invoke-direct/range {v29 .. v34}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEASUREMENT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 205
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v29, v0

    const-string v39, "XYZType"

    const v40, 0x626b7074

    const-string v36, "MEDIA_BLACK_POINT_TAG"

    const/16 v37, 0x17

    const-string v38, "mediaBlackPointTag"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_BLACK_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 214
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v30, v0

    const-string v45, "XYZType"

    const v46, 0x77747074

    const-string v42, "MEDIA_WHITE_POINT_TAG"

    const/16 v43, 0x18

    const-string v44, "mediaWhitePointTag"

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v46}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_WHITE_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 226
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v31, v0

    const-string v36, "namedColor2Type"

    const v37, 0x6e636c32

    const-string v33, "NAMED_COLOR_2_TAG"

    const/16 v34, 0x19

    const-string v35, "namedColor2Tag"

    move-object/from16 v32, v0

    invoke-direct/range {v32 .. v37}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->NAMED_COLOR_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 232
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v32, v0

    const-string v42, "responseCurveSet16Type"

    const v43, 0x72657370

    const-string v39, "OUTPUT_RESPONSE_TAG"

    const/16 v40, 0x1a

    const-string v41, "outputResponseTag"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v43}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->OUTPUT_RESPONSE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 245
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v33, v0

    const-string v48, "lut8Type or lut16Type or lutBtoAType"

    const v49, 0x70726530    # 3.000708E29f

    const-string v45, "PREVIEW_0_TAG"

    const/16 v46, 0x1b

    const-string v47, "preview0Tag"

    move-object/from16 v44, v0

    invoke-direct/range {v44 .. v49}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 253
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v34, v0

    const-string v39, "lut8Type or lut16Type or lutBtoAType"

    const v40, 0x70726531    # 3.0007082E29f

    const-string v36, "PREVIEW_1_TAG"

    const/16 v37, 0x1c

    const-string v38, "preview1Tag"

    move-object/from16 v35, v0

    invoke-direct/range {v35 .. v40}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 261
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v35, v0

    const-string v45, "lut8Type or lut16Type or lutBtoAType"

    const v46, 0x70726532    # 3.0007084E29f

    const-string v42, "PREVIEW_2_TAG"

    const/16 v43, 0x1d

    const-string v44, "preview2Tag"

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v46}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 269
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v36, v0

    const-string v51, "multiLocalizedUnicodeType"

    const v52, 0x64657363

    const-string v48, "PROFILE_DESCRIPTION_TAG"

    const/16 v49, 0x1e

    const-string v50, "profileDescriptionTag"

    move-object/from16 v47, v0

    invoke-direct/range {v47 .. v52}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_DESCRIPTION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 277
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v37, v0

    const-string v42, "profileSequenceDescType"

    const v43, 0x70736571

    const-string v39, "PROFILE_SEQUENCE_DESC_TAG"

    const/16 v40, 0x1f

    const-string v41, "profileSequenceDescTag"

    move-object/from16 v38, v0

    invoke-direct/range {v38 .. v43}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_SEQUENCE_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 284
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v38, v0

    const-string v48, "XYZType"

    const v49, 0x7258595a

    const-string v45, "RED_MATRIX_COLUMN_TAG"

    const/16 v46, 0x20

    const-string v47, "redMatrixColumnTag"

    move-object/from16 v44, v0

    invoke-direct/range {v44 .. v49}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 290
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v39, v0

    const-string v54, "curveType or parametricCurveType"

    const v55, 0x72545243

    const-string v51, "RED_TRC_TAG"

    const/16 v52, 0x21

    const-string v53, "redTRCTag"

    move-object/from16 v50, v0

    invoke-direct/range {v50 .. v55}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 297
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v40, v0

    const-string v45, "signatureType"

    const v46, 0x74656368

    const-string v42, "TECHNOLOGY_TAG"

    const/16 v43, 0x22

    const-string v44, "technologyTag"

    move-object/from16 v41, v0

    invoke-direct/range {v41 .. v46}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->TECHNOLOGY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 303
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v41, v0

    const-string v51, "multiLocalizedUnicodeType"

    const v52, 0x76756564

    const-string v48, "VIEWING_COND_DESC_TAG"

    const/16 v49, 0x23

    const-string v50, "viewingCondDescTag"

    move-object/from16 v47, v0

    invoke-direct/range {v47 .. v52}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_COND_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 311
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-object/from16 v42, v0

    const-string v57, "viewingConditionsType"

    const v58, 0x76696577

    const-string v54, "VIEWING_CONDITIONS_TAG"

    const/16 v55, 0x24

    const-string v56, "viewingConditionsTag"

    move-object/from16 v53, v0

    invoke-direct/range {v53 .. v58}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_CONDITIONS_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 19
    filled-new-array/range {v6 .. v42}, [Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->$VALUES:[Lorg/apache/commons/imaging/icc/IccTagTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 321
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 322
    iput-object p3, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->name:Ljava/lang/String;

    .line 323
    iput-object p4, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->typeDescription:Ljava/lang/String;

    .line 324
    iput p5, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->signature:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/imaging/icc/IccTagTypes;
    .locals 1

    .line 19
    const-class v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/imaging/icc/IccTagTypes;
    .locals 1

    .line 19
    sget-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->$VALUES:[Lorg/apache/commons/imaging/icc/IccTagTypes;

    invoke-virtual {v0}, [Lorg/apache/commons/imaging/icc/IccTagTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/imaging/icc/IccTagTypes;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 328
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getSignature()I
    .locals 0

    .line 336
    iget p0, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->signature:I

    return p0
.end method

.method public getTypeDescription()Ljava/lang/String;
    .locals 0

    .line 332
    iget-object p0, p0, Lorg/apache/commons/imaging/icc/IccTagTypes;->typeDescription:Ljava/lang/String;

    return-object p0
.end method
