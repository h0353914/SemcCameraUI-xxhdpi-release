.class public final Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;
.super Ljava/lang/Object;
.source "SideTouchEmulateViewFactory.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;",
        "",
        "()V",
        "TAG",
        "",
        "create",
        "Landroid/view/View;",
        "parent",
        "Landroid/view/ViewGroup;",
        "area",
        "Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;",
        "SemcCameraUI_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

.field private static final TAG:Ljava/lang/String; = "SideTouchEmulateView"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->INSTANCE:Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)Landroid/view/View;
    .locals 4

    const-string p0, "parent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "area"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->name()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SideTouchEmulateView-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 32
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 33
    const-string p0, "Already added"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2, p2}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)V

    .line 40
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;->setTag(Ljava/lang/Object;)V

    const/16 p0, 0x66

    const/16 v2, 0xff

    .line 41
    invoke-static {p0, v2, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;->setBackgroundColor(I)V

    .line 42
    move-object p0, v0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 45
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 46
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v2, 0x14

    int-to-float v2, v2

    .line 47
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, p1

    float-to-int p1, v2

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 48
    sget-object p1, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/16 p2, 0x30

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x5

    goto :goto_1

    :cond_3
    move p2, v2

    goto :goto_1

    :cond_4
    const/16 p2, 0x50

    :cond_5
    :goto_1
    iput p2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 56
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateView;->requestLayout()V

    return-object p0
.end method
