.class public abstract Lcom/google/android/gms/common/internal/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$zzb;
.implements Lcom/google/android/gms/common/internal/zzk$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzj$zzd;,
        Lcom/google/android/gms/common/internal/zzj$zza;,
        Lcom/google/android/gms/common/internal/zzj$zzg;,
        Lcom/google/android/gms/common/internal/zzj$zzi;,
        Lcom/google/android/gms/common/internal/zzj$zzh;,
        Lcom/google/android/gms/common/internal/zzj$zzf;,
        Lcom/google/android/gms/common/internal/zzj$zzc;,
        Lcom/google/android/gms/common/internal/zzj$zzb;,
        Lcom/google/android/gms/common/internal/zzj$zze;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        "Lcom/google/android/gms/common/internal/zzk$zza;"
    }
.end annotation


# static fields
.field public static final zzafI:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final zzQd:Landroid/accounts/Account;

.field private final zzTm:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaaO:Landroid/os/Looper;

.field private final zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

.field private final zzabI:Lcom/google/android/gms/common/internal/zzf;

.field private zzafA:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzafB:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/internal/zzj<",
            "TT;>.zzc<*>;>;"
        }
    .end annotation
.end field

.field private zzafC:Lcom/google/android/gms/common/internal/zzj$zze;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/zzj<",
            "TT;>.zze;"
        }
    .end annotation
.end field

.field private zzafD:I

.field private final zzafE:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

.field private final zzafF:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

.field private final zzafG:I

.field protected zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final zzafx:Lcom/google/android/gms/common/internal/zzl;

.field private zzafy:Lcom/google/android/gms/common/internal/zzs;

.field private zzafz:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

