.class public Lcom/sonyericsson/android/camera/util/capability/ResolutionDependence;
.super Ljava/lang/Object;
.source "ResolutionDependence.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ResolutionDependence"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDependOnAspect(Landroid/content/Context;)Z
    .locals 1

    .line 25
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
