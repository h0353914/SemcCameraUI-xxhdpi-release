.class public final Lcom/google/android/gms/internal/zzli;
.super Lcom/google/android/gms/common/api/GoogleApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzli$zzb;,
        Lcom/google/android/gms/internal/zzli$zza;,
        Lcom/google/android/gms/internal/zzli$zzd;,
        Lcom/google/android/gms/internal/zzli$zzc;,
        Lcom/google/android/gms/internal/zzli$zzf;,
        Lcom/google/android/gms/internal/zzli$zze;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaaM:I

.field private final zzaaO:Landroid/os/Looper;

.field private final zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

.field final zzaaQ:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzqw;",
            "Lcom/google/android/gms/internal/zzqx;",
            ">;"
        }
    .end annotation
.end field

.field final zzabI:Lcom/google/android/gms/common/internal/zzf;

.field final zzabJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzabY:Ljava/util/concurrent/locks/Condition;

.field final zzabZ:Lcom/google/android/gms/common/internal/zzk;

.field private final zzabt:Ljava/util/concurrent/locks/Lock;

.field final zzaca:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/google/android/gms/internal/zzli$zzf<",
            "*>;>;"
        }
    .end annotation
.end field

.field private volatile zzacb:Z

.field private zzacc:J

.field private zzacd:J

.field private final zzace:Lcom/google/android/gms/internal/zzli$zza;

.field zzacf:Lcom/google/android/gms/internal/zzli$zzd;

.field final zzacg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">;"
        }
    .end annotation
.end field

.field final zzach:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "*>;",
            "Lcom/google/android/gms/common/ConnectionResult;",
            ">;"
        }
    .end annotation
.end field

.field zzaci:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private volatile zzacj:Lcom/google/android/gms/internal/zzlj;

.field private zzack:Lcom/google/android/gms/common/ConnectionResult;

.field private final zzacl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzlm<",
            "*>;>;"
        }
    .end annotation
.end field

.field final zzacm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/zzli$zzf<",
            "*>;>;"
        }
    .end annotation
.end field

.field private zzacn:Lcom/google/android/gms/common/api/zza;

.field private final zzaco:Lcom/google/android/gms/internal/zzli$zze;

