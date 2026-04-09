.class public Lcom/google/android/gms/auth/TokenData;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/auth/zzd;


# instance fields
.field final mVersionCode:I

.field private final zzRA:Ljava/lang/Long;

.field private final zzRB:Z

.field private final zzRC:Z

.field private final zzRD:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzRz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/auth/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/TokenData;->CREATOR:Lcom/google/android/gms/auth/zzd;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/Long;ZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/TokenData;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/auth/TokenData;->zzRz:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/auth/TokenData;->zzRA:Ljava/lang/Long;

    iput-boolean p4, p0, Lcom/google/android/gms/auth/TokenData;->zzRB:Z

    iput-boolean p5, p0, Lcom/google/android/gms/auth/TokenData;->zzRC:Z

    iput-object p6, p0, Lcom/google/android/gms/auth/TokenData;->zzRD:Ljava/util/List;

    return-void
.end method

.method public static zza(Landroid/os/Bundle;Ljava/lang/String;)Lcom/google/android/gms/auth/TokenData;
    .locals 1

    const-class v0, Lcom/google/android/gms/auth/TokenData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-class p1, Lcom/google/android/gms/auth/TokenData;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p1, "TokenData"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/TokenData;

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/google/android/gms/auth/TokenData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lcom/google/android/gms/auth/TokenData;

    iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->zzRz:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/auth/TokenData;->zzRz:Ljava/lang/String;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/auth/TokenData;->zzRA:Ljava/lang/Long;

    iget-object v2, p1, Lcom/google/android/gms/auth/TokenData;->zzRA:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/TokenData;->zzRB:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/TokenData;->zzRB:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/TokenData;->zzRC:Z

    iget-boolean v2, p1, Lcom/google/android/gms/auth/TokenData;->zzRC:Z

    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->zzRD:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/auth/TokenData;->zzRD:Ljava/util/List;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getToken()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->zzRz:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->zzRz:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/TokenData;->zzRA:Ljava/lang/Long;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/auth/TokenData;->zzRB:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/google/android/gms/auth/TokenData;->zzRC:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->zzRD:Ljava/util/List;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/zzd;->zza(Lcom/google/android/gms/auth/TokenData;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzlA()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->zzRA:Ljava/lang/Long;

    return-object p0
.end method

.method public zzlB()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/TokenData;->zzRB:Z

    return p0
.end method

.method public zzlC()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/auth/TokenData;->zzRC:Z

    return p0
.end method

.method public zzlD()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/auth/TokenData;->zzRD:Ljava/util/List;

    return-object p0
.end method
