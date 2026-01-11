.class final Lfw;
.super Lft;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lft;-><init>()V

    return-void
.end method

.method private static a([BIJI)I
    .locals 2

    if-eqz p4, :cond_2

    const/4 v0, 0x1

    if-eq p4, v0, :cond_1

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 57
    invoke-static {p0, p2, p3}, Lfr;->a([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lfr;->a([BJ)B

    move-result p0

    .line 58
    invoke-static {p1, p4, p0}, Lfx;->a(III)I

    move-result p0

    return p0

    .line 0
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    .line 61
    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 59
    :cond_1
    invoke-static {p0, p2, p3}, Lfr;->a([BJ)B

    move-result p0

    .line 60
    invoke-static {p1, p0}, Lfx;->a(II)I

    move-result p0

    return p0

    :cond_2
    invoke-static {p1}, Lfx;->a(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;[BII)I
    .locals 19

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    int-to-long v4, v2

    int-to-long v6, v3

    add-long/2addr v6, v4

    .line 24
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    const-string v9, " at index "

    const-string v10, "Failed writing "

    if-gt v8, v3, :cond_c

    .line 25
    array-length v11, v1

    sub-int/2addr v11, v3

    if-lt v11, v2, :cond_c

    const/4 v2, 0x0

    :goto_0
    const-wide/16 v11, 0x1

    const/16 v3, 0x80

    if-ge v2, v8, :cond_0

    .line 26
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_0

    add-long/2addr v11, v4

    int-to-byte v3, v13

    .line 27
    invoke-static {v1, v4, v5, v3}, Lfr;->a([BJB)V

    add-int/lit8 v2, v2, 0x1

    move-wide v4, v11

    goto :goto_0

    :cond_0
    if-eq v2, v8, :cond_b

    :goto_1
    if-ge v2, v8, :cond_a

    .line 28
    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v13

    if-ge v13, v3, :cond_1

    cmp-long v14, v4, v6

    if-gez v14, :cond_1

    add-long v14, v4, v11

    int-to-byte v13, v13

    .line 40
    invoke-static {v1, v4, v5, v13}, Lfr;->a([BJB)V

    move-object/from16 p0, v9

    move-wide v4, v14

    move-object v14, v10

    goto/16 :goto_3

    :cond_1
    const/16 v14, 0x800

    const-wide/16 v15, 0x2

    if-ge v13, v14, :cond_2

    const-wide/16 v17, -0x2

    add-long v17, v6, v17

    cmp-long v14, v4, v17

    if-gtz v14, :cond_2

    move-object/from16 p0, v9

    move-object v14, v10

    add-long v9, v4, v11

    ushr-int/lit8 v11, v13, 0x6

    or-int/lit16 v11, v11, 0x3c0

    int-to-byte v11, v11

    .line 38
    invoke-static {v1, v4, v5, v11}, Lfr;->a([BJB)V

    add-long/2addr v4, v15

    and-int/lit8 v11, v13, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 39
    invoke-static {v1, v9, v10, v11}, Lfr;->a([BJB)V

    goto/16 :goto_3

    :cond_2
    move-object/from16 p0, v9

    move-object v14, v10

    const v11, 0xdfff

    const v12, 0xd800

    if-ge v13, v12, :cond_3

    goto :goto_2

    :cond_3
    if-le v13, v11, :cond_4

    :goto_2
    const-wide/16 v17, -0x3

    add-long v17, v6, v17

    cmp-long v17, v4, v17

    if-gtz v17, :cond_4

    const-wide/16 v17, 0x1

    add-long v11, v4, v17

    ushr-int/lit8 v9, v13, 0xc

    or-int/lit16 v9, v9, 0x1e0

    int-to-byte v9, v9

    .line 35
    invoke-static {v1, v4, v5, v9}, Lfr;->a([BJB)V

    add-long v9, v4, v15

    ushr-int/lit8 v15, v13, 0x6

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v15, v3

    int-to-byte v15, v15

    .line 36
    invoke-static {v1, v11, v12, v15}, Lfr;->a([BJB)V

    const-wide/16 v11, 0x3

    add-long/2addr v4, v11

    and-int/lit8 v11, v13, 0x3f

    or-int/2addr v11, v3

    int-to-byte v11, v11

    .line 37
    invoke-static {v1, v9, v10, v11}, Lfr;->a([BJB)V

    goto :goto_3

    :cond_4
    const-wide/16 v9, -0x4

    add-long/2addr v9, v6

    cmp-long v9, v4, v9

    if-gtz v9, :cond_7

    add-int/lit8 v9, v2, 0x1

    if-eq v9, v8, :cond_6

    .line 29
    invoke-interface {v0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v13, v2}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 30
    invoke-static {v13, v2}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    const-wide/16 v10, 0x1

    add-long v12, v4, v10

    ushr-int/lit8 v10, v2, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    .line 31
    invoke-static {v1, v4, v5, v10}, Lfr;->a([BJB)V

    add-long v10, v4, v15

    ushr-int/lit8 v15, v2, 0xc

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v15, v3

    int-to-byte v15, v15

    .line 32
    invoke-static {v1, v12, v13, v15}, Lfr;->a([BJB)V

    const-wide/16 v12, 0x3

    add-long/2addr v12, v4

    ushr-int/lit8 v15, v2, 0x6

    and-int/lit8 v15, v15, 0x3f

    or-int/2addr v15, v3

    int-to-byte v15, v15

    .line 33
    invoke-static {v1, v10, v11, v15}, Lfr;->a([BJB)V

    const-wide/16 v10, 0x4

    add-long/2addr v4, v10

    and-int/lit8 v2, v2, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    .line 34
    invoke-static {v1, v12, v13, v2}, Lfr;->a([BJB)V

    move v2, v9

    :goto_3
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v11, 0x1

    move-object/from16 v9, p0

    move-object v10, v14

    goto/16 :goto_1

    :cond_5
    move v2, v9

    .line 37
    :cond_6
    new-instance v0, Lfv;

    add-int/lit8 v2, v2, -0x1

    .line 41
    invoke-direct {v0, v2, v8}, Lfv;-><init>(II)V

    throw v0

    :cond_7
    if-lt v13, v12, :cond_9

    if-gt v13, v11, :cond_9

    add-int/lit8 v1, v2, 0x1

    if-eq v1, v8, :cond_8

    .line 42
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v13, v0}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v0

    if-nez v0, :cond_9

    .line 43
    :cond_8
    new-instance v0, Lfv;

    .line 44
    invoke-direct {v0, v2, v8}, Lfv;-><init>(II)V

    throw v0

    .line 34
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    .line 43
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v14

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-object/from16 v7, p0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    long-to-int v0, v4

    return v0

    :cond_b
    long-to-int v0, v4

    return v0

    :cond_c
    move-object v7, v9

    move-object v6, v10

    .line 24
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 v8, v8, -0x1

    .line 25
    invoke-interface {v0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x25

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int v0, v2, v3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b([BII)Ljava/lang/String;
    .locals 10

    .line 2
    array-length p0, p1

    or-int v0, p2, p3

    sub-int v1, p0, p2

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-ltz v0, :cond_9

    add-int p0, p2, p3

    .line 4
    new-array p3, p3, [C

    const/4 v6, 0x0

    move v0, v6

    :goto_0
    if-ge p2, p0, :cond_0

    int-to-long v1, p2

    .line 5
    invoke-static {p1, v1, v2}, Lfr;->a([BJ)B

    move-result v1

    .line 6
    invoke-static {v1}, Lfs;->a(B)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, p3, v0}, Lfs;->a(B[CI)V

    move v0, v2

    goto :goto_0

    :cond_0
    move v7, v0

    :cond_1
    :goto_1
    if-ge p2, p0, :cond_8

    add-int/lit8 v0, p2, 0x1

    int-to-long v1, p2

    .line 7
    invoke-static {p1, v1, v2}, Lfr;->a([BJ)B

    move-result v1

    .line 8
    invoke-static {v1}, Lfs;->a(B)Z

    move-result v2

    if-eqz v2, :cond_2

    add-int/lit8 p2, v7, 0x1

    invoke-static {v1, p3, v7}, Lfs;->a(B[CI)V

    move v7, p2

    move p2, v0

    :goto_2
    if-ge p2, p0, :cond_1

    int-to-long v0, p2

    .line 9
    invoke-static {p1, v0, v1}, Lfr;->a([BJ)B

    move-result v0

    .line 10
    invoke-static {v0}, Lfs;->a(B)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v1, v7, 0x1

    invoke-static {v0, p3, v7}, Lfs;->a(B[CI)V

    move v7, v1

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lfs;->b(B)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lfs;->c(B)Z

    move-result v2

    if-nez v2, :cond_4

    add-int/lit8 v2, p0, -0x2

    if-ge v0, v2, :cond_3

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 p2, p2, 0x4

    int-to-long v4, v0

    .line 14
    invoke-static {p1, v4, v5}, Lfr;->a([BJ)B

    move-result v4

    int-to-long v8, v2

    .line 15
    invoke-static {p1, v8, v9}, Lfr;->a([BJ)B

    move-result v2

    int-to-long v8, v3

    .line 16
    invoke-static {p1, v8, v9}, Lfr;->a([BJ)B

    move-result v3

    move v0, v1

    move v1, v4

    move-object v4, p3

    move v5, v7

    .line 17
    invoke-static/range {v0 .. v5}, Lfs;->a(BBBB[CI)V

    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 21
    :cond_3
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0

    :cond_4
    add-int/lit8 v2, p0, -0x1

    if-ge v0, v2, :cond_5

    add-int/lit8 v2, p2, 0x2

    add-int/lit8 p2, p2, 0x3

    add-int/lit8 v3, v7, 0x1

    int-to-long v4, v0

    .line 11
    invoke-static {p1, v4, v5}, Lfr;->a([BJ)B

    move-result v0

    int-to-long v4, v2

    .line 12
    invoke-static {p1, v4, v5}, Lfr;->a([BJ)B

    move-result v2

    .line 13
    invoke-static {v1, v0, v2, p3, v7}, Lfs;->a(BBB[CI)V

    move v7, v3

    goto :goto_1

    .line 20
    :cond_5
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0

    :cond_6
    if-ge v0, p0, :cond_7

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 v2, v7, 0x1

    int-to-long v3, v0

    .line 18
    invoke-static {p1, v3, v4}, Lfr;->a([BJ)B

    move-result v0

    .line 19
    invoke-static {v1, v0, p3, v7}, Lfs;->a(BB[CI)V

    move v7, v2

    goto/16 :goto_1

    .line 22
    :cond_7
    invoke-static {}, Ldl;->f()Ldl;

    move-result-object p0

    throw p0

    .line 19
    :cond_8
    new-instance p0, Ljava/lang/String;

    .line 23
    invoke-direct {p0, p3, v6, v7}, Ljava/lang/String;-><init>([CII)V

    return-object p0

    .line 2
    :cond_9
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    const-string p2, "buffer length=%d, index=%d, size=%d"

    invoke-static {p2, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c([BII)I
    .locals 16

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    .line 45
    array-length v3, v0

    or-int v4, v1, v2

    sub-int v5, v3, v2

    or-int/2addr v4, v5

    if-ltz v4, :cond_12

    int-to-long v3, v1

    int-to-long v1, v2

    sub-long/2addr v1, v3

    long-to-int v1, v1

    const/16 v2, 0x10

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    if-lt v1, v2, :cond_2

    move-wide v8, v3

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_1

    add-long v10, v8, v6

    .line 46
    invoke-static {v0, v8, v9}, Lfr;->a([BJ)B

    move-result v8

    if-gez v8, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-wide v8, v10

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v5

    :goto_1
    sub-int/2addr v1, v2

    int-to-long v8, v2

    add-long/2addr v3, v8

    :cond_3
    :goto_2
    move v2, v5

    :goto_3
    if-lez v1, :cond_5

    add-long v8, v3, v6

    .line 47
    invoke-static {v0, v3, v4}, Lfr;->a([BJ)B

    move-result v2

    if-ltz v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    move-wide v3, v8

    goto :goto_3

    :cond_4
    move-wide v3, v8

    :cond_5
    if-eqz v1, :cond_11

    add-int/lit8 v8, v1, -0x1

    const/16 v9, -0x20

    const/16 v10, -0x41

    if-lt v2, v9, :cond_d

    const/16 v12, -0x10

    const-wide/16 v13, 0x2

    if-lt v2, v12, :cond_7

    const/4 v9, 0x3

    if-lt v8, v9, :cond_6

    add-int/lit8 v1, v1, -0x4

    add-long v8, v3, v6

    .line 51
    invoke-static {v0, v3, v4}, Lfr;->a([BJ)B

    move-result v12

    if-gt v12, v10, :cond_f

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v12, v12, 0x70

    add-int/2addr v2, v12

    shr-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_f

    add-long/2addr v13, v3

    .line 52
    invoke-static {v0, v8, v9}, Lfr;->a([BJ)B

    move-result v2

    if-gt v2, v10, :cond_f

    const-wide/16 v8, 0x3

    add-long/2addr v3, v8

    .line 53
    invoke-static {v0, v13, v14}, Lfr;->a([BJ)B

    move-result v2

    if-gt v2, v10, :cond_f

    goto :goto_2

    .line 55
    :cond_6
    invoke-static {v0, v2, v3, v4, v8}, Lfw;->a([BIJI)I

    move-result v5

    goto :goto_6

    :cond_7
    const/4 v12, 0x2

    if-lt v8, v12, :cond_c

    add-int/lit8 v1, v1, -0x3

    add-long v11, v3, v6

    .line 49
    invoke-static {v0, v3, v4}, Lfr;->a([BJ)B

    move-result v8

    if-le v8, v10, :cond_8

    goto :goto_5

    :cond_8
    const/16 v15, -0x60

    if-ne v2, v9, :cond_9

    if-ge v8, v15, :cond_9

    goto :goto_5

    :cond_9
    const/16 v9, -0x13

    if-eq v2, v9, :cond_a

    goto :goto_4

    :cond_a
    if-lt v8, v15, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    add-long/2addr v3, v13

    .line 50
    invoke-static {v0, v11, v12}, Lfr;->a([BJ)B

    move-result v2

    if-le v2, v10, :cond_3

    goto :goto_5

    .line 54
    :cond_c
    invoke-static {v0, v2, v3, v4, v8}, Lfw;->a([BIJI)I

    move-result v5

    goto :goto_6

    :cond_d
    if-eqz v8, :cond_10

    add-int/lit8 v1, v1, -0x2

    const/16 v8, -0x3e

    if-lt v2, v8, :cond_f

    add-long v8, v3, v6

    .line 48
    invoke-static {v0, v3, v4}, Lfr;->a([BJ)B

    move-result v2

    if-le v2, v10, :cond_e

    goto :goto_5

    :cond_e
    move-wide v3, v8

    goto/16 :goto_2

    :cond_f
    :goto_5
    const/4 v5, -0x1

    goto :goto_6

    :cond_10
    move v5, v2

    :cond_11
    :goto_6
    return v5

    :cond_12
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v3, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Array length=%d, index=%d, limit=%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
