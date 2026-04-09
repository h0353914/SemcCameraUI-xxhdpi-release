.class public Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;
.super Ljava/lang/Object;
.source "MessageSettingsManager.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/setting/MessageSettings;


# instance fields
.field private mAppAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field private mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field private mDefaultAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

.field private mKeyPrefix:Ljava/lang/String;

.field private mTutorialAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "com.sonyericsson.android.camera.shared_preferences"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mAppAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 34
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-direct {v0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mDefaultAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 35
    new-instance v0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const-string v1, "tutorial"

    invoke-direct {v0, p1, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mTutorialAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mKeyPrefix:Ljava/lang/String;

    return-void
.end method

.method private getAccessor(Lcom/sonyericsson/android/camera/setting/MessageType;)Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;
    .locals 1

    .line 51
    sget-object v0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager$1;->$SwitchMap$com$sonyericsson$android$camera$setting$MessageType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/MessageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 64
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mAppAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-object p0

    .line 62
    :pswitch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mTutorialAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-object p0

    .line 53
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mDefaultAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private makeKey(Lcom/sonyericsson/android/camera/setting/MessageType;)Ljava/lang/String;
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/MessageType;->isPrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/MessageType;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mKeyPrefix:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/setting/MessageType;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearSavedMessageSettings()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mAppAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clearParameters(Z)V

    .line 104
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mDefaultAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clearParameters(Z)V

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mTutorialAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clearParameters(Z)V

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    return-void
.end method

.method public getDisplayCount(Lcom/sonyericsson/android/camera/setting/MessageType;)I
    .locals 1

    .line 84
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->makeKey(Lcom/sonyericsson/android/camera/setting/MessageType;)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->getAccessor(Lcom/sonyericsson/android/camera/setting/MessageType;)Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 86
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;)Z
    .locals 1

    .line 70
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->makeKey(Lcom/sonyericsson/android/camera/setting/MessageType;)Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->getAccessor(Lcom/sonyericsson/android/camera/setting/MessageType;)Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 72
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->readBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public save()V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    return-void
.end method

.method public setDisplayCount(Lcom/sonyericsson/android/camera/setting/MessageType;I)V
    .locals 1

    .line 91
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->makeKey(Lcom/sonyericsson/android/camera/setting/MessageType;)Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->getAccessor(Lcom/sonyericsson/android/camera/setting/MessageType;)Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 93
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeInt(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setNeverShow(Lcom/sonyericsson/android/camera/setting/MessageType;Z)V
    .locals 1

    .line 77
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->makeKey(Lcom/sonyericsson/android/camera/setting/MessageType;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->getAccessor(Lcom/sonyericsson/android/camera/setting/MessageType;)Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    .line 79
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/MessageSettingsManager;->mCurrentAccessor:Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->writeBoolean(Ljava/lang/String;ZZ)V

    return-void
.end method
