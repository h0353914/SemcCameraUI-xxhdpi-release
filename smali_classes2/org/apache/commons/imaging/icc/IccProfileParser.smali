.class public Lorg/apache/commons/imaging/icc/IccProfileParser;
.super Lorg/apache/commons/imaging/common/BinaryFileParser;
.source "IccProfileParser.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lorg/apache/commons/imaging/common/BinaryFileParser;-><init>()V

    .line 36
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->setByteOrder(Ljava/nio/ByteOrder;)V

    return-void
.end method

.method private getIccTagType(I)Lorg/apache/commons/imaging/icc/IccTagType;
    .locals 4

    .line 281
    invoke-static {}, Lorg/apache/commons/imaging/icc/IccTagTypes;->values()[Lorg/apache/commons/imaging/icc/IccTagTypes;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 282
    invoke-interface {v2}, Lorg/apache/commons/imaging/icc/IccTagType;->getSignature()I

    move-result v3

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private readICCProfileInfo(Ljava/io/InputStream;)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    .locals 32

    .line 112
    const-string v0, "ProfileCreatorSignature"

    const-string v1, "RenderingIntent"

    const-string v2, "DeviceModel"

    const-string v3, "DeviceManufacturer"

    const-string v4, "VariousFlags"

    const-string v5, "PrimaryPlatformSignature"

    const-string v6, "ProfileFileSignature"

    const-string v7, "ProfileConnectionSpace"

    const-string v8, "ColorSpace"

    const-string v9, "ProfileDeviceClassSignature"

    const-string v10, "]"

    const-string v11, "Not a Valid ICC Profile"

    new-instance v12, Lorg/apache/commons/imaging/icc/CachingInputStream;

    move-object/from16 v13, p1

    invoke-direct {v12, v13}, Lorg/apache/commons/imaging/icc/CachingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 116
    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    .line 125
    :cond_0
    :try_start_0
    const-string v13, "ProfileSize"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v13, v12, v11, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    .line 138
    const-string v14, "Signature"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v14, v12, v11, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 140
    const-string v15, "CMMTypeSignature"

    invoke-static {v15, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 143
    :cond_1
    const-string v15, "ProfileVersion"

    move/from16 p1, v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v15, v12, v11, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v19

    .line 145
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v9, v12, v11, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    .line 147
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 148
    invoke-static {v9, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 151
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-static {v8, v12, v11, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    .line 152
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 153
    invoke-static {v8, v9}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 156
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v7, v12, v11, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v15

    if-eqz v15, :cond_4

    .line 158
    invoke-static {v7, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_4
    move/from16 v22, v8

    const-wide/16 v7, 0xc

    .line 161
    invoke-static {v12, v7, v8, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 163
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v6, v12, v11, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v15

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 165
    invoke-static {v6, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 168
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v5, v12, v11, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v6

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v16

    if-eqz v16, :cond_6

    .line 170
    invoke-static {v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 173
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v4, v12, v11, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v25

    .line 174
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 175
    invoke-static {v4, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 178
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v3, v12, v11, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    .line 179
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 180
    invoke-static {v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 183
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v2, v12, v11, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 184
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 185
    invoke-static {v2, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_9
    const-wide/16 v7, 0x8

    .line 188
    invoke-static {v12, v7, v8, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v1, v12, v11, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 192
    invoke-static {v1, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_a
    const-wide/16 v7, 0xc

    .line 195
    invoke-static {v12, v7, v8, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 197
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-static {v0, v12, v11, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    .line 198
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 199
    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_b
    const-wide/16 v7, 0x10

    .line 203
    invoke-static {v12, v7, v8, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-wide/16 v7, 0x1c

    .line 210
    invoke-static {v12, v7, v8, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 214
    const-string v0, "TagCount"

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v0, v12, v11, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 217
    new-array v5, v0, [Lorg/apache/commons/imaging/icc/IccTag;

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v0, :cond_c

    .line 220
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string v0, "TagSignature["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-static {v0, v12, v11, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 225
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v15

    const-string v15, "OffsetToData["

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v8, v12, v11, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    .line 226
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v29, v1

    const-string v1, "ElementSize["

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v1, v12, v11, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    move-object/from16 v15, p0

    move-object/from16 v18, v10

    .line 228
    invoke-direct {v15, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getIccTagType(I)Lorg/apache/commons/imaging/icc/IccTagType;

    move-result-object v10

    move-object/from16 v20, v11

    .line 241
    new-instance v11, Lorg/apache/commons/imaging/icc/IccTag;

    invoke-direct {v11, v0, v8, v1, v10}, Lorg/apache/commons/imaging/icc/IccTag;-><init>(IIILorg/apache/commons/imaging/icc/IccTagType;)V

    .line 244
    aput-object v11, v5, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v16

    move/from16 v15, v17

    move-object/from16 v10, v18

    move-object/from16 v11, v20

    move/from16 v1, v29

    goto/16 :goto_0

    :cond_c
    move/from16 v29, v1

    move/from16 v17, v15

    move-object/from16 v15, p0

    .line 250
    :goto_1
    invoke-virtual {v12}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_d

    goto :goto_1

    .line 254
    :cond_d
    invoke-virtual {v12}, Lorg/apache/commons/imaging/icc/CachingInputStream;->getCache()[B

    move-result-object v0

    .line 256
    array-length v1, v0

    if-lt v1, v13, :cond_f

    .line 260
    new-instance v1, Lorg/apache/commons/imaging/icc/IccProfileInfo;

    const/16 v30, 0x0

    move/from16 v7, v17

    move-object v15, v1

    move-object/from16 v16, v0

    move/from16 v17, v13

    move/from16 v18, p1

    move/from16 v20, v14

    move/from16 v21, v9

    move/from16 v23, v7

    move/from16 v24, v6

    move/from16 v26, v4

    move/from16 v27, v3

    move/from16 v28, v2

    move-object/from16 v31, v5

    invoke-direct/range {v15 .. v31}, Lorg/apache/commons/imaging/icc/IccProfileInfo;-><init>([BIIIIIIIIIIIII[B[Lorg/apache/commons/imaging/icc/IccTag;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "issRGB: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->issRGB()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V

    :cond_e
    return-object v1

    .line 257
    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Couldn\'t read ICC Profile."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 274
    invoke-static {v0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getICCProfileInfo(Ljava/awt/color/ICC_Profile;)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object p0

    return-object p0
.end method

.method public getICCProfileInfo(Ljava/io/File;)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object p0

    return-object p0
.end method

.method public getICCProfileInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    .locals 8

    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    invoke-direct {p0, v1}, Lorg/apache/commons/imaging/icc/IccProfileParser;->readICCProfileInfo(Ljava/io/InputStream;)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 96
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 99
    invoke-static {p0}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v0

    .line 78
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 81
    :try_start_4
    invoke-virtual {v2}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->getTags()[Lorg/apache/commons/imaging/icc/IccTag;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 82
    iget v6, v5, Lorg/apache/commons/imaging/icc/IccTag;->offset:I

    iget v7, v5, Lorg/apache/commons/imaging/icc/IccTag;->length:I

    invoke-virtual {p1, v6, v7}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getBlock(II)[B

    move-result-object v6

    .line 84
    invoke-virtual {v5, v6}, Lorg/apache/commons/imaging/icc/IccTag;->setData([B)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-object v2

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 92
    :goto_2
    :try_start_5
    invoke-static {p1}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_3

    .line 96
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception p1

    .line 99
    invoke-static {p1}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 104
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 105
    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    :cond_4
    return-object v0

    :goto_4
    if-eqz v0, :cond_5

    .line 96
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_5

    :catch_4
    move-exception p1

    .line 99
    invoke-static {p1}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V

    .line 100
    :cond_5
    :goto_5
    throw p0
.end method

.method public getICCProfileInfo([B)Lorg/apache/commons/imaging/icc/IccProfileInfo;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getICCProfileInfo(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-result-object p0

    return-object p0
.end method

.method public issRGB(Ljava/awt/color/ICC_Profile;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 291
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->issRGB(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z

    move-result p0

    return p0
.end method

.method public issRGB(Ljava/io/File;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceFile;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->issRGB(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z

    move-result p0

    return p0
.end method

.method public issRGB(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    const-string v0, "DeviceModel"

    const-string v1, "Not a Valid ICC Profile"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    :try_start_1
    const-string v4, "ProfileSize"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v4, p1, v1, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    const-wide/16 v4, 0x14

    .line 324
    invoke-static {p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-wide/16 v4, 0xc

    .line 326
    invoke-static {p1, v4, v5, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 328
    invoke-static {p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    .line 330
    const-string v4, "ProfileFileSignature"

    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v4, p1, v1, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    .line 331
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 332
    const-string v5, "DeviceManufacturer"

    invoke-static {v5, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    .line 335
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v0, p1, v1, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v1

    .line 336
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 337
    invoke-static {v0, v1}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const p0, 0x49454320    # 807986.0f

    if-ne v4, p0, :cond_3

    const p0, 0x73524742

    if-ne v1, p0, :cond_3

    move p0, v2

    goto :goto_0

    :cond_3
    move p0, v3

    .line 344
    :goto_0
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object p1, v0, v3

    invoke-static {v2, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    const/4 p1, 0x0

    :goto_1
    new-array v0, v2, [Ljava/io/Closeable;

    aput-object p1, v0, v3

    invoke-static {v3, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    throw p0
.end method

.method public issRGB([B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    new-instance v0, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;

    invoke-direct {v0, p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSourceArray;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->issRGB(Lorg/apache/commons/imaging/common/bytesource/ByteSource;)Z

    move-result p0

    return p0
.end method
