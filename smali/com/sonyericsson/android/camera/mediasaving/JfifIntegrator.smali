.class public Lcom/sonyericsson/android/camera/mediasaving/JfifIntegrator;
.super Ljava/lang/Object;
.source "JfifIntegrator.java"


# static fields
.field private static final M_DHT:I = 0xc4

.field private static final M_DQT:I = 0xdb

.field private static final M_MARKER:I = 0xff

.field private static final M_SOI:I = 0xd8

.field private static final M_SOS:I = 0xda

.field public static final TAG:Ljava/lang/String; = "JfifIntegrator"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static integrate([B[B)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 36
    array-length v2, v0

    const/4 v3, 0x2

    .line 39
    new-array v4, v3, [B

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :goto_0
    add-int/lit8 v11, v6, 0x1

    const/16 v12, -0x28

    const/16 v13, -0x26

    const/16 v15, -0x3c

    const/4 v14, -0x1

    const/16 v17, 0x1

    if-ge v11, v2, :cond_7

    .line 53
    aget-byte v18, v0, v6

    aput-byte v18, v4, v5

    .line 54
    aget-byte v11, v0, v11

    aput-byte v11, v4, v17

    add-int/lit8 v6, v6, 0x2

    .line 58
    aget-byte v11, v4, v5

    if-eq v14, v11, :cond_0

    .line 59
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    const-string v1, "No \'FF\' marker."

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    aget-byte v11, v4, v17

    if-ne v13, v11, :cond_1

    goto :goto_4

    .line 65
    :cond_1
    aget-byte v11, v4, v17

    if-ne v12, v11, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    new-array v11, v3, [B

    .line 72
    aget-byte v12, v0, v6

    aput-byte v12, v11, v5

    add-int/lit8 v12, v6, 0x1

    .line 73
    aget-byte v12, v0, v12

    aput-byte v12, v11, v17

    .line 74
    new-instance v12, Ljava/math/BigInteger;

    invoke-direct {v12, v11}, Ljava/math/BigInteger;-><init>([B)V

    .line 75
    invoke-virtual {v12}, Ljava/math/BigInteger;->intValue()I

    move-result v11

    .line 77
    aget-byte v12, v4, v17

    if-ne v15, v12, :cond_4

    if-nez v9, :cond_3

    move v12, v11

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v11, -0x2

    :goto_1
    add-int/2addr v9, v12

    add-int/lit8 v12, v11, 0x2

    add-int/2addr v7, v12

    goto :goto_3

    .line 82
    :cond_4
    aget-byte v12, v4, v17

    const/16 v13, -0x25

    if-ne v13, v12, :cond_6

    if-nez v8, :cond_5

    move v12, v11

    goto :goto_2

    :cond_5
    add-int/lit8 v12, v11, -0x2

    :goto_2
    add-int/2addr v8, v12

    add-int/lit8 v12, v11, 0x2

    add-int/2addr v10, v12

    :cond_6
    :goto_3
    add-int/2addr v6, v11

    goto :goto_0

    :cond_7
    :goto_4
    add-int/lit8 v6, v8, 0x2

    .line 91
    new-array v11, v6, [B

    add-int/lit8 v12, v9, 0x2

    .line 92
    new-array v13, v12, [B

    .line 95
    aput-byte v14, v11, v5

    const/16 v16, -0x25

    .line 96
    aput-byte v16, v11, v17

    .line 97
    aput-byte v14, v13, v5

    .line 98
    aput-byte v15, v13, v17

    .line 100
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    .line 101
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 103
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v15}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 105
    aget-byte v15, v3, v5

    const/16 v18, 0x2

    aput-byte v15, v11, v18

    .line 106
    aget-byte v3, v3, v17

    const/4 v15, 0x3

    aput-byte v3, v11, v15

    .line 108
    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    .line 110
    aget-byte v14, v3, v5

    aput-byte v14, v13, v18

    .line 111
    aget-byte v3, v3, v17

    aput-byte v3, v13, v15

    sub-int v3, v2, v10

    sub-int/2addr v3, v7

    add-int/2addr v3, v8

    add-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v9

    add-int/lit8 v3, v3, 0x2

    const/4 v7, 0x4

    move v8, v5

    move v9, v7

    move v10, v9

    move v7, v8

    :goto_5
    add-int/lit8 v14, v7, 0x1

    if-ge v14, v2, :cond_d

    .line 130
    aget-byte v15, v0, v7

    aput-byte v15, v4, v5

    .line 131
    aget-byte v14, v0, v14

    aput-byte v14, v4, v17

    add-int/lit8 v7, v7, 0x2

    .line 134
    aget-byte v14, v4, v5

    const/4 v15, -0x1

    if-eq v15, v14, :cond_8

    .line 135
    new-instance v0, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;

    const-string v1, "No \'FF\' marker."

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/mediasaving/yuv2jpeg/IntegrationMakerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_8
    aget-byte v14, v4, v17

    const/16 v15, -0x26

    if-ne v15, v14, :cond_9

    .line 142
    invoke-static {v11, v5, v1, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v6

    .line 145
    invoke-static {v13, v5, v1, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v12

    const/4 v4, 0x2

    sub-int/2addr v7, v4

    sub-int/2addr v2, v7

    .line 149
    invoke-static {v0, v7, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    .line 152
    :cond_9
    aget-byte v14, v4, v17

    const/16 v15, -0x28

    if-ne v15, v14, :cond_a

    add-int/lit8 v14, v7, -0x2

    .line 154
    aget-byte v18, v4, v5

    aput-byte v18, v1, v14

    add-int/lit8 v14, v7, -0x1

    .line 155
    aget-byte v18, v4, v17

    aput-byte v18, v1, v14

    add-int/lit8 v8, v8, 0x2

    goto :goto_5

    :cond_a
    const/4 v14, 0x2

    .line 160
    new-array v15, v14, [B

    .line 161
    aget-byte v18, v0, v7

    aput-byte v18, v15, v5

    add-int/lit8 v18, v7, 0x1

    .line 162
    aget-byte v18, v0, v18

    aput-byte v18, v15, v17

    .line 163
    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v15}, Ljava/math/BigInteger;-><init>([B)V

    .line 164
    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    .line 166
    aget-byte v15, v4, v17

    const/16 v14, -0x3c

    if-ne v14, v15, :cond_b

    add-int/lit8 v15, v7, 0x2

    add-int/lit8 v14, v5, -0x2

    .line 167
    invoke-static {v0, v15, v13, v9, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v9, v14

    goto :goto_6

    .line 169
    :cond_b
    aget-byte v14, v4, v17

    const/16 v15, -0x25

    if-ne v15, v14, :cond_c

    add-int/lit8 v14, v7, 0x2

    add-int/lit8 v15, v5, -0x2

    .line 170
    invoke-static {v0, v14, v11, v10, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v15

    goto :goto_6

    :cond_c
    add-int/lit8 v14, v7, -0x2

    add-int/lit8 v15, v5, 0x2

    .line 173
    invoke-static {v0, v14, v1, v8, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v8, v15

    :goto_6
    add-int/2addr v7, v5

    const/4 v5, 0x0

    goto/16 :goto_5

    :cond_d
    :goto_7
    return v3
.end method
