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
    .locals 13

    .line 20
    new-instance v6, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v1, "A_TO_B0_TAG"

    const-string v3, "AToB0Tag"

    const-string v4, "lut8Type or lut16Type or lutAtoBType"

    const/4 v2, 0x0

    const v5, 0x41324230

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v6, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 33
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "A_TO_B1_TAG"

    const-string v10, "AToB1Tag"

    const-string v11, "lut8Type or lut16Type or lutAtoBType"

    const/4 v9, 0x1

    const v12, 0x41324231

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 39
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "A_TO_B2_TAG"

    const-string v4, "AToB2Tag"

    const-string v5, "lut8Type or lut16Type or lutAtoBType"

    const/4 v3, 0x2

    const v6, 0x41324232

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 45
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "BLUE_MATRIX_COLUMN_TAG"

    const-string v10, "blueMatrixColumnTag"

    const-string v11, "XYZType"

    const/4 v9, 0x3

    const v12, 0x6258595a

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 50
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "BLUE_TRC_TAG"

    const-string v4, "blueTRCTag"

    const-string v5, "curveType or parametricCurveType"

    const/4 v3, 0x4

    const v6, 0x62545243

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 56
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "B_TO_A0_TAG"

    const-string v10, "BToA0Tag"

    const-string v11, "lut8Type or lut16Type or lutBtoAType"

    const/4 v9, 0x5

    const v12, 0x42324130

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 62
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "B_TO_A1_TAG"

    const-string v4, "BToA1Tag"

    const-string v5, "lut8Type or lut16Type or lutBtoAType"

    const/4 v3, 0x6

    const v6, 0x42324131

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 68
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "B_TO_A2_TAG"

    const-string v10, "BToA2Tag"

    const-string v11, "lut8Type or lut16Type or lutBtoAType"

    const/4 v9, 0x7

    const v12, 0x42324132

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 74
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "CALIBRATION_DATE_TIME_TAG"

    const-string v4, "calibrationDateTimeTag"

    const-string v5, "dateTimeType"

    const/16 v3, 0x8

    const v6, 0x63616c74

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->CALIBRATION_DATE_TIME_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 81
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "CHAR_TARGET_TAG"

    const-string v10, "charTargetTag"

    const-string v11, "textType"

    const/16 v9, 0x9

    const v12, 0x74617267

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHAR_TARGET_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 101
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "CHROMATIC_ADAPTATION_TAG"

    const-string v4, "chromaticAdaptationTag"

    const-string v5, "s15Fixed16ArrayType"

    const/16 v3, 0xa

    const v6, 0x63686164

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATIC_ADAPTATION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 131
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "CHROMATICITY_TAG"

    const-string v10, "chromaticityTag"

    const-string v11, "chromaticityType"

    const/16 v9, 0xb

    const v12, 0x6368726d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATICITY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 136
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "COLORANT_ORDER_TAG"

    const-string v4, "colorantOrderTag"

    const-string v5, "colorantOrderType"

    const/16 v3, 0xc

    const v6, 0x636c726f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_ORDER_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 141
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "COLORANT_TABLE_TAG"

    const-string v10, "colorantTableTag"

    const-string v11, "colorantTableType"

    const/16 v9, 0xd

    const v12, 0x636c7274

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_TABLE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 148
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "COPYRIGHT_TAG"

    const-string v4, "copyrightTag"

    const-string v5, "multiLocalizedUnicodeType"

    const/16 v3, 0xe

    const v6, 0x63707274

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->COPYRIGHT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 153
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "DEVICE_MFG_DESC_TAG"

    const-string v10, "deviceMfgDescTag"

    const-string v11, "multiLocalizedUnicodeType"

    const/16 v9, 0xf

    const v12, 0x646d6e64

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MFG_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 159
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "DEVICE_MODEL_DESC_TAG"

    const-string v4, "deviceModelDescTag"

    const-string v5, "multiLocalizedUnicodeType"

    const/16 v3, 0x10

    const v6, 0x646d6464

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MODEL_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 165
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "GAMUT_TAG"

    const-string v10, "gamutTag"

    const-string v11, "lut8Type or lut16Type or lutBtoAType"

    const/16 v9, 0x11

    const v12, 0x67616d74

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->GAMUT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 173
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "GRAY_TRC_TAG"

    const-string v4, "grayTRCTag"

    const-string v5, "curveType or parametricCurveType"

    const/16 v3, 0x12

    const v6, 0x6b545243

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->GRAY_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 180
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "GREEN_MATRIX_COLUMN_TAG"

    const-string v10, "greenMatrixColumnTag"

    const-string v11, "XYZType"

    const/16 v9, 0x13

    const v12, 0x6758595a

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 185
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "GREEN_TRC_TAG"

    const-string v4, "greenTRCTag"

    const-string v5, "curveType or parametricCurveType"

    const/16 v3, 0x14

    const v6, 0x67545243

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 192
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "LUMINANCE_TAG"

    const-string v10, "luminanceTag"

    const-string v11, "XYZType"

    const/16 v9, 0x15

    const v12, 0x6c756d69

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->LUMINANCE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 199
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "MEASUREMENT_TAG"

    const-string v4, "measurementTag"

    const-string v5, "measurementType"

    const/16 v3, 0x16

    const v6, 0x6d656173

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEASUREMENT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 205
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "MEDIA_BLACK_POINT_TAG"

    const-string v10, "mediaBlackPointTag"

    const-string v11, "XYZType"

    const/16 v9, 0x17

    const v12, 0x626b7074

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_BLACK_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 214
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "MEDIA_WHITE_POINT_TAG"

    const-string v4, "mediaWhitePointTag"

    const-string v5, "XYZType"

    const/16 v3, 0x18

    const v6, 0x77747074

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_WHITE_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 226
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "NAMED_COLOR_2_TAG"

    const-string v10, "namedColor2Tag"

    const-string v11, "namedColor2Type"

    const/16 v9, 0x19

    const v12, 0x6e636c32

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->NAMED_COLOR_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 232
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "OUTPUT_RESPONSE_TAG"

    const-string v4, "outputResponseTag"

    const-string v5, "responseCurveSet16Type"

    const/16 v3, 0x1a

    const v6, 0x72657370

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->OUTPUT_RESPONSE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 245
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "PREVIEW_0_TAG"

    const-string v10, "preview0Tag"

    const-string v11, "lut8Type or lut16Type or lutBtoAType"

    const/16 v9, 0x1b

    const v12, 0x70726530    # 3.000708E29f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 253
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "PREVIEW_1_TAG"

    const-string v4, "preview1Tag"

    const-string v5, "lut8Type or lut16Type or lutBtoAType"

    const/16 v3, 0x1c

    const v6, 0x70726531    # 3.0007082E29f

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 261
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "PREVIEW_2_TAG"

    const-string v10, "preview2Tag"

    const-string v11, "lut8Type or lut16Type or lutBtoAType"

    const/16 v9, 0x1d

    const v12, 0x70726532    # 3.0007084E29f

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 269
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "PROFILE_DESCRIPTION_TAG"

    const-string v4, "profileDescriptionTag"

    const-string v5, "multiLocalizedUnicodeType"

    const/16 v3, 0x1e

    const v6, 0x64657363

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_DESCRIPTION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 277
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "PROFILE_SEQUENCE_DESC_TAG"

    const-string v10, "profileSequenceDescTag"

    const-string v11, "profileSequenceDescType"

    const/16 v9, 0x1f

    const v12, 0x70736571

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_SEQUENCE_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 284
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "RED_MATRIX_COLUMN_TAG"

    const-string v4, "redMatrixColumnTag"

    const-string v5, "XYZType"

    const/16 v3, 0x20

    const v6, 0x7258595a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 290
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "RED_TRC_TAG"

    const-string v10, "redTRCTag"

    const-string v11, "curveType or parametricCurveType"

    const/16 v9, 0x21

    const v12, 0x72545243

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 297
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "TECHNOLOGY_TAG"

    const-string v4, "technologyTag"

    const-string v5, "signatureType"

    const/16 v3, 0x22

    const v6, 0x74656368

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->TECHNOLOGY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 303
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v8, "VIEWING_COND_DESC_TAG"

    const-string v10, "viewingCondDescTag"

    const-string v11, "multiLocalizedUnicodeType"

    const/16 v9, 0x23

    const v12, 0x76756564

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_COND_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    .line 311
    new-instance v0, Lorg/apache/commons/imaging/icc/IccTagTypes;

    const-string v2, "VIEWING_CONDITIONS_TAG"

    const-string v4, "viewingConditionsTag"

    const-string v5, "viewingConditionsType"

    const/16 v3, 0x24

    const v6, 0x76696577

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/imaging/icc/IccTagTypes;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_CONDITIONS_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v0, 0x25

    .line 19
    new-array v0, v0, [Lorg/apache/commons/imaging/icc/IccTagTypes;

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->A_TO_B2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->BLUE_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->B_TO_A2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->CALIBRATION_DATE_TIME_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHAR_TARGET_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATIC_ADAPTATION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->CHROMATICITY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_ORDER_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->COLORANT_TABLE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->COPYRIGHT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MFG_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->DEVICE_MODEL_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->GAMUT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->GRAY_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->GREEN_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->LUMINANCE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEASUREMENT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_BLACK_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->MEDIA_WHITE_POINT_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->NAMED_COLOR_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->OUTPUT_RESPONSE_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_0_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_1_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->PREVIEW_2_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_DESCRIPTION_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->PROFILE_SEQUENCE_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_MATRIX_COLUMN_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->RED_TRC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->TECHNOLOGY_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_COND_DESC_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/imaging/icc/IccTagTypes;->VIEWING_CONDITIONS_TAG:Lorg/apache/commons/imaging/icc/IccTagTypes;

    const/16 v2, 0x24

    aput-object v1, v0, v2

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
