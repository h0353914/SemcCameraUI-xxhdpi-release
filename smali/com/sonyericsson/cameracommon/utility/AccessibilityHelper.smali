.class public Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;
.super Ljava/lang/Object;
.source "AccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AccessibilityHelper"

.field private static final sRectForHit:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->sRectForHit:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkToTouch(Landroid/view/View;II)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 164
    :cond_1
    sget-object v1, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->sRectForHit:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 166
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_2

    const-string p0, "checkToTouch: This view exists out of the parent view."

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return v0

    .line 194
    :cond_3
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_4

    .line 195
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "checkToTouch: GlobalVisibleRect = "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 196
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "checkToTouch: Point = ("

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 200
    :cond_4
    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x1

    return p0

    :cond_5
    return v0
.end method

.method public static requestAccessibilityFocus(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 3

    .line 49
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0x40

    if-eqz p1, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 52
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 53
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "Description: "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 58
    :cond_1
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_2

    .line 59
    const-string v2, "TalkingView is not found."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->i([Ljava/lang/String;)V

    .line 61
    :cond_2
    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :goto_0
    return-object p1
.end method

.method private static searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 7

    .line 92
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "searchContentDescribedView() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_8

    if-nez p1, :cond_1

    goto :goto_3

    .line 103
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 104
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 107
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_7

    .line 111
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 113
    invoke-static {v4, v1, v2}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->checkToTouch(Landroid/view/View;II)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    .line 118
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v5, :cond_3

    move-object v5, v4

    goto :goto_1

    .line 120
    :cond_3
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_4

    .line 122
    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5, p1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->searchContentDescribedView(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_5

    return-object v5

    .line 132
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_6

    .line 133
    invoke-virtual {v4}, Landroid/view/View;->isClickable()Z

    move-result v5

    if-eqz v5, :cond_6

    return-object v4

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_7
    return-object v0

    .line 96
    :cond_8
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "searchContentDescribedView : Arg is null.[viewGroup = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", event = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-object v0
.end method
