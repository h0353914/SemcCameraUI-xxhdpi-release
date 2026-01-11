.class public Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;
.super Ljava/lang/Object;
.source "ShortcutBar.java"


# static fields
.field private static sColorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f0800f6

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060088

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 32
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f0800f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f08012e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f080173

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f060089

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 38
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f080175

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f080179

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f08017c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f08017e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f080180

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f080262

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    const v1, 0x7f08025f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mContext:Landroid/content/Context;

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mPaint:Landroid/graphics/Paint;

    .line 63
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 65
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011c

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mPaint:Landroid/graphics/Paint;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 89
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011a

    .line 90
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 91
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011c

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 93
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07011d

    .line 94
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 95
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011b

    .line 96
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int v4, v0, v2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float v7, v4, v5

    int-to-float v4, v0

    int-to-float v1, v1

    div-float/2addr v1, v5

    sub-float/2addr v4, v1

    int-to-float v1, v3

    sub-float v10, v4, v1

    add-int/2addr v0, v2

    int-to-float v0, v0

    div-float v9, v0, v5

    .line 98
    iget-object v11, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mPaint:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setColor(I)V
    .locals 2

    .line 73
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->sColorMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 77
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColorFilter(I)V
    .locals 2

    .line 81
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutBar;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
