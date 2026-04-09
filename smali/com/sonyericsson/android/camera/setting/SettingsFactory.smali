.class public Lcom/sonyericsson/android/camera/setting/SettingsFactory;
.super Ljava/lang/Object;
.source "SettingsFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)Lcom/sonyericsson/android/camera/setting/StoredSettings;
    .locals 1

    .line 16
    new-instance v0, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/setting/StoredSettingsProxy;-><init>(Landroid/content/Context;Lcom/sonyericsson/cameracommon/storage/Storage;)V

    return-object v0
.end method
