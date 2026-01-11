.class public Lcom/sonyericsson/android/camera/util/capability/LongCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "LongCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getDefaultValue()Ljava/lang/Long;
    .locals 2

    const-wide/16 v0, 0x0

    .line 46
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/LongCapabilityItem;->getDefaultValue()Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .line 30
    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    .line 31
    invoke-interface {p1, p2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 33
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/util/capability/LongCapabilityItem;->read(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public write(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/LongCapabilityItem;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/LongCapabilityItem;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-interface {p1, p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method
