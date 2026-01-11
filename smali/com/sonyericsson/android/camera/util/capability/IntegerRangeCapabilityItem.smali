.class public Lcom/sonyericsson/android/camera/util/capability/IntegerRangeCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "IntegerRangeCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
        "Landroid/util/Range<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/util/Range;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getDefaultValue()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance p0, Landroid/util/Range;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/IntegerRangeCapabilityItem;->getDefaultValue()Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public read(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 35
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 36
    const-string p0, ""

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->getIntegerRange(Ljava/lang/String;)Landroid/util/Range;

    move-result-object p0

    return-object p0

    .line 39
    :cond_0
    new-instance p0, Landroid/util/Range;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object p0
.end method

.method public bridge synthetic read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/IntegerRangeCapabilityItem;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public write(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/IntegerRangeCapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/IntegerRangeCapabilityItem;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->fromIntegerRange(Landroid/util/Range;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
