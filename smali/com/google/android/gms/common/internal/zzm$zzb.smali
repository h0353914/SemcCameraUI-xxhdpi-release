.class final Lcom/google/android/gms/common/internal/zzm$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/zzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/internal/zzm$zzb$zza;
    }
.end annotation


# instance fields
.field private mState:I

.field private zzaeJ:Landroid/os/IBinder;

.field private zzagb:Landroid/content/ComponentName;

.field private final zzagc:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

.field private final zzagd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/content/ServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private zzage:Z

.field private final zzagf:Lcom/google/android/gms/common/internal/zzm$zza;

.field final synthetic zzagg:Lcom/google/android/gms/common/internal/zzm;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/zzm;Lcom/google/android/gms/common/internal/zzm$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagf:Lcom/google/android/gms/common/internal/zzm$zza;

    new-instance p1, Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    invoke-direct {p1, p0}, Lcom/google/android/gms/common/internal/zzm$zzb$zza;-><init>(Lcom/google/android/gms/common/internal/zzm$zzb;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagc:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagd:Ljava/util/Set;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzm$zzb;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzm$zzb;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagb:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzm$zzb;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzaeJ:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/common/internal/zzm$zzb;)Lcom/google/android/gms/common/internal/zzm$zza;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagf:Lcom/google/android/gms/common/internal/zzm$zza;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/internal/zzm$zzb;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagd:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public getBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzaeJ:Landroid/os/IBinder;

    return-object p0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagb:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    return p0
.end method

.method public isBound()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzage:Z

    return p0
.end method

.method public zza(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zzb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagf:Lcom/google/android/gms/common/internal/zzm$zza;

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/zzm$zza;->zzpm()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/String;Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagd:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Landroid/content/ServiceConnection;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagd:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public zzb(Landroid/content/ServiceConnection;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzm;->zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zzb;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/common/stats/zzb;->zzb(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagd:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzcm(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zzb;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagf:Lcom/google/android/gms/common/internal/zzm$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzm$zza;->zzpm()Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagc:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    const/16 v6, 0x81

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzage:Z

    iget-boolean p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzage:Z

    if-nez p1, :cond_0

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzm;->zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zzb;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagc:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public zzcn(Ljava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzm;->zzc(Lcom/google/android/gms/common/internal/zzm;)Lcom/google/android/gms/common/stats/zzb;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagg:Lcom/google/android/gms/common/internal/zzm;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzm;->zzb(Lcom/google/android/gms/common/internal/zzm;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagc:Lcom/google/android/gms/common/internal/zzm$zzb$zza;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/stats/zzb;->zza(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzage:Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->mState:I

    return-void
.end method

.method public zzpn()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/zzm$zzb;->zzagd:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    return p0
.end method
