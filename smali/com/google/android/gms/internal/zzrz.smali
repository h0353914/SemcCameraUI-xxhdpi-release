.class public Lcom/google/android/gms/internal/zzrz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/google/android/gms/internal/zzry<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final tag:I

.field protected final type:I

.field protected final zzbil:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final zzbim:Z


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzrz;->type:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzrz;->zzbil:Ljava/lang/Class;

    iput p3, p0, Lcom/google/android/gms/internal/zzrz;->tag:I

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzrz;->zzbim:Z

    return-void
.end method

.method private zzF(Ljava/util/List;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzsg;",
            ">;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/zzsg;

    iget-object v4, v3, Lcom/google/android/gms/internal/zzsg;->zzbiw:[B

    array-length v4, v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3, v0}, Lcom/google/android/gms/internal/zzrz;->zza(Lcom/google/android/gms/internal/zzsg;Ljava/util/List;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/internal/zzrz;->zzbil:Ljava/lang/Class;

    iget-object p0, p0, Lcom/google/android/gms/internal/zzrz;->zzbil:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object p0
.end method

.method private zzG(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzsg;",
            ">;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/zzsg;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzbil:Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsg;->zzbiw:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrw;->zzB([B)Lcom/google/android/gms/internal/zzrw;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrz;->zzF(Lcom/google/android/gms/internal/zzrw;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static zza(ILjava/lang/Class;J)Lcom/google/android/gms/internal/zzrz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/google/android/gms/internal/zzry<",
            "TM;>;T:",
            "Lcom/google/android/gms/internal/zzse;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Lcom/google/android/gms/internal/zzrz<",
            "TM;TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzrz;

    long-to-int p2, p2

    const/4 p3, 0x0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzrz;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method


# virtual methods
.method final zzE(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/zzsg;",
            ">;)TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrz;->zzbim:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrz;->zzF(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzrz;->zzG(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected zzF(Lcom/google/android/gms/internal/zzrw;)Ljava/lang/Object;
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrz;->zzbim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzbil:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrz;->zzbil:Ljava/lang/Class;

    :goto_0
    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/zzrz;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_1

    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/zzse;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;)V

    return-object p0

    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzse;

    iget p0, p0, Lcom/google/android/gms/internal/zzrz;->tag:I

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsh;->zzlV(I)I

    move-result p0

    invoke-virtual {p1, v1, p0}, Lcom/google/android/gms/internal/zzrw;->zza(Lcom/google/android/gms/internal/zzse;I)V

    return-object v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/gms/internal/zzrz;->type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error reading extension field"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating instance of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating instance of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method zzX(Ljava/lang/Object;)I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrz;->zzbim:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrz;->zzY(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrz;->zzZ(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected zzY(Ljava/lang/Object;)I
    .locals 4

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzrz;->zzZ(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected zzZ(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzrz;->tag:I

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsh;->zzlV(I)I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzrz;->type:I

    packed-switch v1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/gms/internal/zzrz;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/zzse;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzrx;->zzc(ILcom/google/android/gms/internal/zzse;)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/zzse;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzrx;->zzb(ILcom/google/android/gms/internal/zzse;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected zza(Lcom/google/android/gms/internal/zzsg;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzsg;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p1, Lcom/google/android/gms/internal/zzsg;->zzbiw:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/zzrw;->zzB([B)Lcom/google/android/gms/internal/zzrw;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrz;->zzF(Lcom/google/android/gms/internal/zzrw;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrx;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzrz;->zzbim:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzrz;->zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrx;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzrz;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrx;)V

    return-void
.end method

.method protected zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrx;)V
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzrz;->tag:I

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/zzrx;->zzlN(I)V

    iget v0, p0, Lcom/google/android/gms/internal/zzrz;->type:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    goto :goto_0

    :pswitch_0
    check-cast p1, Lcom/google/android/gms/internal/zzse;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzrx;->zzc(Lcom/google/android/gms/internal/zzse;)V

    return-void

    :pswitch_1
    check-cast p1, Lcom/google/android/gms/internal/zzse;

    iget p0, p0, Lcom/google/android/gms/internal/zzrz;->tag:I

    invoke-static {p0}, Lcom/google/android/gms/internal/zzsh;->zzlV(I)I

    move-result p0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzrx;->zzb(Lcom/google/android/gms/internal/zzse;)V

    const/4 p1, 0x4

    invoke-virtual {p2, p0, p1}, Lcom/google/android/gms/internal/zzrx;->zzC(II)V

    return-void

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/gms/internal/zzrz;->type:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrx;)V
    .locals 3

    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2, p2}, Lcom/google/android/gms/internal/zzrz;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzrx;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