.field private final zzpd:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/zzj;->zzafI:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzl;->zzal(Landroid/content/Context;)Lcom/google/android/gms/common/internal/zzl;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v4

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzl;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzl;Lcom/google/android/gms/common/GoogleApiAvailability;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzpd:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafB:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafD:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->mContext:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzaaO:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zzl;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafx:Lcom/google/android/gms/common/internal/zzl;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/GoogleApiAvailability;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

    new-instance p1, Lcom/google/android/gms/common/internal/zzj$zzb;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/zzj$zzb;-><init>(Lcom/google/android/gms/common/internal/zzj;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/zzj;->zzafG:I

    invoke-static {p6}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/zzf;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/zzf;->getAccount()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzQd:Landroid/accounts/Account;

    invoke-virtual {p6}, Lcom/google/android/gms/common/internal/zzf;->zzoL()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzj;->zza(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzTm:Ljava/util/Set;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/zzj;->zzafE:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/zzj;->zzafF:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafz:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzj;Lcom/google/android/gms/common/internal/zzs;)Lcom/google/android/gms/common/internal/zzs;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafy:Lcom/google/android/gms/common/internal/zzs;

    return-object p1
.end method

.method private zza(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzj;->zzb(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IInterface;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzj;->zzb(ILandroid/os/IInterface;)V

    return-void
.end method

.method private zza(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzpd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafD:I

    if-eq v1, p1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/zzj;->zzb(ILandroid/os/IInterface;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzj;IILandroid/os/IInterface;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzj;->zza(IILandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafE:Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;

    return-object p0
.end method

.method private zzb(ILandroid/os/IInterface;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-ne v2, v3, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzaa(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzpd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafD:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzj;->zzafA:Landroid/os/IInterface;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/zzj;->zzc(ILandroid/os/IInterface;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzoW()V

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzj;->zzoX()V

    goto :goto_2

    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzj;->zzoY()V

    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic zzc(Lcom/google/android/gms/common/internal/zzj;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafB:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic zzd(Lcom/google/android/gms/common/internal/zzj;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzTm:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/common/internal/zzj;)Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafF:Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;

    return-object p0
.end method

.method private zzoX()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafC:Lcom/google/android/gms/common/internal/zzj$zze;

    if-eqz v0, :cond_0

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzfK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafx:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzfK()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzafC:Lcom/google/android/gms/common/internal/zzj$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzoV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzl;->zzb(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/zzj$zze;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/common/internal/zzj$zze;-><init>(Lcom/google/android/gms/common/internal/zzj;I)V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafC:Lcom/google/android/gms/common/internal/zzj$zze;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafx:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzfK()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzafC:Lcom/google/android/gms/common/internal/zzj$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzoV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzl;->zza(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "GmsClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to connect to service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzfK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/16 v3, 0x9

    invoke-virtual {v1, v2, p0, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private zzoY()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafC:Lcom/google/android/gms/common/internal/zzj$zze;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafx:Lcom/google/android/gms/common/internal/zzl;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzfK()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzafC:Lcom/google/android/gms/common/internal/zzj$zze;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzoV()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzl;->zzb(Ljava/lang/String;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafC:Lcom/google/android/gms/common/internal/zzj$zze;

    :cond_0
    return-void
.end method


# virtual methods
.method public disconnect()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafB:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzj;->zzafB:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/zzj$zzc;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/zzj$zzc;->zzpi()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafB:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/zzj;->zzb(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzj;->zzpd:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget p4, p0, Lcom/google/android/gms/common/internal/zzj;->zzafD:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafA:Landroid/os/IInterface;

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, "mConnectState="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    packed-switch p4, :pswitch_data_0

    const-string p1, "UNKNOWN"

    :goto_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_0
    const-string p1, "DISCONNECTING"

    goto :goto_0

    :pswitch_1
    const-string p1, "CONNECTED"

    goto :goto_0

    :pswitch_2
    const-string p1, "CONNECTING"

    goto :goto_0

    :pswitch_3
    const-string p1, "DISCONNECTED"

    goto :goto_0

    :goto_1
    const-string p1, " mService="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    if-nez v0, :cond_0

    const-string p0, "null"

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzfL()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    const-string p1, "@"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getLooper()Landroid/os/Looper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzaaO:Landroid/os/Looper;

    return-object p0
.end method

.method public isConnected()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzpd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafD:I

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isConnecting()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzpd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafD:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    return-void
.end method

.method protected onConnectionSuspended(I)V
    .locals 0

    return-void
.end method

.method protected abstract zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method protected zza(ILandroid/os/Bundle;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/internal/zzj$zzi;

    invoke-direct {v2, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzj$zzi;-><init>(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/Bundle;)V

    const/4 p0, 0x5

    const/4 p1, -0x1

    invoke-virtual {v1, p0, p3, p1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zza(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/internal/zzj$zzg;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/zzj$zzg;-><init>(Lcom/google/android/gms/common/internal/zzj;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    const/4 p1, -0x1

    invoke-virtual {v1, p0, p4, p1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzx;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafz:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzj;->zzb(ILandroid/os/IInterface;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzp;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzpd()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/ValidateAccountRequest;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzTm:Ljava/util/Set;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzj;->zzTm:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/gms/common/api/Scope;

    iget-object v3, p0, Lcom/google/android/gms/common/internal/zzj;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/google/android/gms/common/internal/ValidateAccountRequest;-><init>(Lcom/google/android/gms/common/internal/zzp;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;Landroid/os/Bundle;)V

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafy:Lcom/google/android/gms/common/internal/zzs;

    new-instance v0, Lcom/google/android/gms/common/internal/zzj$zzd;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/common/internal/zzj$zzd;-><init>(Lcom/google/android/gms/common/internal/zzj;I)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/common/internal/zzs;->zza(Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/internal/ValidateAccountRequest;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "GmsClient"

    const-string v0, "Remote exception occurred"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    const-string p1, "GmsClient"

    const-string v0, "service died"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzj;->zzbE(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/internal/zzp;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/zzp;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzly()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/GetServiceRequest;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzj;->zzafG:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzcl(Ljava/lang/String;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzg(Landroid/os/Bundle;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzd(Ljava/util/Collection;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzlN()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzoI()Landroid/accounts/Account;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc(Lcom/google/android/gms/common/internal/zzp;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzpe()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzQd:Landroid/accounts/Account;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/internal/GetServiceRequest;->zzc(Landroid/accounts/Account;)Lcom/google/android/gms/common/internal/GetServiceRequest;

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafy:Lcom/google/android/gms/common/internal/zzs;

    new-instance p2, Lcom/google/android/gms/common/internal/zzj$zzd;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p2, p0, v1}, Lcom/google/android/gms/common/internal/zzj$zzd;-><init>(Lcom/google/android/gms/common/internal/zzj;I)V

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/common/internal/zzs;->zza(Lcom/google/android/gms/common/internal/zzr;Lcom/google/android/gms/common/internal/GetServiceRequest;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "GmsClient"

    const-string p2, "Remote exception occurred"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catch_1
    const-string p1, "GmsClient"

    const-string p2, "service died"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzj;->zzbE(I)V

    return-void
.end method

.method protected zzb(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public zzbE(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p0, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zzbF(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/internal/zzj$zzh;

    invoke-direct {v2, p0}, Lcom/google/android/gms/common/internal/zzj$zzh;-><init>(Lcom/google/android/gms/common/internal/zzj;)V

    const/4 p0, 0x6

    const/4 v3, -0x1

    invoke-virtual {v1, p0, p1, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected zzc(ILandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract zzfK()Ljava/lang/String;
.end method

.method protected abstract zzfL()Ljava/lang/String;
.end method

.method public zzlN()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected zzly()Landroid/os/Bundle;
    .locals 0

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    return-object p0
.end method

.method public zzmS()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public zznz()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafy:Lcom/google/android/gms/common/internal/zzs;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafy:Lcom/google/android/gms/common/internal/zzs;

    invoke-interface {p0}, Lcom/google/android/gms/common/internal/zzs;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public final zzoI()Landroid/accounts/Account;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzQd:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzQd:Landroid/accounts/Account;

    return-object p0

    :cond_0
    new-instance p0, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v1, "com.google"

    invoke-direct {p0, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected final zzoV()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzf;->zzoO()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected zzoW()V
    .locals 0

    return-void
.end method

.method public zzoZ()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzaaP:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/zzj;->zzb(ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/internal/zzj$zzf;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/zzj$zzf;-><init>(Lcom/google/android/gms/common/internal/zzj;)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafz:Lcom/google/android/gms/common/api/GoogleApiClient$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzj;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafH:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    invoke-virtual {v2, v3, p0, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/zzj$zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/zzj$zzf;-><init>(Lcom/google/android/gms/common/internal/zzj;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzj;->zza(Lcom/google/android/gms/common/api/GoogleApiClient$zza;)V

    return-void
.end method

.method protected final zzpa()Lcom/google/android/gms/common/internal/zzf;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzabI:Lcom/google/android/gms/common/internal/zzf;

    return-object p0
.end method

.method protected final zzpb()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->isConnected()Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    return-void
.end method

.method public final zzpc()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzj;->zzpd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafD:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    new-instance p0, Landroid/os/DeadObjectException;

    invoke-direct {p0}, Landroid/os/DeadObjectException;-><init>()V

    throw p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzj;->zzpb()V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzj;->zzafA:Landroid/os/IInterface;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzj;->zzafA:Landroid/os/IInterface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method protected zzpd()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public zzpe()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
