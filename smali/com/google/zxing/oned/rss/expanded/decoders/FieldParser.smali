.class final Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;
.super Ljava/lang/Object;
.source "FieldParser.java"


# static fields
.field private static final FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

.field private static final VARIABLE_LENGTH:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 85

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    const/16 v1, 0x12

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "00"

    filled-new-array {v3, v2}, [Ljava/lang/Object;

    move-result-object v3

    const/16 v4, 0xe

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "01"

    filled-new-array {v6, v5}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "02"

    .line 46
    filled-new-array {v7, v5}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v8, 0x14

    .line 48
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "10"

    filled-new-array {v10, v0, v9}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x6

    .line 49
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const-string v13, "11"

    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "12"

    .line 50
    filled-new-array {v14, v12}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "13"

    .line 51
    filled-new-array {v15, v12}, [Ljava/lang/Object;

    move-result-object v15

    const-string v8, "15"

    .line 52
    filled-new-array {v8, v12}, [Ljava/lang/Object;

    move-result-object v8

    const-string v1, "17"

    .line 53
    filled-new-array {v1, v12}, [Ljava/lang/Object;

    move-result-object v1

    const/16 v18, 0x2

    .line 55
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v11, "20"

    filled-new-array {v11, v4}, [Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v20, v4

    const-string v4, "21"

    .line 56
    filled-new-array {v4, v0, v9}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v21, 0x1d

    move-object/from16 v22, v5

    .line 57
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v21, v2

    const-string v2, "22"

    filled-new-array {v2, v0, v5}, [Ljava/lang/Object;

    move-result-object v2

    const/16 v5, 0x8

    move-object/from16 v23, v9

    .line 59
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v5, "30"

    filled-new-array {v5, v0, v9}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v24, v12

    const-string v12, "37"

    .line 60
    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v9

    const/16 v12, 0x1e

    move-object/from16 v25, v9

    .line 63
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v12, "90"

    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v26, v12

    const-string v12, "91"

    .line 64
    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v27, v12

    const-string v12, "92"

    .line 65
    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v28, v12

    const-string v12, "93"

    .line 66
    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v29, v12

    const-string v12, "94"

    .line 67
    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v30, v12

    const-string v12, "95"

    .line 68
    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v31, v12

    const-string v12, "96"

    .line 69
    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v32, v12

    const-string v12, "97"

    .line 70
    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v33, v12

    const-string v12, "98"

    .line 71
    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v34, v12

    const-string v12, "99"

    .line 72
    filled-new-array {v12, v0, v9}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v35, v0

    const/16 v0, 0x18

    new-array v0, v0, [[Ljava/lang/Object;

    const/16 v36, 0x0

    aput-object v3, v0, v36

    const/4 v3, 0x1

    aput-object v6, v0, v3

    aput-object v7, v0, v18

    const/4 v6, 0x3

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 72
    aput-object v10, v0, v6

    const/4 v10, 0x4

    aput-object v13, v0, v10

    const/4 v13, 0x5

    aput-object v14, v0, v13

    const/4 v14, 0x6

    aput-object v15, v0, v14

    const/4 v14, 0x7

    aput-object v8, v0, v14

    const/16 v8, 0x8

    aput-object v1, v0, v8

    const/16 v1, 0x9

    aput-object v11, v0, v1

    const/16 v8, 0xa

    .line 171
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 72
    aput-object v4, v0, v8

    const/16 v4, 0xb

    aput-object v2, v0, v4

    const/16 v2, 0xc

    aput-object v5, v0, v2

    const/16 v5, 0xd

    .line 90
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 72
    aput-object v25, v0, v5

    const/16 v19, 0xe

    aput-object v26, v0, v19

    const/16 v25, 0xf

    .line 96
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 72
    aput-object v27, v0, v25

    const/16 v27, 0x10

    aput-object v28, v0, v27

    const/16 v28, 0x11

    .line 83
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 72
    aput-object v29, v0, v28

    const/16 v17, 0x12

    aput-object v30, v0, v17

    const/16 v29, 0x13

    aput-object v31, v0, v29

    const/16 v16, 0x14

    aput-object v32, v0, v16

    const/16 v30, 0x15

    aput-object v33, v0, v30

    const/16 v30, 0x16

    aput-object v34, v0, v30

    const/16 v30, 0x17

    aput-object v12, v0, v30

    sput-object v0, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 75
    const-string v0, "240"

    move-object/from16 v12, v35

    .line 78
    filled-new-array {v0, v12, v9}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "241"

    .line 79
    filled-new-array {v4, v12, v9}, [Ljava/lang/Object;

    move-result-object v4

    const-string v8, "242"

    move-object/from16 v1, v24

    .line 80
    filled-new-array {v8, v12, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v14, "250"

    .line 81
    filled-new-array {v14, v12, v9}, [Ljava/lang/Object;

    move-result-object v14

    const-string v13, "251"

    .line 82
    filled-new-array {v13, v12, v9}, [Ljava/lang/Object;

    move-result-object v13

    const-string v10, "253"

    .line 83
    filled-new-array {v10, v12, v2}, [Ljava/lang/Object;

    move-result-object v10

    const-string v6, "254"

    move-object/from16 v3, v23

    .line 84
    filled-new-array {v6, v12, v3}, [Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v23, v11

    const-string v11, "400"

    .line 86
    filled-new-array {v11, v12, v9}, [Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v37, v1

    const-string v1, "401"

    .line 87
    filled-new-array {v1, v12, v9}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v38, v1

    const-string v1, "402"

    .line 88
    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "403"

    .line 89
    filled-new-array {v2, v12, v9}, [Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v39, v9

    const-string v9, "410"

    .line 90
    filled-new-array {v9, v15}, [Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v40, v9

    const-string v9, "411"

    .line 91
    filled-new-array {v9, v15}, [Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v41, v9

    const-string v9, "412"

    .line 92
    filled-new-array {v9, v15}, [Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v42, v9

    const-string v9, "413"

    .line 93
    filled-new-array {v9, v15}, [Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v43, v9

    const-string v9, "414"

    .line 94
    filled-new-array {v9, v15}, [Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v44, v15

    const-string v15, "420"

    .line 95
    filled-new-array {v15, v12, v3}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v45, v3

    const-string v3, "421"

    .line 96
    filled-new-array {v3, v12, v5}, [Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v46, v3

    const-string v3, "422"

    .line 97
    filled-new-array {v3, v7}, [Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v47, v3

    const-string v3, "423"

    .line 98
    filled-new-array {v3, v12, v5}, [Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v48, v5

    const-string v5, "424"

    .line 99
    filled-new-array {v5, v7}, [Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v49, v12

    const-string v12, "425"

    .line 100
    filled-new-array {v12, v7}, [Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v50, v12

    const-string v12, "426"

    .line 101
    filled-new-array {v12, v7}, [Ljava/lang/Object;

    move-result-object v7

    const/16 v12, 0x17

    new-array v12, v12, [[Ljava/lang/Object;

    aput-object v0, v12, v36

    const/4 v0, 0x1

    aput-object v4, v12, v0

    aput-object v8, v12, v18

    const/4 v0, 0x3

    aput-object v14, v12, v0

    const/4 v0, 0x4

    aput-object v13, v12, v0

    const/4 v0, 0x5

    aput-object v10, v12, v0

    const/4 v0, 0x6

    aput-object v6, v12, v0

    const/4 v0, 0x7

    aput-object v11, v12, v0

    const/16 v0, 0x8

    aput-object v38, v12, v0

    const/16 v0, 0x9

    aput-object v1, v12, v0

    const/16 v0, 0xa

    aput-object v2, v12, v0

    const/16 v0, 0xb

    aput-object v40, v12, v0

    const/16 v0, 0xc

    aput-object v41, v12, v0

    const/16 v0, 0xd

    aput-object v42, v12, v0

    const/16 v0, 0xe

    aput-object v43, v12, v0

    aput-object v9, v12, v25

    aput-object v15, v12, v27

    aput-object v46, v12, v28

    const/16 v0, 0x12

    aput-object v47, v12, v0

    aput-object v3, v12, v29

    const/16 v0, 0x14

    aput-object v5, v12, v0

    const/16 v0, 0x15

    aput-object v50, v12, v0

    const/16 v0, 0x16

    aput-object v7, v12, v0

    sput-object v12, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 104
    const-string v0, "310"

    move-object/from16 v1, v37

    .line 107
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "311"

    .line 108
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "312"

    .line 109
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "313"

    .line 110
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "314"

    .line 111
    filled-new-array {v5, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "315"

    .line 112
    filled-new-array {v6, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "316"

    .line 113
    filled-new-array {v7, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "320"

    .line 114
    filled-new-array {v8, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "321"

    .line 115
    filled-new-array {v9, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v10, "322"

    .line 116
    filled-new-array {v10, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v11, "323"

    .line 117
    filled-new-array {v11, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "324"

    .line 118
    filled-new-array {v12, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "325"

    .line 119
    filled-new-array {v13, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "326"

    .line 120
    filled-new-array {v14, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v15, "327"

    .line 121
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v37, v15

    const-string v15, "328"

    .line 122
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v38, v15

    const-string v15, "329"

    .line 123
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v40, v15

    const-string v15, "330"

    .line 124
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v41, v15

    const-string v15, "331"

    .line 125
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v42, v15

    const-string v15, "332"

    .line 126
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v43, v15

    const-string v15, "333"

    .line 127
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v46, v15

    const-string v15, "334"

    .line 128
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v47, v15

    const-string v15, "335"

    .line 129
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v50, v15

    const-string v15, "336"

    .line 130
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v51, v15

    const-string v15, "340"

    .line 131
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v52, v15

    const-string v15, "341"

    .line 132
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v53, v15

    const-string v15, "342"

    .line 133
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v54, v15

    const-string v15, "343"

    .line 134
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v55, v15

    const-string v15, "344"

    .line 135
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v56, v15

    const-string v15, "345"

    .line 136
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v57, v15

    const-string v15, "346"

    .line 137
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v58, v15

    const-string v15, "347"

    .line 138
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v59, v15

    const-string v15, "348"

    .line 139
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v60, v15

    const-string v15, "349"

    .line 140
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v61, v15

    const-string v15, "350"

    .line 141
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v62, v15

    const-string v15, "351"

    .line 142
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v63, v15

    const-string v15, "352"

    .line 143
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v64, v15

    const-string v15, "353"

    .line 144
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v65, v15

    const-string v15, "354"

    .line 145
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v66, v15

    const-string v15, "355"

    .line 146
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v67, v15

    const-string v15, "356"

    .line 147
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v68, v15

    const-string v15, "357"

    .line 148
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v69, v15

    const-string v15, "360"

    .line 149
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v70, v15

    const-string v15, "361"

    .line 150
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v71, v15

    const-string v15, "362"

    .line 151
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v72, v15

    const-string v15, "363"

    .line 152
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v73, v15

    const-string v15, "364"

    .line 153
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v74, v15

    const-string v15, "365"

    .line 154
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v75, v15

    const-string v15, "366"

    .line 155
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v76, v15

    const-string v15, "367"

    .line 156
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v77, v15

    const-string v15, "368"

    .line 157
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v78, v15

    const-string v15, "369"

    .line 158
    filled-new-array {v15, v1}, [Ljava/lang/Object;

    move-result-object v15

    move-object/from16 v79, v1

    const-string v1, "390"

    move-object/from16 v80, v15

    move-object/from16 v15, v49

    move-object/from16 v84, v48

    move-object/from16 v48, v14

    move-object/from16 v14, v84

    .line 159
    filled-new-array {v1, v15, v14}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v49, v1

    const-string v1, "391"

    move-object/from16 v81, v13

    move-object/from16 v13, v21

    .line 160
    filled-new-array {v1, v15, v13}, [Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    const-string v1, "392"

    .line 161
    filled-new-array {v1, v15, v14}, [Ljava/lang/Object;

    move-result-object v1

    const-string v14, "393"

    .line 162
    filled-new-array {v14, v15, v13}, [Ljava/lang/Object;

    move-result-object v14

    move-object/from16 v82, v13

    const-string v13, "703"

    move-object/from16 v83, v14

    move-object/from16 v14, v39

    .line 163
    filled-new-array {v13, v15, v14}, [Ljava/lang/Object;

    move-result-object v13

    const/16 v14, 0x39

    new-array v14, v14, [[Ljava/lang/Object;

    aput-object v0, v14, v36

    const/4 v0, 0x1

    aput-object v2, v14, v0

    aput-object v3, v14, v18

    const/4 v0, 0x3

    aput-object v4, v14, v0

    const/4 v0, 0x4

    aput-object v5, v14, v0

    const/4 v0, 0x5

    aput-object v6, v14, v0

    const/4 v0, 0x6

    aput-object v7, v14, v0

    const/4 v0, 0x7

    aput-object v8, v14, v0

    const/16 v0, 0x8

    aput-object v9, v14, v0

    const/16 v0, 0x9

    aput-object v10, v14, v0

    const/16 v0, 0xa

    aput-object v11, v14, v0

    const/16 v0, 0xb

    aput-object v12, v14, v0

    const/16 v0, 0xc

    aput-object v81, v14, v0

    const/16 v0, 0xd

    aput-object v48, v14, v0

    const/16 v0, 0xe

    aput-object v37, v14, v0

    aput-object v38, v14, v25

    aput-object v40, v14, v27

    aput-object v41, v14, v28

    const/16 v0, 0x12

    aput-object v42, v14, v0

    aput-object v43, v14, v29

    const/16 v0, 0x14

    aput-object v46, v14, v0

    const/16 v0, 0x15

    aput-object v47, v14, v0

    const/16 v0, 0x16

    aput-object v50, v14, v0

    const/16 v0, 0x17

    aput-object v51, v14, v0

    const/16 v0, 0x18

    aput-object v52, v14, v0

    const/16 v0, 0x19

    aput-object v53, v14, v0

    const/16 v0, 0x1a

    aput-object v54, v14, v0

    const/16 v0, 0x1b

    aput-object v55, v14, v0

    const/16 v0, 0x1c

    aput-object v56, v14, v0

    const/16 v0, 0x1d

    aput-object v57, v14, v0

    const/16 v0, 0x1e

    aput-object v58, v14, v0

    const/16 v0, 0x1f

    aput-object v59, v14, v0

    const/16 v0, 0x20

    aput-object v60, v14, v0

    const/16 v0, 0x21

    aput-object v61, v14, v0

    const/16 v0, 0x22

    aput-object v62, v14, v0

    const/16 v0, 0x23

    aput-object v63, v14, v0

    const/16 v0, 0x24

    aput-object v64, v14, v0

    const/16 v0, 0x25

    aput-object v65, v14, v0

    const/16 v0, 0x26

    aput-object v66, v14, v0

    const/16 v0, 0x27

    aput-object v67, v14, v0

    const/16 v0, 0x28

    aput-object v68, v14, v0

    const/16 v0, 0x29

    aput-object v69, v14, v0

    const/16 v0, 0x2a

    aput-object v70, v14, v0

    const/16 v0, 0x2b

    aput-object v71, v14, v0

    const/16 v0, 0x2c

    aput-object v72, v14, v0

    const/16 v0, 0x2d

    aput-object v73, v14, v0

    const/16 v0, 0x2e

    aput-object v74, v14, v0

    const/16 v0, 0x2f

    aput-object v75, v14, v0

    const/16 v0, 0x30

    aput-object v76, v14, v0

    const/16 v0, 0x31

    aput-object v77, v14, v0

    const/16 v0, 0x32

    aput-object v78, v14, v0

    const/16 v0, 0x33

    aput-object v80, v14, v0

    const/16 v0, 0x34

    aput-object v49, v14, v0

    const/16 v0, 0x35

    aput-object v21, v14, v0

    const/16 v0, 0x36

    aput-object v1, v14, v0

    const/16 v0, 0x37

    aput-object v83, v14, v0

    const/16 v0, 0x38

    aput-object v13, v14, v0

    sput-object v14, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    .line 166
    const-string v0, "7001"

    move-object/from16 v1, v44

    .line 169
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "7002"

    move-object/from16 v2, v39

    .line 170
    filled-new-array {v1, v15, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "7003"

    move-object/from16 v4, v23

    .line 171
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "8001"

    move-object/from16 v6, v22

    .line 173
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "8002"

    move-object/from16 v7, v45

    .line 174
    filled-new-array {v6, v15, v7}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "8003"

    .line 175
    filled-new-array {v7, v15, v2}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "8004"

    .line 176
    filled-new-array {v8, v15, v2}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "8005"

    move-object/from16 v10, v79

    .line 177
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    const-string v11, "8006"

    move-object/from16 v12, v82

    .line 178
    filled-new-array {v11, v12}, [Ljava/lang/Object;

    move-result-object v11

    const-string v13, "8007"

    .line 179
    filled-new-array {v13, v15, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v13, "8008"

    move-object/from16 v16, v2

    const/16 v14, 0xc

    .line 180
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v13, v15, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v13, "8018"

    .line 181
    filled-new-array {v13, v12}, [Ljava/lang/Object;

    move-result-object v12

    const/16 v13, 0x19

    .line 182
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "8020"

    filled-new-array {v14, v15, v13}, [Ljava/lang/Object;

    move-result-object v13

    const-string v14, "8100"

    .line 183
    filled-new-array {v14, v10}, [Ljava/lang/Object;

    move-result-object v10

    const-string v14, "8101"

    .line 184
    filled-new-array {v14, v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v14, "8102"

    move-object/from16 v21, v4

    move-object/from16 v4, v20

    .line 185
    filled-new-array {v14, v4}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v14, 0x46

    .line 186
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v20, v4

    const-string v4, "8110"

    filled-new-array {v4, v15, v14}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v14, 0x46

    .line 187
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v22, v4

    const-string v4, "8200"

    filled-new-array {v4, v15, v14}, [Ljava/lang/Object;

    move-result-object v4

    const/16 v14, 0x12

    new-array v14, v14, [[Ljava/lang/Object;

    aput-object v0, v14, v36

    const/4 v0, 0x1

    aput-object v1, v14, v0

    aput-object v3, v14, v18

    const/4 v0, 0x3

    aput-object v5, v14, v0

    const/4 v0, 0x4

    aput-object v6, v14, v0

    const/4 v0, 0x5

    aput-object v7, v14, v0

    const/4 v0, 0x6

    aput-object v8, v14, v0

    const/4 v0, 0x7

    aput-object v9, v14, v0

    const/16 v0, 0x8

    aput-object v11, v14, v0

    const/16 v0, 0x9

    aput-object v16, v14, v0

    const/16 v0, 0xa

    aput-object v2, v14, v0

    const/16 v0, 0xb

    aput-object v12, v14, v0

    const/16 v0, 0xc

    aput-object v13, v14, v0

    const/16 v0, 0xd

    aput-object v10, v14, v0

    const/16 v0, 0xe

    aput-object v21, v14, v0

    aput-object v20, v14, v25

    aput-object v22, v14, v27

    aput-object v4, v14, v28

    sput-object v14, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 200
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_f

    const/4 v0, 0x0

    .line 204
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 206
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->TWO_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    move v5, v0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_3

    aget-object v7, v3, v5

    .line 207
    aget-object v8, v7, v0

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 208
    aget-object v0, v7, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_1

    .line 209
    aget-object v0, v7, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 215
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_e

    .line 219
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 221
    sget-object v4, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v5, v4

    move v7, v0

    :goto_1
    if-ge v7, v5, :cond_6

    aget-object v8, v4, v7

    .line 222
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 223
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_4

    .line 224
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 226
    :cond_4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v3, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 231
    :cond_6
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->THREE_DIGIT_PLUS_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    move v5, v0

    :goto_2
    const/4 v7, 0x4

    if-ge v5, v4, :cond_9

    aget-object v8, v3, v5

    .line 232
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 233
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_7

    .line 234
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 236
    :cond_7
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 240
    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v7, :cond_d

    .line 244
    invoke-virtual {p0, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 246
    sget-object v3, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->FOUR_DIGIT_DATA_LENGTH:[[Ljava/lang/Object;

    array-length v4, v3

    move v5, v0

    :goto_3
    if-ge v5, v4, :cond_c

    aget-object v8, v3, v5

    .line 247
    aget-object v9, v8, v0

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 248
    aget-object v0, v8, v6

    sget-object v2, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->VARIABLE_LENGTH:Ljava/lang/Object;

    if-ne v0, v2, :cond_a

    .line 249
    aget-object v0, v8, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processVariableAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_a
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v7, v0, p0}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->processFixedAI(IILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 255
    :cond_c
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 241
    :cond_d
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 216
    :cond_e
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 201
    :cond_f
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static processFixedAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 259
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, p0, :cond_2

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    if-lt v1, p1, :cond_1

    .line 269
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 270
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 271
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 272
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 266
    :cond_1
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0

    .line 260
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object p0

    throw p0
.end method

.method private static processVariableAI(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p2, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 280
    invoke-virtual {p2, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 281
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 282
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x29

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 283
    invoke-static {p1}, Lcom/google/zxing/oned/rss/expanded/decoders/FieldParser;->parseFieldsInGeneralPurpose(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 284
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
