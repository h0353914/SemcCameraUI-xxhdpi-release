.class public Lcom/google/android/gms/common/stats/zzb;
.super Ljava/lang/Object;


# static fields
.field private static final zzafW:Ljava/lang/Object;

.field private static zzahE:Ljava/lang/Integer;

.field private static zzahy:Lcom/google/android/gms/common/stats/zzb;


# instance fields
.field private final zzahA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzahB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzahC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzahD:Lcom/google/android/gms/common/stats/zze;

.field private zzahF:Lcom/google/android/gms/common/stats/zze;

.field private final zzahz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzafW:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v0

    sget v1, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    if-ne v0, v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahz:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahA:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahB:Ljava/util/List;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahC:Ljava/util/List;

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzahI:Lcom/google/android/gms/internal/zzlr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlr;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahz:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzahJ:Lcom/google/android/gms/internal/zzlr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlr;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_2
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahA:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzahK:Lcom/google/android/gms/internal/zzlr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlr;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_3

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_2

    :cond_3
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahB:Ljava/util/List;

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzahL:Lcom/google/android/gms/internal/zzlr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlr;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_4

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_3

    :cond_4
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_3
    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahC:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/common/stats/zze;

    sget-object v1, Lcom/google/android/gms/common/stats/zzc$zza;->zzahM:Lcom/google/android/gms/internal/zzlr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlr;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const/16 v3, 0x400

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/stats/zze;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahD:Lcom/google/android/gms/common/stats/zze;

    new-instance v0, Lcom/google/android/gms/common/stats/zze;

    sget-object v1, Lcom/google/android/gms/common/stats/zzc$zza;->zzahM:Lcom/google/android/gms/internal/zzlr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlr;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/common/stats/zze;-><init>(IJ)V

    iput-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahF:Lcom/google/android/gms/common/stats/zze;

    return-void
.end method

.method private static getLogLevel()I
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->zzahE:Ljava/lang/Integer;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/zzmm;->zzjA()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzahH:Lcom/google/android/gms/internal/zzlr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlr;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    sget v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzahE:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzb;->zzahE:Ljava/lang/Integer;

    :cond_1
    :goto_1
    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->zzahE:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move/from16 v3, p3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v0

    sget v4, Lcom/google/android/gms/common/stats/zzd;->zzahR:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    if-eq v3, v0, :cond_0

    const/4 v0, 0x3

    const/4 v4, 0x5

    invoke-static {v0, v4}, Lcom/google/android/gms/internal/zzmy;->zzl(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    const-wide/16 v4, 0x0

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v0

    sget v6, Lcom/google/android/gms/common/stats/zzd;->zzahT:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v4

    :cond_1
    move-wide v12, v4

    const/4 v0, 0x1

    if-eq v3, v0, :cond_3

    const/4 v0, 0x4

    if-eq v3, v0, :cond_3

    const/16 v0, 0xe

    if-ne v3, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v14, Lcom/google/android/gms/common/stats/ConnectionEvent;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, v14

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v14, Lcom/google/android/gms/common/stats/ConnectionEvent;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    move-object v0, v14

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v13}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/google/android/gms/common/stats/zzd;->zzahN:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.google.android.gms.common.stats.EXTRA_LOG_EVENT"

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 10

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/zzb;->zzqi()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahD:Lcom/google/android/gms/common/stats/zze;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p5, v0, :cond_4

    const/4 v0, 0x1

    if-ne p5, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p4}, Lcom/google/android/gms/common/stats/zzb;->zzd(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_2

    const-string p0, "ConnectionTracker"

    const-string p1, "Client %s made an invalid request %s"

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p5, 0x0

    aput-object p3, p2, p5

    invoke-virtual {p4, p5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object p4, v1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzmy;->zzaq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4, v1}, Lcom/google/android/gms/common/stats/zzb;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/common/stats/zzb;->zzahD:Lcom/google/android/gms/common/stats/zze;

    invoke-virtual {v2, p2}, Lcom/google/android/gms/common/stats/zze;->zzcx(Ljava/lang/String;)Ljava/lang/Long;

    move-object v8, p4

    move-object v6, v0

    move-object v9, v1

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p4, p0, Lcom/google/android/gms/common/stats/zzb;->zzahD:Lcom/google/android/gms/common/stats/zze;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/common/stats/zze;->zzcy(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_5

    return-void

    :cond_5
    move-object v6, v1

    move-object v8, v6

    move-object v9, v8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move-object v7, p3

    invoke-direct/range {v2 .. v9}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method private zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long p0, p0

    or-long/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzahz:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/stats/zzb;->zzahA:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/common/stats/zzb;->zzahB:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/stats/zzb;->zzahC:Ljava/util/List;

    invoke-interface {p0, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/google/android/gms/common/stats/zzd;->zzahS:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private zzc(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-boolean p2, Lcom/google/android/gms/common/internal/zzd;->zzaeK:Z

    if-eqz p2, :cond_0

    const-string p2, "com.google.android.gms"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/zzmm;->zzl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzd(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/pm/ServiceInfo;
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    const/16 v1, 0x14

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v4, :cond_1

    const-string v6, "ConnectionTracker"

    const-string v7, "Multiple handlers found for this intent: %s\n Stack trace: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzmy;->zzl(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    const-string p1, "ConnectionTracker"

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "ConnectionTracker"

    const-string v6, "There are no handler of this intent: %s\n Stack trace: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzmy;->zzl(II)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static zzqh()Lcom/google/android/gms/common/stats/zzb;
    .locals 2

    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->zzafW:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/common/stats/zzb;->zzahy:Lcom/google/android/gms/common/stats/zzb;

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/common/stats/zzb;

    invoke-direct {v1}, Lcom/google/android/gms/common/stats/zzb;-><init>()V

    sput-object v1, Lcom/google/android/gms/common/stats/zzb;->zzahy:Lcom/google/android/gms/common/stats/zzb;

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/stats/zzb;->zzahy:Lcom/google/android/gms/common/stats/zzb;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private zzqi()Z
    .locals 2

    sget-boolean p0, Lcom/google/android/gms/common/internal/zzd;->zzaeK:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/stats/zzb;->getLogLevel()I

    move-result p0

    sget v1, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 6

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p0

    return p0
.end method

.method public zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .locals 6

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/common/stats/zzb;->zzc(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ConnectionTracker"

    const-string p1, "Attempted to bind to a service in a STOPPED package."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p1, p3, p4, p5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p5

    if-eqz p5, :cond_1

    invoke-direct {p0, p4}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    :cond_1
    return p5
.end method

.method public zzb(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 6

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    return-void
.end method
