.class final Lfr;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Z

.field public static final b:Z

.field static final c:J

.field static final d:Z

.field private static final e:Ljava/util/logging/Logger;

.field private static final f:Lsun/misc/Unsafe;

.field private static final g:Ljava/lang/Class;

.field private static final h:Z

.field private static final i:Z

.field private static final j:Lfq;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "copyMemory"

    const-class v1, Lfr;

    .line 1
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sput-object v1, Lfr;->e:Ljava/util/logging/Logger;

    .line 2
    invoke-static {}, Lfr;->a()Lsun/misc/Unsafe;

    move-result-object v1

    sput-object v1, Lfr;->f:Lsun/misc/Unsafe;

    .line 3
    sget-object v2, Lbx;->a:Ljava/lang/Class;

    sput-object v2, Lfr;->g:Ljava/lang/Class;

    .line 4
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2}, Lfr;->c(Ljava/lang/Class;)Z

    move-result v2

    sput-boolean v2, Lfr;->h:Z

    .line 5
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3}, Lfr;->c(Ljava/lang/Class;)Z

    move-result v3

    sput-boolean v3, Lfr;->i:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-static {}, Lbx;->a()Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v4, Lfp;

    .line 7
    invoke-direct {v4, v1}, Lfp;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 58
    new-instance v4, Lfo;

    .line 8
    invoke-direct {v4, v1}, Lfo;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    new-instance v4, Lfn;

    .line 9
    invoke-direct {v4, v1}, Lfn;-><init>(Lsun/misc/Unsafe;)V

    .line 7
    :cond_2
    :goto_0
    sput-object v4, Lfr;->j:Lfq;

    const-string v2, "putLong"

    const-string v3, "putInt"

    const-string v4, "putByte"

    const-string v5, "getInt"

    const-string v6, "getByte"

    const-string v7, "objectFieldOffset"

    const-string v8, "com.google.protobuf.UnsafeUtil"

    const-string v9, "platform method missing - proto runtime falling back to safer methods: "

    const-string v10, "getLong"

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v1, :cond_4

    .line 10
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-array v15, v13, [Ljava/lang/Class;

    const-class v16, Ljava/lang/reflect/Field;

    aput-object v16, v15, v14

    .line 11
    invoke-virtual {v1, v7, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v15, v12, [Ljava/lang/Class;

    const-class v16, Ljava/lang/Object;

    aput-object v16, v15, v14

    .line 12
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v13

    invoke-virtual {v1, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 13
    invoke-static {}, Lfr;->b()Ljava/lang/reflect/Field;

    move-result-object v15

    if-eqz v15, :cond_4

    .line 14
    invoke-static {}, Lbx;->a()Z

    move-result v15

    if-nez v15, :cond_3

    new-array v15, v13, [Ljava/lang/Class;

    .line 15
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v14

    invoke-virtual {v1, v6, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v15, v12, [Ljava/lang/Class;

    .line 16
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v14

    sget-object v16, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v13

    invoke-virtual {v1, v4, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v15, v13, [Ljava/lang/Class;

    .line 17
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v14

    invoke-virtual {v1, v5, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v15, v12, [Ljava/lang/Class;

    .line 18
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v14

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v13

    invoke-virtual {v1, v3, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v15, v13, [Ljava/lang/Class;

    .line 19
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v14

    invoke-virtual {v1, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v15, v12, [Ljava/lang/Class;

    .line 20
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v14

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v13

    invoke-virtual {v1, v2, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v15, v11, [Ljava/lang/Class;

    .line 21
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v14

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v13

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v12

    invoke-virtual {v1, v0, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v15, 0x5

    new-array v15, v15, [Ljava/lang/Class;

    const-class v16, Ljava/lang/Object;

    aput-object v16, v15, v14

    .line 22
    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v13

    const-class v16, Ljava/lang/Object;

    aput-object v16, v15, v12

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v11

    sget-object v16, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x4

    aput-object v16, v15, v17

    invoke-virtual {v1, v0, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    move v0, v13

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 9
    sget-object v1, Lfr;->e:Ljava/util/logging/Logger;

    .line 23
    sget-object v15, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    new-instance v11, Ljava/lang/StringBuilder;

    add-int/lit8 v12, v16, 0x47

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "supportsUnsafeByteBufferOperations"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v15, v8, v0, v11}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v0, v14

    .line 22
    :goto_1
    sput-boolean v0, Lfr;->a:Z

    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    if-eqz v0, :cond_6

    .line 24
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/Class;

    const-class v11, Ljava/lang/reflect/Field;

    aput-object v11, v1, v14

    .line 25
    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v13, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Class;

    aput-object v7, v1, v14

    const-string v7, "arrayBaseOffset"

    .line 26
    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v13, [Ljava/lang/Class;

    const-class v7, Ljava/lang/Class;

    aput-object v7, v1, v14

    const-string v7, "arrayIndexScale"

    .line 27
    invoke-virtual {v0, v7, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v7, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v7, v14

    .line 28
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v7, v13

    invoke-virtual {v0, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v5, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v5, v14

    .line 29
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v5, v13

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v1, v5, v7

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v7, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v1, v14

    .line 30
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v13

    invoke-virtual {v0, v10, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v3, v14

    .line 31
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v3, v13

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v1, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v5, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v14

    .line 32
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v13

    const-string v2, "getObject"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v14

    .line 33
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v13

    const-class v1, Ljava/lang/Object;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "putObject"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    invoke-static {}, Lbx;->a()Z

    move-result v1

    if-nez v1, :cond_5

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v14

    .line 35
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v13

    invoke-virtual {v0, v6, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v14

    .line 36
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v13

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-virtual {v0, v4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v14

    .line 37
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v13

    const-string v2, "getBoolean"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v14

    .line 38
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v13

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "putBoolean"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v14

    .line 39
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v13

    const-string v2, "getFloat"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    aput-object v1, v2, v14

    .line 40
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v2, v13

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v1, "putFloat"

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v1, v3, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v14

    .line 41
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v13

    const-string v2, "getDouble"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v14

    .line 42
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v13

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "putDouble"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_5
    move v0, v13

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 23
    sget-object v1, Lfr;->e:Ljava/util/logging/Logger;

    .line 43
    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x47

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "supportsUnsafeArrayOperations"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v8, v0, v3}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move v0, v14

    .line 42
    :goto_2
    sput-boolean v0, Lfr;->b:Z

    const-class v0, [B

    .line 44
    invoke-static {v0}, Lfr;->b(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lfr;->c:J

    .line 45
    const-class v0, [Z

    invoke-static {v0}, Lfr;->b(Ljava/lang/Class;)I

    .line 46
    invoke-static {v0}, Lfr;->d(Ljava/lang/Class;)V

    .line 47
    const-class v0, [I

    invoke-static {v0}, Lfr;->b(Ljava/lang/Class;)I

    .line 48
    invoke-static {v0}, Lfr;->d(Ljava/lang/Class;)V

    .line 49
    const-class v0, [J

    invoke-static {v0}, Lfr;->b(Ljava/lang/Class;)I

    .line 50
    invoke-static {v0}, Lfr;->d(Ljava/lang/Class;)V

    .line 51
    const-class v0, [F

    invoke-static {v0}, Lfr;->b(Ljava/lang/Class;)I

    .line 52
    invoke-static {v0}, Lfr;->d(Ljava/lang/Class;)V

    .line 53
    const-class v0, [D

    invoke-static {v0}, Lfr;->b(Ljava/lang/Class;)I

    .line 54
    invoke-static {v0}, Lfr;->d(Ljava/lang/Class;)V

    const-class v0, [Ljava/lang/Object;

    .line 55
    invoke-static {v0}, Lfr;->b(Ljava/lang/Class;)I

    const-class v0, [Ljava/lang/Object;

    .line 56
    invoke-static {v0}, Lfr;->d(Ljava/lang/Class;)V

    .line 57
    invoke-static {}, Lfr;->b()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_3

    .line 59
    :cond_7
    sget-object v1, Lfr;->j:Lfq;

    if-eqz v1, :cond_8

    .line 58
    invoke-virtual {v1, v0}, Lfq;->a(Ljava/lang/reflect/Field;)V

    .line 59
    :cond_8
    :goto_3
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_9

    goto :goto_4

    :cond_9
    move v13, v14

    :goto_4
    sput-boolean v13, Lfr;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a([BJ)B
    .locals 3

    sget-object v0, Lfr;->j:Lfq;

    sget-wide v1, Lfr;->c:J

    add-long/2addr v1, p1

    .line 82
    invoke-virtual {v0, p0, v1, v2}, Lfq;->a(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    .line 87
    invoke-virtual {v0, p0, p1, p2}, Lfq;->e(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method static a(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    .line 61
    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 62
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    .line 78
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method static a()Lsun/misc/Unsafe;
    .locals 1

    .line 90
    :try_start_0
    new-instance v0, Lfm;

    invoke-direct {v0}, Lfm;-><init>()V

    .line 91
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/Object;JB)V
    .locals 4

    long-to-int v0, p1

    not-int v0, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    const-wide/16 v1, -0x4

    and-long/2addr p1, v1

    .line 96
    invoke-static {p0, p1, p2}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    const/16 v2, 0xff

    shl-int v3, v2, v0

    not-int v3, v3

    and-int/2addr v1, v3

    and-int/2addr p3, v2

    shl-int/2addr p3, v0

    or-int/2addr p3, v1

    .line 97
    invoke-static {p0, p1, p2, p3}, Lfr;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lfr;->j:Lfq;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 100
    invoke-virtual/range {v0 .. v5}, Lfq;->a(Ljava/lang/Object;JD)V

    return-void
.end method

.method static a(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    .line 101
    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JF)V

    return-void
.end method

.method static a(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    .line 102
    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method static a(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lfr;->j:Lfq;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 103
    invoke-virtual/range {v0 .. v5}, Lfq;->a(Ljava/lang/Object;JJ)V

    return-void
.end method

.method static a(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    .line 104
    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method static a(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    .line 92
    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->a(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static a([BJB)V
    .locals 3

    sget-object v0, Lfr;->j:Lfq;

    sget-wide v1, Lfr;->c:J

    add-long/2addr v1, p1

    .line 95
    invoke-virtual {v0, p0, v1, v2, p3}, Lfq;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static b(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lfr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfr;->j:Lfq;

    .line 63
    invoke-virtual {v0, p0}, Lfq;->a(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method static b(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    .line 88
    invoke-virtual {v0, p0, p1, p2}, Lfq;->f(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static b()Ljava/lang/reflect/Field;
    .locals 3

    .line 65
    invoke-static {}, Lbx;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    .line 66
    invoke-static {v0, v1}, Lfr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    .line 67
    invoke-static {v0, v1}, Lfr;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static b(Ljava/lang/Object;JB)V
    .locals 4

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    const-wide/16 v1, -0x4

    and-long/2addr p1, v1

    .line 98
    invoke-static {p0, p1, p2}, Lfr;->a(Ljava/lang/Object;J)I

    move-result v1

    const/16 v2, 0xff

    shl-int v3, v2, v0

    not-int v3, v3

    and-int/2addr v1, v3

    and-int/2addr p3, v2

    shl-int/2addr p3, v0

    or-int/2addr p3, v1

    .line 99
    invoke-static {p0, p1, p2, p3}, Lfr;->a(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static b(Ljava/lang/Object;JZ)V
    .locals 0

    .line 93
    invoke-static {p0, p1, p2, p3}, Lfr;->a(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static c(Ljava/lang/Object;JZ)V
    .locals 0

    .line 94
    invoke-static {p0, p1, p2, p3}, Lfr;->b(Ljava/lang/Object;JB)V

    return-void
.end method

.method private static c(Ljava/lang/Class;)Z
    .locals 9

    .line 69
    const-class v0, [B

    invoke-static {}, Lbx;->a()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lfr;->g:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v2

    .line 70
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "peekLong"

    invoke-virtual {v1, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 71
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    const-string v7, "pokeLong"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 72
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v3

    const-string v7, "pokeInt"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 73
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "peekInt"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v2

    .line 74
    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "pokeByte"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v2

    const-string v7, "peekByte"

    .line 75
    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v2

    aput-object v0, v7, v6

    .line 76
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v4

    const-string v8, "pokeByteArray"

    invoke-virtual {v1, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v2

    aput-object v0, v5, v6

    .line 77
    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v3

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p0, v5, v4

    const-string p0, "peekByteArray"

    invoke-virtual {v1, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    :cond_0
    return v2
.end method

.method static c(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    .line 79
    invoke-virtual {v0, p0, p1, p2}, Lfq;->b(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method static d(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    .line 86
    invoke-virtual {v0, p0, p1, p2}, Lfq;->c(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lfr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfr;->j:Lfq;

    .line 64
    invoke-virtual {v0, p0}, Lfq;->b(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method static e(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    .line 85
    invoke-virtual {v0, p0, p1, p2}, Lfq;->d(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method static f(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    .line 89
    invoke-virtual {v0, p0, p1, p2}, Lfq;->g(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 83
    invoke-static {p0, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static h(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    .line 84
    invoke-static {p0, v0, v1}, Lfr;->a(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static i(Ljava/lang/Object;J)Z
    .locals 0

    .line 80
    invoke-static {p0, p1, p2}, Lfr;->g(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Ljava/lang/Object;J)Z
    .locals 0

    .line 81
    invoke-static {p0, p1, p2}, Lfr;->h(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
