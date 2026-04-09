.class public Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;
.super Ljava/lang/Object;
.source "SharedPreferencesAccessor.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SharedPreferencesAccessor"


# instance fields
.field private mMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mPrefixList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

.field private mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    .line 54
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 55
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    .line 56
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 62
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    .line 63
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    return-void
.end method

.method private apply(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    :cond_0
    return-void
.end method

.method public static createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 233
    sget-object v2, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterCategory:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->ordinal()I

    move-result p0

    aget p0, v2, p0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 237
    :pswitch_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    :pswitch_1
    if-eqz p2, :cond_0

    const-string p0, ""

    .line 241
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 242
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string p0, "PARAMS_"

    .line 245
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 261
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply()V
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->apply()V

    return-void
.end method

.method public clear(Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->clear()V

    .line 178
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public clearParameters(Z)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->reset()V

    .line 95
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clear(Z)V

    return-void
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public getStringMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 214
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .line 108
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 109
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 110
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readBoolean: key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 3

    .line 124
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readInt(Ljava/lang/String;I)I

    move-result p0

    .line 125
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 126
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readInt: key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 3

    .line 159
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 160
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    .line 161
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "SharedPreferencesAccessor"

    aput-object v1, p0, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readLong: key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-wide p2
.end method

.method public readParameters(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;)V"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 68
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "SharedPreferences is null."

    .line 69
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    .line 75
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadParameters: prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v2, p1, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readStringMap(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 78
    iget-object v3, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 142
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 143
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 144
    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readString: key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    invoke-static {p2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public registerKey(Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;Z)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->remove(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 173
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public setStringMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 224
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeBoolean(Ljava/lang/String;ZZ)V
    .locals 4

    .line 99
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 100
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBoolean: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeBoolean(Ljava/lang/String;Z)V

    .line 103
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeInt(Ljava/lang/String;IZ)V
    .locals 4

    .line 116
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 117
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeInt: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeInt(Ljava/lang/String;I)V

    .line 120
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeLong(Ljava/lang/String;JZ)V
    .locals 4

    .line 150
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 151
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SharedPreferencesAccessor"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeLong: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeLong(Ljava/lang/String;J)V

    .line 154
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeParameters(Z)V
    .locals 6

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 84
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 85
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeSharedPreferences: prefix: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 87
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 133
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 134
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeString: key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method
