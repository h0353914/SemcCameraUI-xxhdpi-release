.class public final Lcom/google/android/gms/common/stats/ConnectionEvent;
.super Lcom/google/android/gms/common/stats/zzf;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/common/stats/ConnectionEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field private final zzahn:J

.field private zzaho:I

.field private final zzahp:Ljava/lang/String;

.field private final zzahq:Ljava/lang/String;

.field private final zzahr:Ljava/lang/String;

.field private final zzahs:Ljava/lang/String;

.field private final zzaht:Ljava/lang/String;

.field private final zzahu:Ljava/lang/String;

.field private final zzahv:J

.field private final zzahw:J

.field private zzahx:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/stats/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/stats/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/stats/ConnectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/stats/zzf;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->mVersionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahn:J

    iput p4, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaho:I

    iput-object p5, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahp:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahq:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahr:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahs:Ljava/lang/String;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahx:J

    iput-object p9, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaht:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahu:Ljava/lang/String;

    iput-wide p11, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahv:J

    iput-wide p13, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahw:J

    return-void
.end method

.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 15

    const/4 v1, 0x1

    move-object v0, p0

    move-wide/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    move-wide/from16 v13, p12

    invoke-direct/range {v0 .. v14}, Lcom/google/android/gms/common/stats/ConnectionEvent;-><init>(IJILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getEventType()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaho:I

    return p0
.end method

.method public getTimeMillis()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahn:J

    return-wide v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/stats/zza;->zza(Lcom/google/android/gms/common/stats/ConnectionEvent;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzpX()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahp:Ljava/lang/String;

    return-object p0
.end method

.method public zzpY()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahq:Ljava/lang/String;

    return-object p0
.end method

.method public zzpZ()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahr:Ljava/lang/String;

    return-object p0
.end method

.method public zzqa()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahs:Ljava/lang/String;

    return-object p0
.end method

.method public zzqb()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaht:Ljava/lang/String;

    return-object p0
.end method

.method public zzqc()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahu:Ljava/lang/String;

    return-object p0
.end method

.method public zzqd()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahx:J

    return-wide v0
.end method

.method public zzqe()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahw:J

    return-wide v0
.end method

.method public zzqf()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzahv:J

    return-wide v0
.end method

.method public zzqg()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzpX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzpY()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzpZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzqa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaht:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzaht:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/stats/ConnectionEvent;->zzqe()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
