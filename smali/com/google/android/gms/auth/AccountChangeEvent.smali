.class public Lcom/google/android/gms/auth/AccountChangeEvent;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/auth/AccountChangeEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersion:I

.field final zzRr:J

.field final zzRs:Ljava/lang/String;

.field final zzRt:I

.field final zzRu:I

.field final zzRv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/zza;

    invoke-direct {v0}, Lcom/google/android/gms/auth/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/AccountChangeEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJLjava/lang/String;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->mVersion:I

    iput-wide p2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRr:J

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRs:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRt:I

    iput p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRu:I

    iput-object p7, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRv:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->mVersion:I

    iput-wide p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRr:J

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzx;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRs:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRt:I

    iput p5, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRu:I

    iput-object p6, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lcom/google/android/gms/auth/AccountChangeEvent;

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->mVersion:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->mVersion:I

    if-ne v1, v3, :cond_1

    iget-wide v3, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRr:J

    iget-wide v5, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRr:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRs:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRs:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRt:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRt:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRu:I

    iget v3, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRu:I

    if-ne v1, v3, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRv:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRv:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/google/android/gms/common/internal/zzw;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    move v0, v2

    return v0

    :cond_2
    return v2
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRs:Ljava/lang/String;

    return-object p0
.end method

.method public getChangeData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRv:Ljava/lang/String;

    return-object p0
.end method

.method public getChangeType()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRt:I

    return p0
.end method

.method public getEventIndex()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRu:I

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->mVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRr:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRs:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRt:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRv:Ljava/lang/String;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzw;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "UNKNOWN"

    iget v1, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRt:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "RENAMED_TO"

    goto :goto_0

    :pswitch_1
    const-string v0, "RENAMED_FROM"

    goto :goto_0

    :pswitch_2
    const-string v0, "REMOVED"

    goto :goto_0

    :pswitch_3
    const-string v0, "ADDED"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccountChangeEvent {accountName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRs:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", changeType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", changeData = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRv:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", eventIndex = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/google/android/gms/auth/AccountChangeEvent;->zzRu:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/zza;->zza(Lcom/google/android/gms/auth/AccountChangeEvent;Landroid/os/Parcel;I)V

    return-void
.end method
