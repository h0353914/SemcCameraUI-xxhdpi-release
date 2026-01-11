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

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    .line 55
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 56
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    .line 57
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    const/4 v0, 0x0

    .line 62
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    .line 63
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    .line 64
    new-instance p1, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;-><init>(Landroid/content/SharedPreferences;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    return-void
.end method

.method private apply(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply()V

    :cond_0
    return-void
.end method

.method private commit()V
    .locals 0

    .line 197
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->commit()V

    return-void
.end method

.method public static createPrefix(Lcom/sonyericsson/android/camera/configuration/ParameterCategory;Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 241
    sget-object v1, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor$1;->$SwitchMap$com$sonyericsson$android$camera$configuration$ParameterCategory:[I

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/ParameterCategory;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    if-eqz p2, :cond_1

    .line 249
    const-string p0, ""

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 250
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 253
    :cond_1
    const-string p0, "PARAMS_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSharedPreferences(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 0

    .line 269
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public apply()V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->apply()V

    return-void
.end method

.method public clear(Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->clear()V

    if-eqz p1, :cond_0

    .line 182
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->commit()V

    :cond_0
    return-void
.end method

.method public clearParameters(Z)V
    .locals 0

    .line 95
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->reset()V

    .line 96
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->clear(Z)V

    return-void
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 0

    .line 50
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

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0

    .line 222
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 109
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readBoolean(Ljava/lang/String;Z)Z

    move-result p0

    .line 110
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_0

    .line 111
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "readBoolean: key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 1

    .line 125
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readInt(Ljava/lang/String;I)I

    move-result p0

    .line 126
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_0

    .line 127
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "readInt: key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return p0
.end method

.method public readLong(Ljava/lang/String;J)J
    .locals 1

    .line 160
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    .line 161
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 162
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "readLong: key: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, ", value: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SharedPreferencesAccessor"

    filled-new-array {p1, p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-wide p2
.end method

.method public readParameters(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            ">;)V"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 69
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 70
    const-string p0, "SharedPreferences is null."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 74
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

    .line 75
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_2

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadParameters: prefix: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {v2, p1, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readStringMap(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 79
    iget-object v3, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mReader:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 144
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p2, :cond_0

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "readString: key: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public registerKey(Ljava/lang/String;)V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mPrefixList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;Z)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->remove(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
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

    .line 232
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeBoolean(Ljava/lang/String;ZZ)V
    .locals 2

    .line 100
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeBoolean: key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeBoolean(Ljava/lang/String;Z)V

    .line 104
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeInt(Ljava/lang/String;IZ)V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeInt: key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeInt(Ljava/lang/String;I)V

    .line 121
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeLong(Ljava/lang/String;JZ)V
    .locals 2

    .line 151
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeLong: key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SharedPreferencesAccessor"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeLong(Ljava/lang/String;J)V

    .line 155
    invoke-direct {p0, p4}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeParameters(Z)V
    .locals 4

    .line 84
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

    .line 85
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "writeSharedPreferences: prefix: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 88
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mMaps:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-virtual {v2, v3, v1}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method

.method public writeString(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 134
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "writeString: key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->mWriter:Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesWriter;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-direct {p0, p3}, Lcom/sonyericsson/android/camera/setting/SharedPreferencesAccessor;->apply(Z)V

    return-void
.end method
