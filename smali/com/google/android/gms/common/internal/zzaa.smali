.class public final Lcom/google/android/gms/common/internal/zzaa;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg<",
        "Lcom/google/android/gms/common/internal/zzu;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzags:Lcom/google/android/gms/common/internal/zzaa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/common/internal/zzaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/internal/zzaa;->zzags:Lcom/google/android/gms/common/internal/zzaa;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.common.ui.SignInButtonCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Landroid/content/Context;II)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/zzg$zza;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/common/internal/zzaa;->zzags:Lcom/google/android/gms/common/internal/zzaa;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzaa;->zzc(Landroid/content/Context;II)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private zzc(Landroid/content/Context;II)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamic/zzg$zza;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzy(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzaa;->zzas(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/common/internal/zzu;

    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/gms/common/internal/zzu;->zza(Lcom/google/android/gms/dynamic/zzd;II)Lcom/google/android/gms/dynamic/zzd;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/google/android/gms/dynamic/zzg$zza;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not get button with size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " and color "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Lcom/google/android/gms/dynamic/zzg$zza;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public zzaN(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzu;
    .locals 0

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzu$zza;->zzaM(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzu;

    move-result-object p0

    return-object p0
.end method

.method public synthetic zzd(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/zzaa;->zzaN(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/zzu;

    move-result-object p0

    return-object p0
.end method
