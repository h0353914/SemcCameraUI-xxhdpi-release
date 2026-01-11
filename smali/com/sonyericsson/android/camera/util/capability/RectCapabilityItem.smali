.class public Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "RectCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getDefaultValue()Landroid/graphics/Rect;
    .locals 0

    .line 49
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;->getDefaultValue()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public read(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/graphics/Rect;
    .locals 0

    .line 32
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 33
    const-string p0, ""

    invoke-interface {p1, p2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 34
    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->getRect(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    .line 36
    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    return-object p0
.end method

.method public bridge synthetic read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public write(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/RectCapabilityItem;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/SharedPrefsTranslator;->fromRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
