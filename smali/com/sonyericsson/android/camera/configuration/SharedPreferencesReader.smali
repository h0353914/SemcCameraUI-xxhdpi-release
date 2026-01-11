.class public Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;
.super Ljava/lang/Object;
.source "SharedPreferencesReader.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SharedPreferencesReader"


# instance fields
.field private mPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method


# virtual methods
.method public readBoolean(Ljava/lang/String;Z)Z
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->mPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return p2

    .line 61
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public readInt(Ljava/lang/String;I)I
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->mPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return p2

    .line 68
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public readLong(Ljava/lang/String;J)Ljava/lang/Long;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->mPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    .line 74
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 76
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    .line 77
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->mPreferences:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    return-object p2

    .line 53
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public readStringMap(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 37
    iget-object v1, p0, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->mPreferences:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/sonyericsson/android/camera/configuration/SharedPreferencesReader;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
