.class public Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;
.super Ljava/lang/Object;
.source "MeasurePerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$OutResultDelayTask;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;,
        Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;
    }
.end annotation


# static fields
.field private static final DEBUG_PERFORM_FILE:Ljava/lang/String; = "camera_perform.csv"

.field private static final DEBUG_PERFORM_MEM:Z = false

.field private static final DEBUG_PERFORM_TIME_TAG:Ljava/lang/String; = "VERBOSE_PERFORM_TIME_TAG"

.field private static final FILE:Ljava/lang/String; = "camera_perform.csv"

.field public static final TAG:Ljava/lang/String; = "MeasurePerformance"

.field public static final TAG_DEVICE:Ljava/lang/String; = "[DEVICE]"

.field public static final TAG_SEQ:Ljava/lang/String; = "[SEQ]"

.field public static final TAG_SHOT:Ljava/lang/String; = "[SHOT]"

.field public static final TAG_STARTUP:Ljava/lang/String; = "[START UP]"

.field public static final TAG_SURFACE:Ljava/lang/String; = "[SURFACE]"

.field public static final TAG_TASK:Ljava/lang/String; = "[TASK]"

.field private static mResourceList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;",
            ">;"
        }
    .end annotation
.end field

.field private static mTimeList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance; = null

.field private static sMemoryFlag:Z = false

.field private static sTimerFlag:Z = false


# instance fields
.field private originalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 157
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    .line 164
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "MeasurePerformance() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->init()V

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->originalTime:J

    return-void
.end method

.method private static init()V
    .locals 1

    .line 210
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 211
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private static final isLastMeasuredTime(Ljava/util/List;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;I)Z"
        }
    .end annotation

    .line 260
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 261
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 262
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 263
    iget-object v3, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    iget-object v4, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v3, v4, :cond_0

    .line 264
    iget-object v2, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    if-ne v2, v3, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static final measureResource(I)V
    .locals 5

    .line 322
    sget-boolean p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez p0, :cond_0

    return-void

    .line 326
    :cond_0
    new-instance p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 327
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    .line 329
    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    .line 332
    iput-wide v1, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 333
    iput-wide v3, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    .line 334
    sget-object v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final measureResource(Ljava/lang/String;)V
    .locals 6

    .line 339
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 343
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 344
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 345
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v2

    .line 346
    invoke-virtual {v1}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v4

    .line 348
    iput-object p0, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTag:Ljava/lang/String;

    .line 349
    iput-wide v2, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 350
    iput-wide v4, v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    .line 351
    sget-object p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V
    .locals 4

    .line 235
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 240
    new-instance v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    .line 242
    iput-object p0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 243
    iput-object p2, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    .line 244
    iput-wide v0, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    .line 245
    iput-object p1, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    .line 246
    sget-object p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 298
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_0
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    return-void
.end method

