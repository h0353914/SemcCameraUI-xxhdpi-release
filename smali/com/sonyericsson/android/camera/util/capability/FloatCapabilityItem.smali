.class public Lcom/sonyericsson/android/camera/util/capability/FloatCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "FloatCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getDefaultValue()Ljava/lang/Float;
    .locals 0

    const/4 p0, 0x0

    .line 47
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/FloatCapabilityItem;->getDefaultValue()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Float;
    .locals 1

    .line 31
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 32
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 34
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/FloatCapabilityItem;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public write(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/FloatCapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/FloatCapabilityItem;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
