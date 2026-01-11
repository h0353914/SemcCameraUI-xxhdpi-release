.class public Lcom/sonyericsson/android/camera/setting/MruSettings;
.super Ljava/lang/Object;
.source "MruSettings.java"


# instance fields
.field private final mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "mode-shortcut"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/MruSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MruSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clearParameters(Z)V

    return-void
.end method

.method public getMode()Ljava/lang/String;
    .locals 2

    .line 38
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MruSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "MODE_SHORTCUT_ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 2

    .line 29
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MruSettings;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v0, "MODE_SHORTCUT_ID"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeString(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
