.class public Lcom/sonyericsson/android/camera/util/capability/IntArrayListCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "IntArrayListCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
        "Ljava/util/List<",
        "[I>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[I>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/IntArrayListCapabilityItem;->getDefaultValue()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getDefaultValue()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/IntArrayListCapabilityItem;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "[I>;"
        }
    .end annotation

    .line 34
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, ""

    .line 35
    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->getIntArrayList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 38
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public write(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/IntArrayListCapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/IntArrayListCapabilityItem;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->fromIntArrayList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
