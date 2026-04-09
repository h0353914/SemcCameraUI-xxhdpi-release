.class public Lcom/sonyericsson/android/camera/setting/ExtraSettings;
.super Ljava/lang/Object;
.source "ExtraSettings.java"


# instance fields
.field private mSettingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->mSettingMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->mSettingMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public clearValue(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->mSettingMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getValues()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;>;"
        }
    .end annotation

    .line 34
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->mSettingMap:Ljava/util/Map;

    return-object p0
.end method

.method public set(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object p0, p0, Lcom/sonyericsson/android/camera/setting/ExtraSettings;->mSettingMap:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