.field private final zzacp:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final zzacq:Lcom/google/android/gms/common/internal/zzk$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/Map;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/GoogleApiAvailability;",
            "Lcom/google/android/gms/common/api/Api$zza<",
            "+",
            "Lcom/google/android/gms/internal/zzqw;",
            "Lcom/google/android/gms/internal/zzqx;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ">;I)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v8, p2

    invoke-direct {v0}, Lcom/google/android/gms/common/api/GoogleApiClient;-><init>()V

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzaca:Ljava/util/Queue;

    const-wide/32 v1, 0x1d4c0

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzli;->zzacc:J

    const-wide/16 v1, 0x1388

    iput-wide v1, v0, Lcom/google/android/gms/internal/zzli;->zzacd:J

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzaci:Ljava/util/Set;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzack:Lcom/google/android/gms/common/ConnectionResult;

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzacl:Ljava/util/Set;

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v9, 0x2

    const/16 v2, 0x10

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v1, v2, v3, v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v1}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzacm:Ljava/util/Set;

    new-instance v1, Lcom/google/android/gms/internal/zzli$1;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzli$1;-><init>(Lcom/google/android/gms/internal/zzli;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzaco:Lcom/google/android/gms/internal/zzli$zze;

    new-instance v1, Lcom/google/android/gms/internal/zzli$2;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzli$2;-><init>(Lcom/google/android/gms/internal/zzli;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzacp:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    new-instance v1, Lcom/google/android/gms/internal/zzli$3;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzli$3;-><init>(Lcom/google/android/gms/internal/zzli;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzacq:Lcom/google/android/gms/common/internal/zzk$zza;

    move-object/from16 v10, p1

    iput-object v10, v0, Lcom/google/android/gms/internal/zzli;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/common/internal/zzk;

    iget-object v2, v0, Lcom/google/android/gms/internal/zzli;->zzacq:Lcom/google/android/gms/common/internal/zzk$zza;

    invoke-direct {v1, v8, v2}, Lcom/google/android/gms/common/internal/zzk;-><init>(Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzk$zza;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    iput-object v8, v0, Lcom/google/android/gms/internal/zzli;->zzaaO:Landroid/os/Looper;

    new-instance v1, Lcom/google/android/gms/internal/zzli$zza;

    invoke-direct {v1, v0, v8}, Lcom/google/android/gms/internal/zzli$zza;-><init>(Lcom/google/android/gms/internal/zzli;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

    move/from16 v1, p9

    iput v1, v0, Lcom/google/android/gms/internal/zzli;->zzaaM:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzabJ:Ljava/util/Map;

    iget-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzabY:Ljava/util/concurrent/locks/Condition;

    new-instance v1, Lcom/google/android/gms/internal/zzlh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzlh;-><init>(Lcom/google/android/gms/internal/zzli;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    goto :goto_0

    :cond_0
    invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    iget-object v3, v0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    goto :goto_1

    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/common/internal/zzf;->zzoM()Ljava/util/Map;

    move-result-object v11

    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lcom/google/android/gms/common/api/Api;

    move-object/from16 v14, p6

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v1, 0x0

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/internal/zzf$zza;

    iget-boolean v1, v1, Lcom/google/android/gms/common/internal/zzf$zza;->zzafk:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_3

    :cond_2
    move v1, v9

    :cond_3
    :goto_3
    iget-object v3, v0, Lcom/google/android/gms/internal/zzli;->zzabJ:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v13, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v13}, Lcom/google/android/gms/common/api/Api;->zzny()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v13}, Lcom/google/android/gms/common/api/Api;->zznw()Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v3

    iget-object v6, v0, Lcom/google/android/gms/internal/zzli;->zzacp:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-direct {v0, v13, v1}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v7

    move-object v1, v3

    move-object v3, v10

    move-object v4, v8

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/common/api/Api$zze;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/zzac;

    move-result-object v1

    goto :goto_4

    :cond_4
    invoke-virtual {v13}, Lcom/google/android/gms/common/api/Api;->zznv()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v3

    iget-object v6, v0, Lcom/google/android/gms/internal/zzli;->zzacp:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-direct {v0, v13, v1}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-result-object v7

    move-object v1, v3

    move-object v3, v10

    move-object v4, v8

    move-object/from16 v5, p3

    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/common/api/Api$zza;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v1

    :goto_4
    iget-object v2, v0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-virtual {v13}, Lcom/google/android/gms/common/api/Api;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    move-object/from16 v1, p3

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    move-object/from16 v1, p5

    iput-object v1, v0, Lcom/google/android/gms/internal/zzli;->zzaaQ:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method private resume()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->zzoc()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private static zza(Lcom/google/android/gms/common/api/Api$zza;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zza<",
            "TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")TC;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object p0

    return-object p0
.end method

.method private zza(Lcom/google/android/gms/common/api/Api;I)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;I)",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzli$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzli$4;-><init>(Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/common/api/Api;I)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/common/api/zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzacn:Lcom/google/android/gms/common/api/zza;

    return-object p0
.end method

.method private static zza(Lcom/google/android/gms/common/api/Api$zze;Ljava/lang/Object;Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/internal/zzac;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzd;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zze<",
            "TC;TO;>;",
            "Ljava/lang/Object;",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/common/internal/zzf;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
            "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
            ")",
            "Lcom/google/android/gms/common/internal/zzac;"
        }
    .end annotation

    new-instance v8, Lcom/google/android/gms/common/internal/zzac;

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$zze;->zznA()I

    move-result v3

    invoke-interface {p0, p1}, Lcom/google/android/gms/common/api/Api$zze;->zzn(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v7

    move-object v0, v8

    move-object v1, p2

    move-object v2, p3

    move-object v4, p5

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/common/internal/zzac;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/Api$zzd;)V

    return-object v8
.end method

.method private zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzlo;Z)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzlx;->zzagw:Lcom/google/android/gms/internal/zzly;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzly;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzli$7;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/google/android/gms/internal/zzli$7;-><init>(Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/internal/zzlo;ZLcom/google/android/gms/common/api/GoogleApiClient;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method private static zza(Lcom/google/android/gms/internal/zzli$zzf;Lcom/google/android/gms/common/api/zza;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzli$zzf<",
            "*>;",
            "Lcom/google/android/gms/common/api/zza;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzli$zzf;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzli$zzc;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/zzli$zzc;-><init>(Lcom/google/android/gms/internal/zzli$zzf;Lcom/google/android/gms/common/api/zza;Landroid/os/IBinder;Lcom/google/android/gms/internal/zzli$1;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/zzli$zzf;->zza(Lcom/google/android/gms/internal/zzli$zze;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/android/gms/internal/zzli$zzc;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/zzli$zzc;-><init>(Lcom/google/android/gms/internal/zzli$zzf;Lcom/google/android/gms/common/api/zza;Landroid/os/IBinder;Lcom/google/android/gms/internal/zzli$1;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/zzli$zzf;->zza(Lcom/google/android/gms/internal/zzli$zze;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/zzli$zzf;->zza(Lcom/google/android/gms/internal/zzli$zze;)V

    :catch_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/zzli$zzf;->cancel()V

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzli$zzf;->zznF()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/common/api/zza;->remove(I)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzlo;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzlo;Z)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzli;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzli;)Lcom/google/android/gms/internal/zzlj;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzli;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzli;->resume()V

    return-void
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzli;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzli;->zzod()V

    return-void
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzli;)I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/zzli;->zzaaM:I

    return p0
.end method

.method private zzod()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->zzof()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public blockingConnect()Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->connect()V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->isConnecting()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabY:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xf

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :cond_1
    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzZY:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzack:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzack:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_2

    :cond_3
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0xd

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public blockingConnect(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "blockingConnect must not be called on the UI thread"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    const-string v0, "TimeUnit must not be null"

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->connect()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->isConnecting()Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    :try_start_1
    iget-object p3, p0, Lcom/google/android/gms/internal/zzli;->zzabY:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p3, p1, p2}, Ljava/util/concurrent/locks/Condition;->awaitNanos(J)J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p3, p1, v1

    if-gtz p3, :cond_1

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xe

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xf

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->zzZY:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzack:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzack:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 p2, 0xd

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public clearDefaultAccountAndReconnect()Lcom/google/android/gms/common/api/PendingResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/PendingResult<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->isConnected()Z

    move-result v0

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/internal/zzlo;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlo;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    sget-object v2, Lcom/google/android/gms/internal/zzlx;->zzRk:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, p0, v0, v1}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/internal/zzlo;Z)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/zzli$5;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/zzli$5;-><init>(Lcom/google/android/gms/internal/zzli;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/internal/zzlo;)V

    new-instance v3, Lcom/google/android/gms/internal/zzli$6;

    invoke-direct {v3, p0, v0}, Lcom/google/android/gms/internal/zzli$6;-><init>(Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/internal/zzlo;)V

    new-instance v4, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzli;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/gms/internal/zzlx;->API:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addApi(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->addOnConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->setHandler(Landroid/os/Handler;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->build()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    return-object v0
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlj;->connect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->zzof()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlj;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "mState="

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzlj;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, " mResuming="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzli;->zzacb:Z

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mWorkQueue.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzaca:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mUnconsumedRunners.size()="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzacm:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzabJ:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api;

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/Api;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v2, v0, p2, p3, p4}, Lcom/google/android/gms/common/api/Api$zzb;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getConnectionResult(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/common/ConnectionResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)",
            "Lcom/google/android/gms/common/ConnectionResult;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->zzoc()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot invoke getConnectionResult unless GoogleApiClient is connected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zzb;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/google/android/gms/common/ConnectionResult;->zzZY:Lcom/google/android/gms/common/ConnectionResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzach:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_2
    const-string v0, "GoogleApiClientImpl"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->zzog()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requested in getConnectionResult"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not connected but is not present in the failed connections map"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was never registered with GoogleApiClient"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzaaO:Landroid/os/Looper;

    return-object p0
.end method

.method public getSessionId()I
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public hasConnectedApi(Lcom/google/android/gms/common/api/Api;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/Api$zzb;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/google/android/gms/common/api/Api$zzb;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isConnected()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    instance-of p0, p0, Lcom/google/android/gms/internal/zzlf;

    return p0
.end method

.method public isConnecting()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    instance-of p0, p0, Lcom/google/android/gms/internal/zzlg;

    return p0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzk;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)Z

    move-result p0

    return p0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzk;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Z

    move-result p0

    return p0
.end method

.method public reconnect()V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->disconnect()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->connect()V

    return-void
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzk;->registerConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public stopAutoManage(Landroid/support/v4/app/FragmentActivity;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzli;->zzaaM:I

    if-ltz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzlp;->zza(Landroid/support/v4/app/FragmentActivity;)Lcom/google/android/gms/internal/zzlp;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/internal/zzli$8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzli$8;-><init>(Lcom/google/android/gms/internal/zzli;Landroid/support/v4/app/FragmentActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    iget p0, p0, Lcom/google/android/gms/internal/zzli;->zzaaM:I

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzlp;->zzbp(I)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Called stopAutoManage but automatic lifecycle management is not enabled."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzk;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabZ:Lcom/google/android/gms/common/internal/zzk;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzk;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/common/api/Api$zzc<",
            "TC;>;)TC;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/api/Api$zzb;

    const-string p1, "Appropriate Api was not requested."

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzlb$zza<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlb$zza;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This task can not be enqueued (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlb$zza;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "GoogleApiClient is not configured to use the API required for this call."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlj;->zza(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method zza(Lcom/google/android/gms/internal/zzli$zzb;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzli$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzli$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method zza(Ljava/lang/RuntimeException;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zzli$zza;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzli$zza;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/Api;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api<",
            "*>;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Api;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzlb$zza<",
            "+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzlb$zza;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "This task can not be executed (it\'s probably a Batch or malformed)"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzx;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->zzoc()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzaca:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzaca:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzaca:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzli$zzf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzli;->zzb(Lcom/google/android/gms/internal/zzli$zzf;)V

    sget-object v1, Lcom/google/android/gms/common/api/Status;->zzabd:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzli$zzf;->zzv(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    :goto_2
    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object p1

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzlj;->zzb(Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlb$zza;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method zzb(Lcom/google/android/gms/internal/zzli$zzf;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzli$zzf<",
            "TA;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacm:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzaco:Lcom/google/android/gms/internal/zzli$zze;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/zzli$zzf;->zza(Lcom/google/android/gms/internal/zzli$zze;)V

    return-void
.end method

.method zzg(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzack:Lcom/google/android/gms/common/ConnectionResult;

    new-instance p1, Lcom/google/android/gms/internal/zzlh;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/zzlh;-><init>(Lcom/google/android/gms/internal/zzli;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    iget-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzlj;->begin()V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzabY:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method zznY()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacm:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzli$zzf;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzli$zzf;->zza(Lcom/google/android/gms/internal/zzli$zze;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzli$zzf;->zznF()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzli$zzf;->cancel()V

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/android/gms/internal/zzli$zzf;->zznJ()V

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzli$zzf;->zznx()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/api/Api$zzb;->zznz()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzacn:Lcom/google/android/gms/common/api/zza;

    invoke-static {v1, v3, v2}, Lcom/google/android/gms/internal/zzli;->zza(Lcom/google/android/gms/internal/zzli$zzf;Lcom/google/android/gms/common/api/zza;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacm:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlm;->clear()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzacl:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method zznZ()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzacg:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzb;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->disconnect()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzlm;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            ")",
            "Lcom/google/android/gms/internal/zzlm<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzlm;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzaaO:Landroid/os/Looper;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/zzlm;-><init>(Landroid/os/Looper;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/zzli;->zzacl:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method zzoa()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzlg;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzli;->zzabJ:Ljava/util/Map;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzli;->zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzli;->zzaaQ:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v7, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    iget-object v8, p0, Lcom/google/android/gms/internal/zzli;->mContext:Landroid/content/Context;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/zzlg;-><init>(Lcom/google/android/gms/internal/zzli;Lcom/google/android/gms/common/internal/zzf;Ljava/util/Map;Lcom/google/android/gms/common/GoogleApiAvailability;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlj;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabY:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzob()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->zzof()Z

    new-instance v0, Lcom/google/android/gms/internal/zzlf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlf;-><init>(Lcom/google/android/gms/internal/zzli;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacj:Lcom/google/android/gms/internal/zzlj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlj;->begin()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzabY:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/zzli;->zzabt:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method zzoc()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/zzli;->zzacb:Z

    return p0
.end method

.method zzoe()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->zzoc()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzli;->zzacb:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzacf:Lcom/google/android/gms/internal/zzli$zzd;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzli$zzd;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzli$zzd;-><init>(Lcom/google/android/gms/internal/zzli;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/zzli;->zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzll;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzll;Lcom/google/android/gms/common/GoogleApiAvailability;)Lcom/google/android/gms/internal/zzll;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzli$zzd;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzacf:Lcom/google/android/gms/internal/zzli$zzd;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/zzli$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzli;->zzacc:J

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzli$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzli$zza;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzli;->zzacd:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzli$zza;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method zzof()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzli;->zzoc()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzli;->zzacb:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzli$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzace:Lcom/google/android/gms/internal/zzli$zza;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzli$zza;->removeMessages(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacf:Lcom/google/android/gms/internal/zzli$zzd;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacf:Lcom/google/android/gms/internal/zzli$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli$zzd;->unregister()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzli;->zzacf:Lcom/google/android/gms/internal/zzli$zzd;

    :cond_1
    return v1
.end method

.method zzog()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    const-string v1, ""

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2, v3}, Lcom/google/android/gms/internal/zzli;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
