.class public final Lf;
.super La;
.source "PG"

# interfaces
.implements Lg;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.apps.gsa.publicsearch.IPublicSearchServiceSession"

    .line 1
    invoke-direct {p0, p1, v0}, La;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .locals 1

    .line 2
    invoke-virtual {p0}, La;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, La;->a(ILandroid/os/Parcel;)V

    return-void
.end method

.method public final a([BLk;)V
    .locals 1

    .line 5
    invoke-virtual {p0}, La;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 6
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 7
    invoke-static {v0, p2}, Lc;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 p1, 0x2

    .line 8
    invoke-virtual {p0, p1, v0}, La;->a(ILandroid/os/Parcel;)V

    return-void
.end method
