.class public Lcom/google/android/gms/common/stats/zzi;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String; = "WakeLockTracker"

.field private static zzahE:Ljava/lang/Integer;

.field private static zzaii:Lcom/google/android/gms/common/stats/zzi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/zzi;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/zzi;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zzi;->zzaii:Lcom/google/android/gms/common/stats/zzi;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getLogLevel()I
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzmm;->zzjA()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zzb;->zzahH:Lcom/google/android/gms/internal/zzlr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlr;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    sget v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    return v0
.end method

.method private static zzam(Landroid/content/Context;)Z
    .locals 1

    sget-object p0, Lcom/google/android/gms/common/stats/zzi;->zzahE:Ljava/lang/Integer;

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/stats/zzi;->getLogLevel()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/common/stats/zzi;->zzahE:Ljava/lang/Integer;

    :cond_0
    sget-object p0, Lcom/google/android/gms/common/stats/zzi;->zzahE:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    sget v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static zzqr()Lcom/google/android/gms/common/stats/zzi;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/stats/zzi;->zzaii:Lcom/google/android/gms/common/stats/zzi;

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lcom/google/android/gms/common/stats/zzi;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;J)V

    return-void
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ILjava/util/List;J)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    move/from16 v4, p3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/stats/zzi;->zzam(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/common/stats/zzi;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "missing wakeLock key. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v8, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v1, 0x7

    if-eq v1, v4, :cond_2

    const/16 v1, 0x8

    if-eq v1, v4, :cond_2

    const/16 v1, 0xa

    if-eq v1, v4, :cond_2

    const/16 v1, 0xb

    if-ne v1, v4, :cond_3

    :cond_2
    new-instance v15, Lcom/google/android/gms/common/stats/WakeLockEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzmr;->zzao(Landroid/content/Context;)I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/zzmr;->zzap(Landroid/content/Context;)F

    move-result v14

    move-object v1, v15

    move-object/from16 v5, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v12, p5

    move-object/from16 v17, v15

    move-wide/from16 v15, p8

    invoke-direct/range {v1 .. v16}, Lcom/google/android/gms/common/stats/WakeLockEvent;-><init>(JILjava/lang/String;ILjava/util/List;Ljava/lang/String;JILjava/lang/String;Ljava/lang/String;FJ)V

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    sget-object v2, Lcom/google/android/gms/common/stats/zzd;->zzahN:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    move-object/from16 v3, v17

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    sget-object v2, Lcom/google/android/gms/common/stats/zzi;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void
.end method
