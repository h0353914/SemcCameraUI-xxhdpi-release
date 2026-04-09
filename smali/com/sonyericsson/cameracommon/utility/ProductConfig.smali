.class public Lcom/sonyericsson/cameracommon/utility/ProductConfig;
.super Ljava/lang/Object;
.source "ProductConfig.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ProductConfig"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMountAngle(Landroid/content/Context;)I
    .locals 4

    const-string v0, "window"

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 46
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/16 v1, 0x10e

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v2

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xb4

    goto :goto_0

    :pswitch_3
    move v0, v1

    .line 65
    :goto_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 66
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 67
    iget p0, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-le p0, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 0

    .line 35
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static isTablet(Landroid/content/Context;)Z
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050008

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static shouldReverseZoomDirection(Landroid/content/Context;Z)Z
    .locals 1

    .line 76
    invoke-static {p0}, Lcom/sonyericsson/cameracommon/utility/ProductConfig;->isTablet(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method