.method public static final measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 283
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_0
    invoke-static {p0, p1, p2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    return-void
.end method

.method public static final measureTimeOverwrite(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 315
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_END:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    :goto_0
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->measureTime(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;Ljava/lang/String;)V

    return-void
.end method

.method public static final outResult()V
    .locals 4

    .line 359
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-nez v0, :cond_0

    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mTimeList:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 364
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->mResourceList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string v2, ""

    .line 367
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->init()V

    .line 369
    sget-boolean v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    if-eqz v3, :cond_1

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->setResultTime(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 372
    :cond_1
    sget-boolean v0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    if-eqz v0, :cond_2

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->setResultResource(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 375
    :cond_2
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->writeFile(Ljava/lang/String;)V

    return-void
.end method

.method public static final outResultDelay(I)V
    .locals 0

    return-void
.end method

.method public static final setMemoryFlag(Z)V
    .locals 0

    .line 230
    sput-boolean p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sMemoryFlag:Z

    return-void
.end method

.method private static setResultResource(Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---Measure Resource Start---\n"

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ID,Total,Used,free\n"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 483
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 485
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-object v2, v2, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTag:Ljava/lang/String;

    .line 486
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-wide v3, v3, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mTotalMemory:J

    .line 487
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;

    iget-wide v5, v5, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureResource;->mFreeMemory:J

    sub-long v7, v3, v5

    .line 489
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p0, "---Measure Resource End---\n"

    .line 492
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static setResultTime(Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 400
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 401
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;

    const/4 v2, 0x0

    move v3, v2

    .line 402
    :goto_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object v4

    array-length v4, v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 403
    new-instance v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;

    invoke-direct {v4, v5}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;-><init>(Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$1;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---Measure Time Start---\n"

    .line 406
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "VERBOSE_PERFORM_TIME_TAGID,Time[ms],Comment\n"

    .line 407
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v4, v2

    .line 408
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 409
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 410
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    sget-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v7, v8, :cond_1

    .line 411
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v7

    aget-object v7, v0, v7

    if-nez v7, :cond_3

    .line 413
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v7

    aput-object v6, v0, v7

    goto/16 :goto_2

    .line 415
    :cond_1
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    sget-object v8, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;->MEASURE_START_OVERWRITE:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    if-ne v7, v8, :cond_2

    .line 417
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v7

    aput-object v6, v0, v7

    goto/16 :goto_2

    .line 420
    :cond_2
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v7

    aget-object v7, v0, v7

    if-eqz v7, :cond_3

    .line 421
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v7

    aget-object v7, v1, v7

    iget-object v8, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iput-object v8, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 422
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v7

    aget-object v7, v1, v7

    iget-wide v8, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    iget-wide v10, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    iget-object v12, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 423
    invoke-virtual {v12}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v12

    aget-object v12, v0, v12

    iget-wide v12, v12, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sub-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    .line 424
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v7

    aget-object v7, v1, v7

    iget v8, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    .line 425
    invoke-static {p0, v4}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->isLastMeasuredTime(Ljava/util/List;I)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "VERBOSE_PERFORM_TIME_TAG"

    .line 427
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->tag:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    .line 430
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    iget-wide v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    iget-object v9, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    .line 433
    invoke-virtual {v9}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v9

    aget-object v9, v0, v9

    iget-wide v9, v9, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sub-long/2addr v7, v9

    .line 432
    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 431
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    .line 434
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    iget-object v7, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v7}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v7

    aget-object v7, v0, v7

    iget-object v7, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    .line 437
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget-object v6, v6, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v6}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->ordinal()I

    move-result v6

    aput-object v5, v0, v6

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    const-string v0, "VERBOSE_PERFORM_TIME_TAG---Measure Time End---\n\n"

    .line 443
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "---Measure Time Dump Start---\n"

    .line 444
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ID,Type(1:Start/2:End),SytemTime,RelativeTime,Comment\n"

    .line 445
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v0, v2

    .line 446
    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 447
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;

    .line 448
    iget-object v5, v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v5}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    .line 449
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-object v5, v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->kind:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureKind;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    .line 451
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    iget-wide v5, v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    .line 453
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-wide v5, v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->time:J

    sget-object v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sInstance:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;

    iget-wide v7, v7, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->originalTime:J

    sub-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    .line 455
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    iget-object v4, v4, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureTime;->additionalInfo:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    .line 457
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 460
    :cond_5
    :goto_4
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->values()[Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    move-result-object p0

    array-length p0, p0

    if-ge v2, p0, :cond_7

    .line 461
    aget-object p0, v1, v2

    .line 462
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    if-eqz v0, :cond_6

    const-string v0, "AmountTime: "

    .line 463
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->id:Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$PerformanceIds;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " total: "

    .line 465
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", count: "

    .line 467
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget v0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", avalage: "

    .line 469
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    iget-wide v4, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->total:J

    iget p0, p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance$MeasureAmountTime;->count:I

    int-to-long v6, p0

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    .line 471
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    const-string p0, "---Measure Time Dump End---\n"

    .line 474
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final setTimerFlag(Z)V
    .locals 0

    .line 221
    sput-boolean p0, Lcom/sonyericsson/cameracommon/utility/MeasurePerformance;->sTimerFlag:Z

    return-void
.end method

.method private static writeFile(Ljava/lang/String;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 498
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "camera_perform.csv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 501
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Create output file failed"

    .line 503
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    :cond_0
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 508
    :try_start_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "camera_perform.csv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const/4 v3, 0x0

    .line 511
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 512
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception v3

    .line 508
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    .line 512
    :try_start_5
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    :cond_2
    :goto_2
    throw p0
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_3
    move-exception p0

    .line 515
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    goto :goto_3

    :catch_4
    move-exception p0

    .line 513
    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[MeasurePerformance::writeFile]:Error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v0

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    :cond_3
    :goto_3
    return-void
.end method
