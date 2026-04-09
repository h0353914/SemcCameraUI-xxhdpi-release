.class public abstract Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;
.super Landroid/os/Binder;
.source "ISysmonService.java"

# interfaces
.implements Lcom/sonyericsson/psm/sysmonservice/ISysmonService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.sonyericsson.psm.sysmonservice.ISysmonService"

.field static final TRANSACTION_getCameraLowTempBurnTimeoutSec:I = 0x3

.field static final TRANSACTION_getThermalLevelForCamera:I = 0x1

.field static final TRANSACTION_getThermalLevelForFs1seg:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    .line 18
    invoke-virtual {p0, p0, v0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonyericsson/psm/sysmonservice/ISysmonService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.sonyericsson.psm.sysmonservice.ISysmonService"

    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 75
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 67
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->getCameraLowTempBurnTimeoutSec()I

    move-result p0

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 59
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->getThermalLevelForFs1seg()I

    move-result p0

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 51
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/sonyericsson/psm/sysmonservice/ISysmonService$Stub;->getThermalLevelForCamera()I

    move-result p0

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 46
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
