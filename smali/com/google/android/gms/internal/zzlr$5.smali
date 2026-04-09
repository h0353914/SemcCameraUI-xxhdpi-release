.class final Lcom/google/android/gms/internal/zzlr$5;
.super Lcom/google/android/gms/internal/zzlr;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlr;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzlr<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlr;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzbY(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlr$5;->zzcd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected zzcd(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzlr;->zzoq()Lcom/google/android/gms/internal/zzlr$zza;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlr$5;->zzue:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzlr$5;->zzuf:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/zzlr$zza;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
