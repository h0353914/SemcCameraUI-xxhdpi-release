.class public final Lcom/google/android/gms/common/server/converter/StringToIntConverter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/common/server/response/FastJsonResponse$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
        "Lcom/google/android/gms/common/server/response/FastJsonResponse$zza<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/converter/zzb;


# instance fields
.field private final mVersionCode:I

.field private final zzagP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzagQ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzagR:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/converter/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/converter/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->CREATOR:Lcom/google/android/gms/common/server/converter/zzb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->mVersionCode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagP:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagQ:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagR:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->mVersionCode:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagP:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagQ:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagR:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzb(Ljava/util/ArrayList;)V

    return-void
.end method

.method private zzb(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;

    iget-object v1, v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->zzagS:Ljava/lang/String;

    iget v0, v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->zzagT:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic convertBack(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzb(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public describeContents()I
    .locals 0

    sget-object p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->CREATOR:Lcom/google/android/gms/common/server/converter/zzb;

    const/4 p0, 0x0

    return p0
.end method

.method getVersionCode()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->mVersionCode:I

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->CREATOR:Lcom/google/android/gms/common/server/converter/zzb;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/converter/zzb;->zza(Lcom/google/android/gms/common/server/converter/StringToIntConverter;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzb(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagQ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagP:Ljava/util/HashMap;

    const-string v0, "gms_unknown"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "gms_unknown"

    return-object p0

    :cond_0
    return-object p1
.end method

.method public zzi(Ljava/lang/String;I)Lcom/google/android/gms/common/server/converter/StringToIntConverter;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagP:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagQ:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method zzpA()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;

    iget-object v4, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter;->zzagP:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v3, v2, v4}, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public zzpB()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public zzpC()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
