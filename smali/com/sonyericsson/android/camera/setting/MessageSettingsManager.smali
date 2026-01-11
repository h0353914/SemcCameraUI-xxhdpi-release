.class public Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;
.super Ljava/lang/Object;
.source "MessageSettingsManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/setting/MessageSettings;


# instance fields
.field private mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field private mKeyPrefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "messages"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mKeyPrefix:Ljava/lang/String;

    return-void
.end method

.method private makeKey(Lcom/sonyericsson/android/camera/setting/MessageType;)Ljava/lang/String;
    .locals 1

    .line 35
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/MessageType;->isPrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/MessageType;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mKeyPrefix:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/MessageType;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearSavedMessageSettings()V
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clearParameters(Z)V

    return-void
.end method

.method public getDisplayCount(Lcom/sonyericsson/android/camera/setting/MessageType;)I
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->makeKey(Lcom/sonyericsson/android/camera/setting/MessageType;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z
    .locals 1

    .line 46
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->makeKey(Lcom/sonyericsson/android/camera/setting/MessageType;)Ljava/lang/String;

    move-result-object p1

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public save()V
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method

.method public setDisplayCount(Lcom/sonyericsson/android/camera/setting/MessageType;I)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->makeKey(Lcom/sonyericsson/android/camera/setting/MessageType;)Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeInt(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;Z)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->makeKey(Lcom/sonyericsson/android/camera/setting/MessageType;)Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeBoolean(Ljava/lang/String;ZZ)V

    return-void
.end method
