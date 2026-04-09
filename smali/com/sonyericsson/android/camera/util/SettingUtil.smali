.class public Lcom/sonyericsson/android/camera/util/SettingUtil;
.super Ljava/lang/Object;
.source "SettingUtil.java"


# static fields
.field private static final SYSTEM_SETTING_SIDE_TOUCH:Ljava/lang/String; = "somc.side_sense"

.field public static final TAG:Ljava/lang/String; = "SettingUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSideSenseEnabled(Z)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 29
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSideTouchSupported()Z

    move-result p0

    if-nez p0, :cond_0

    return v0

    .line 33
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/CameraApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "somc.side_sense"

    .line 34
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method
