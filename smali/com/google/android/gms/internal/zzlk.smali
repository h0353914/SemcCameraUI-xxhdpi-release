.class public abstract Lcom/google/android/gms/internal/zzlk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlk$zza;
    }
.end annotation


# static fields
.field private static final zzacD:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzlk$zza;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlk$zza;-><init>(Lcom/google/android/gms/internal/zzlk$1;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzlk;->zzacD:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static zzoj()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzlk;->zzacD:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
