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
    .locals 30

    .line 112
    new-instance v1, Lorg/apache/commons/imaging/icc/CachingInputStream;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Lorg/apache/commons/imaging/icc/CachingInputStream;-><init>(Ljava/io/InputStream;)V

    .line 115
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    :cond_0
    :try_start_0
    const-string v2, "ProfileSize"

    const-string v3, "Not a Valid ICC Profile"

    .line 125
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v7

    const-string v2, "Signature"

    const-string v3, "Not a Valid ICC Profile"

    .line 138
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v8

    .line 139
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "CMMTypeSignature"

    .line 140
    invoke-static {v2, v8}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_1
    const-string v2, "ProfileVersion"

    const-string v3, "Not a Valid ICC Profile"

    .line 143
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v9

    const-string v2, "ProfileDeviceClassSignature"

    const-string v3, "Not a Valid ICC Profile"

    .line 145
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v10

    .line 147
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "ProfileDeviceClassSignature"

    .line 148
    invoke-static {v2, v10}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_2
    const-string v2, "ColorSpace"

    const-string v3, "Not a Valid ICC Profile"

    .line 151
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v11

    .line 152
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ColorSpace"

    .line 153
    invoke-static {v2, v11}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_3
    const-string v2, "ProfileConnectionSpace"

    const-string v3, "Not a Valid ICC Profile"

    .line 156
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v2, v1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v12

    .line 157
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ProfileConnectionSpace"

    .line 158
    invoke-static {v2, v12}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_4
    const-string v2, "Not a Valid ICC Profile"

    const-wide/16 v3, 0xc

    .line 161
    invoke-static {v1, v3, v4, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-string v2, "ProfileFileSignature"

    const-string v5, "Not a Valid ICC Profile"

    .line 163
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v2, v1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v13

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "ProfileFileSignature"

    .line 165
    invoke-static {v2, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_5
    const-string v2, "PrimaryPlatformSignature"

    const-string v5, "Not a Valid ICC Profile"

    .line 168
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v2, v1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v14

    .line 169
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "PrimaryPlatformSignature"

    .line 170
    invoke-static {v2, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_6
    const-string v2, "VariousFlags"

    const-string v5, "Not a Valid ICC Profile"

    .line 173
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v2, v1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v15

    .line 174
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "VariousFlags"

    .line 175
    invoke-static {v2, v13}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_7
    const-string v2, "DeviceManufacturer"

    const-string v5, "Not a Valid ICC Profile"

    .line 178
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v2, v1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    .line 179
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "DeviceManufacturer"

    .line 180
    invoke-static {v5, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_8
    const-string v5, "DeviceModel"

    const-string v6, "Not a Valid ICC Profile"

    .line 183
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-static {v5, v1, v6, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 184
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "DeviceModel"

    .line 185
    invoke-static {v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_9
    const-wide/16 v4, 0x8

    const-string v6, "Not a Valid ICC Profile"

    .line 188
    invoke-static {v1, v4, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-string v4, "RenderingIntent"

    const-string v5, "Not a Valid ICC Profile"

    .line 190
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v4, v1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    .line 191
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "RenderingIntent"

    .line 192
    invoke-static {v5, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_a
    const-string v5, "Not a Valid ICC Profile"

    move/from16 v22, v3

    move/from16 v23, v4

    const-wide/16 v3, 0xc

    .line 195
    invoke-static {v1, v3, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-string v3, "ProfileCreatorSignature"

    const-string v4, "Not a Valid ICC Profile"

    .line 197
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, v1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 198
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "ProfileCreatorSignature"

    .line 199
    invoke-static {v4, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_b
    const/16 v20, 0x0

    const-wide/16 v4, 0x10

    const-string v6, "Not a Valid ICC Profile"

    .line 203
    invoke-static {v1, v4, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-wide/16 v4, 0x1c

    const-string v6, "Not a Valid ICC Profile"

    .line 210
    invoke-static {v1, v4, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    const-string v4, "TagCount"

    const-string v5, "Not a Valid ICC Profile"

    .line 214
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-static {v4, v1, v5, v6}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    .line 217
    new-array v6, v4, [Lorg/apache/commons/imaging/icc/IccTag;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_c

    move/from16 v24, v4

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v3

    const-string v3, "TagSignature["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not a Valid ICC Profile"

    move/from16 v26, v2

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-static {v3, v1, v4, v2}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v2

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OffsetToData["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not a Valid ICC Profile"

    move/from16 v27, v15

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v15

    invoke-static {v3, v1, v4, v15}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "ElementSize["

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, "]"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v15, "Not a Valid ICC Profile"

    move/from16 v28, v14

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v14

    invoke-static {v4, v1, v15, v14}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v4

    move-object/from16 v15, p0

    .line 228
    invoke-direct {v15, v2}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getIccTagType(I)Lorg/apache/commons/imaging/icc/IccTagType;

    move-result-object v14

    .line 241
    new-instance v15, Lorg/apache/commons/imaging/icc/IccTag;

    invoke-direct {v15, v2, v3, v4, v14}, Lorg/apache/commons/imaging/icc/IccTag;-><init>(IIILorg/apache/commons/imaging/icc/IccTagType;)V

    .line 244
    aput-object v15, v6, v5

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v24

    move/from16 v3, v25

    move/from16 v2, v26

    move/from16 v15, v27

    move/from16 v14, v28

    goto/16 :goto_0

    :cond_c
    move/from16 v26, v2

    move/from16 v25, v3

    move/from16 v28, v14

    move/from16 v27, v15

    .line 250
    :goto_1
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ltz v2, :cond_d

    goto :goto_1

    .line 254
    :cond_d
    invoke-virtual {v1}, Lorg/apache/commons/imaging/icc/CachingInputStream;->getCache()[B

    move-result-object v1

    .line 256
    array-length v2, v1

    if-ge v2, v7, :cond_e

    .line 257
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Couldn\'t read ICC Profile."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_e
    new-instance v2, Lorg/apache/commons/imaging/icc/IccProfileInfo;

    move-object v5, v2

    move-object v3, v6

    move-object v6, v1

    move/from16 v14, v28

    move/from16 v15, v27

    move/from16 v16, v26

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v19, v25

    move-object/from16 v21, v3

    invoke-direct/range {v5 .. v21}, Lorg/apache/commons/imaging/icc/IccProfileInfo;-><init>([BIIIIIIIIIIIII[B[Lorg/apache/commons/imaging/icc/IccTag;)V

    .line 268
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "issRGB: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/apache/commons/imaging/icc/IccProfileInfo;->issRGB()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    return-object v2

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 274
    invoke-static {v1}, Lorg/apache/commons/imaging/util/Debug;->debug(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    return-object v1
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
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {}, Lorg/apache/commons/imaging/util/Debug;->debug()V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 317
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/commons/imaging/common/bytesource/ByteSource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v0, "ProfileSize"

    const-string v3, "Not a Valid ICC Profile"

    .line 319
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v0, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    const-wide/16 v3, 0x14

    .line 324
    invoke-static {p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v0, "Not a Valid ICC Profile"

    const-wide/16 v3, 0xc

    .line 326
    invoke-static {p1, v3, v4, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;JLjava/lang/String;)V

    .line 328
    invoke-static {p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->skipBytes(Ljava/io/InputStream;J)V

    const-string v0, "ProfileFileSignature"

    const-string v3, "Not a Valid ICC Profile"

    .line 330
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-static {v0, p1, v3, v4}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v0

    .line 331
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "DeviceManufacturer"

    .line 332
    invoke-static {v3, v0}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V

    :cond_1
    const-string v3, "DeviceModel"

    const-string v4, "Not a Valid ICC Profile"

    .line 335
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-static {v3, p1, v4, v5}, Lorg/apache/commons/imaging/common/BinaryFunctions;->read4Bytes(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/nio/ByteOrder;)I

    move-result v3

    .line 336
    invoke-virtual {p0}, Lorg/apache/commons/imaging/icc/IccProfileParser;->getDebug()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "DeviceModel"

    .line 337
    invoke-static {p0, v3}, Lorg/apache/commons/imaging/common/BinaryFunctions;->printCharQuad(Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    const p0, 0x49454320    # 807986.0f

    if-ne v0, p0, :cond_3

    const p0, 0x73524742

    if-ne v3, p0, :cond_3

    move p0, v1

    goto :goto_0

    :cond_3
    move p0, v2

    .line 344
    :goto_0
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object p1, v0

    :goto_1
    new-array v0, v1, [Ljava/io/Closeable;

    aput-object p1, v0, v2

    invoke-static {v2, v0}, Lorg/apache/commons/imaging/util/IoUtils;->closeQuietly(Z[Ljava/io/Closeable;)V

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
