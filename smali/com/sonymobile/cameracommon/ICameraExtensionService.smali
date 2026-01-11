.class public interface abstract Lcom/sonymobile/cameracommon/ICameraExtensionService;
.super Ljava/lang/Object;
.source "ICameraExtensionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/ICameraExtensionService$_Parcel;,
        Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;,
        Lcom/sonymobile/cameracommon/ICameraExtensionService$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.sonymobile.cameracommon.ICameraExtensionService"


# virtual methods
.method public abstract screenOff()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateCameraStatus(Landroid/content/ContentValues;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
