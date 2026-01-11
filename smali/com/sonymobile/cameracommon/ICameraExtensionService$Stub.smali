.class public abstract Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;
.super Landroid/os/Binder;
.source "ICameraExtensionService.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/ICameraExtensionService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/ICameraExtensionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_screenOff:I = 0x2

.field static final TRANSACTION_updateCameraStatus:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 30
    const-string v0, "com.sonymobile.cameracommon.ICameraExtensionService"

    invoke-virtual {p0, p0, v0}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/sonymobile/cameracommon/ICameraExtensionService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 41
    :cond_0
    const-string v0, "com.sonymobile.cameracommon.ICameraExtensionService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/sonymobile/cameracommon/ICameraExtensionService;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/sonymobile/cameracommon/ICameraExtensionService;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 54
    const-string v0, "com.sonymobile.cameracommon.ICameraExtensionService"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    .line 55
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-ne p1, v2, :cond_1

    .line 58
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    if-eq p1, v1, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 73
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;->screenOff()V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    :cond_3
    sget-object p1, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/sonymobile/cameracommon/ICameraExtensionService$_Parcel;->-$$Nest$smreadTypedObject(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ContentValues;

    .line 67
    invoke-virtual {p0, p1}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;->updateCameraStatus(Landroid/content/ContentValues;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1
.end method
