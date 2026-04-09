.class public Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzSB:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final zzSw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzSx:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private zzSy:I

.field private zzSz:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSB:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSw:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSx:Ljava/util/List;

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSy:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSz:I

    return-void
.end method

.method private zzlL()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSx:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSz:I

    if-le v1, p0, :cond_1

    new-instance p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    const-string v0, "required character count cannot be greater than the max password size"

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private zzlM()V
    .locals 7

    const/16 v0, 0x5f

    new-array v0, v0, [Z

    iget-object p0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSw:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-char v4, v1, v3

    add-int/lit8 v5, v4, -0x20

    aget-boolean v6, v0, v5

    if-eqz v6, :cond_1

    new-instance p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "character "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, " occurs in more than one required character set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v4, 0x1

    aput-boolean v4, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TreeSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " cannot be null or empty"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/util/TreeSet;

    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-char v2, p1, v1

    const/16 v3, 0x20

    const/16 v4, 0x7e

    invoke-static {v2, v3, v4}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzc(III)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " must only contain ASCII printable characters"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public zzbD(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSB:Ljava/util/TreeSet;

    const-string v1, "allowedChars"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public zzf(Ljava/lang/String;I)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;
    .locals 1

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    new-instance p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    const-string p1, "count must be at least 1"

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    const-string v0, "requiredChars"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/TreeSet;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSw:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzc(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSx:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public zzg(II)Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    const-string p1, "minimumSize must be at least 1"

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    if-le p1, p2, :cond_1

    new-instance p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    const-string p1, "maximumSize must be greater than or equal to minimumSize"

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSy:I

    iput p2, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSz:I

    return-object p0
.end method

.method public zzlK()Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSB:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;

    const-string v0, "no allowed characters specified"

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zzb;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzlL()V

    invoke-direct {p0}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzlM()V

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSB:Ljava/util/TreeSet;

    invoke-static {v1}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;->zzc(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSw:Ljava/util/List;

    iget-object v5, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSx:Ljava/util/List;

    iget v6, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSy:I

    iget v7, p0, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification$zza;->zzSz:I

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;II)V

    return-object v0
.end method
