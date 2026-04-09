.class public Lcom/sonyericsson/android/camera/util/capability/ResolutionCapabilityItem;
.super Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;
.source "ResolutionCapabilityItem.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sonyericsson/android/camera/util/capability/CapabilityItem<",
        "Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;)V
    .locals 1

    const-string v0, ""

    .line 19
    invoke-direct {p0, v0, p1}, Lcom/sonyericsson/android/camera/util/capability/CapabilityItem;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getDefaultValue()Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;
    .locals 0

    .line 24
    new-instance p0, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;-><init>()V

    return-object p0
.end method

.method bridge synthetic getDefaultValue()Ljava/lang/Object;
    .locals 0

    .line 16
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/capability/ResolutionCapabilityItem;->getDefaultValue()Lcom/sonyericsson/android/camera/util/capability/ResolutionOptions;

    move-result-object p0

    return-object p0
.end method
