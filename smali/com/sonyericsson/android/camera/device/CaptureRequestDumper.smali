.class public Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;
.super Ljava/lang/Object;
.source "CaptureRequestDumper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;
    }
.end annotation


# instance fields
.field private mLast:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPrev:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private final mType:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mType:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[CaptureRequest:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mTag:Ljava/lang/String;

    return-void
.end method

.method private static convertPrimitiveArrayToObjectArray(Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 178
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 186
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p1

    .line 180
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Input array shouldn\'t be empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static flatten([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    const/16 v4, 0x2c

    .line 196
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p0, 0x5d

    .line 200
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toCaptureRequestValueString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 151
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_6

    .line 152
    instance-of p0, p1, [B

    if-eqz p0, :cond_1

    .line 153
    const-class p0, Ljava/lang/Byte;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->convertPrimitiveArrayToObjectArray(Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->flatten([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 155
    :cond_1
    instance-of p0, p1, [I

    if-eqz p0, :cond_2

    .line 156
    const-class p0, Ljava/lang/Integer;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->convertPrimitiveArrayToObjectArray(Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->flatten([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 158
    :cond_2
    instance-of p0, p1, [J

    if-eqz p0, :cond_3

    .line 159
    const-class p0, Ljava/lang/Long;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->convertPrimitiveArrayToObjectArray(Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->flatten([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 161
    :cond_3
    instance-of p0, p1, [F

    if-eqz p0, :cond_4

    .line 162
    const-class p0, Ljava/lang/Float;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->convertPrimitiveArrayToObjectArray(Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->flatten([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 164
    :cond_4
    instance-of p0, p1, [Landroid/hardware/camera2/params/MeteringRectangle;

    if-eqz p0, :cond_5

    .line 165
    check-cast p1, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->flatten([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 168
    :cond_5
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Un-supported type:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 172
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private toKeyValueMap(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CaptureRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getKeys()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 139
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CaptureRequest;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->toCaptureRequestValueString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 141
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public dump()V
    .locals 2

    .line 72
    sget-object v0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$1;->$SwitchMap$com$sonyericsson$android$camera$device$CaptureRequestDumper$Type:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mType:Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dumpDiff()V

    goto :goto_0

    .line 74
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->dumpLatest()V

    :goto_0
    return-void
.end method

.method public dumpDiff()V
    .locals 7

    .line 106
    monitor-enter p0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mPrev:Ljava/util/Map;

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mLast:Ljava/util/Map;

    .line 109
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    if-eqz v0, :cond_0

    .line 114
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz v1, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 120
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "== DIFF =="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 121
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v0, :cond_3

    move-object v5, v4

    goto :goto_1

    .line 122
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_1
    if-nez v1, :cond_4

    goto :goto_2

    .line 123
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_2
    if-eqz v4, :cond_5

    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 126
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-eqz v5, :cond_2

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mTag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is removed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-void

    :catchall_0
    move-exception v0

    .line 109
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dumpLatest()V
    .locals 4

    .line 90
    monitor-enter p0

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mLast:Ljava/util/Map;

    .line 92
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "== LAST =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 95
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 92
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public update(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1

    .line 62
    monitor-enter p0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mLast:Ljava/util/Map;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mPrev:Ljava/util/Map;

    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->toKeyValueMap(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CaptureRequestDumper;->mLast:Ljava/util/Map;

    .line 65
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
