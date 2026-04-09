.class public Lcom/google/android/gms/common/zzd;
.super Ljava/lang/Object;


# static fields
.field private static final zzaas:Lcom/google/android/gms/common/zzd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/common/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/zzd;->zzaas:Lcom/google/android/gms/common/zzd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zza(Landroid/content/pm/PackageInfo;Z)Z
    .locals 2

    iget-object p0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    new-instance p0, Lcom/google/android/gms/common/zzc$zzb;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/zzc$zzb;-><init>([B)V

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/google/android/gms/common/zzc;->zznp()Ljava/util/Set;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/common/zzc;->zznq()Ljava/util/Set;

    move-result-object p1

    :goto_0
    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "GoogleSignatureVerifier"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Signature not valid.  Found: \n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzc$zza;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method public static zznu()Lcom/google/android/gms/common/zzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/zzd;->zzaas:Lcom/google/android/gms/common/zzd;

    return-object v0
.end method


# virtual methods
.method varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzc$zza;)Lcom/google/android/gms/common/zzc$zza;
    .locals 3

    iget-object p0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length p0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_0

    const-string p0, "GoogleSignatureVerifier"

    const-string p1, "Package has more than one signature."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    new-instance p0, Lcom/google/android/gms/common/zzc$zzb;

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/zzc$zzb;-><init>([B)V

    move p1, v1

    :goto_0
    array-length v2, p2

    if-ge p1, v2, :cond_2

    aget-object v2, p2, p1

    invoke-virtual {v2, p0}, Lcom/google/android/gms/common/zzc$zza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object p0, p2, p1

    return-object p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    const-string p1, "GoogleSignatureVerifier"

    const/4 p2, 0x2

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "GoogleSignatureVerifier"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature not valid.  Found: \n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/zzc$zza;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v0
.end method

.method public zza(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->zzc(Landroid/content/pm/PackageManager;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/common/zzd;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    return p0

    :cond_1
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/zzd;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0, p2, v1}, Lcom/google/android/gms/common/zzd;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "GoogleSignatureVerifier"

    const-string p2, "Test-keys aren\'t accepted on this build."

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p1
.end method

.method public zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 1

    const/16 v0, 0x40

    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/zzd;->zza(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0

    :catch_0
    const-string p0, "GoogleSignatureVerifier"

    const/4 p1, 0x3

    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "GoogleSignatureVerifier"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package manager can\'t find package "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", defaulting to false"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
