.class public Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper$HoverEventInterceptView;
.super Landroid/widget/FrameLayout;
.source "AccessibilityHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HoverEventInterceptView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 218
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    .line 219
    invoke-static {p0, p1}, Lcom/sonyericsson/cameracommon/utility/AccessibilityHelper;->requestAccessibilityFocus(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    const/4 p0, 0x1

    return p0
.end method
