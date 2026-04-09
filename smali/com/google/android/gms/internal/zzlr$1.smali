.class final Lcom/google/android/gms/internal/zzlr$1;
.super Lcom/google/android/gms/internal/zzlr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlr;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzlr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlr<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlr;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzbY(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlr$1;->zzbZ(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method protected zzbZ(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzlr;->zzoq()Lcom/google/android/gms/internal/zzlr$zza;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr$1;->zzue:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlr$1;->zzuf:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/zzlr$zza;->zzb(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
