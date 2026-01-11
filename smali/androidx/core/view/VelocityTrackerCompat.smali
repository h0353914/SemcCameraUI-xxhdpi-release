.class public final Landroidx/core/view/VelocityTrackerCompat;
.super Ljava/lang/Object;
.source "VelocityTrackerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/view/VelocityTrackerCompat$Api34Impl;,
        Landroidx/core/view/VelocityTrackerCompat$VelocityTrackableMotionEventAxis;
    }
.end annotation


# static fields
.field private static sFallbackTrackers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/view/VelocityTracker;",
            "Landroidx/core/view/VelocityTrackerFallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 79
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMovement(Landroid/view/VelocityTracker;Landroid/view/MotionEvent;)V
    .locals 0

    .line 278
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static clear(Landroid/view/VelocityTracker;)V
    .locals 0

    .line 211
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    .line 212
    invoke-static {p0}, Landroidx/core/view/VelocityTrackerCompat;->removeFallbackForTracker(Landroid/view/VelocityTracker;)V

    return-void
.end method

.method public static computeCurrentVelocity(Landroid/view/VelocityTracker;I)V
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 262
    invoke-static {p0, p1, v0}, Landroidx/core/view/VelocityTrackerCompat;->computeCurrentVelocity(Landroid/view/VelocityTracker;IF)V

    return-void
.end method

.method public static computeCurrentVelocity(Landroid/view/VelocityTracker;IF)V
    .locals 0

    .line 250
    invoke-virtual {p0, p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 251
    invoke-static {p0}, Landroidx/core/view/VelocityTrackerCompat;->getFallbackTrackerOrNull(Landroid/view/VelocityTracker;)Landroidx/core/view/VelocityTrackerFallback;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 253
    invoke-virtual {p0, p1, p2}, Landroidx/core/view/VelocityTrackerFallback;->computeCurrentVelocity(IF)V

    :cond_0
    return-void
.end method

.method public static getAxisVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0

    .line 146
    invoke-static {p0, p1}, Landroidx/core/view/VelocityTrackerCompat$Api34Impl;->getAxisVelocity(Landroid/view/VelocityTracker;I)F

    move-result p0

    return p0
.end method

.method public static getAxisVelocity(Landroid/view/VelocityTracker;II)F
    .locals 0

    .line 198
    invoke-static {p0, p1, p2}, Landroidx/core/view/VelocityTrackerCompat$Api34Impl;->getAxisVelocity(Landroid/view/VelocityTracker;II)F

    move-result p0

    return p0
.end method

.method private static getFallbackTrackerOrNull(Landroid/view/VelocityTracker;)Landroidx/core/view/VelocityTrackerFallback;
    .locals 1

    .line 300
    sget-object v0, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/core/view/VelocityTrackerFallback;

    return-object p0
.end method

.method public static getXVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result p0

    return p0
.end method

.method public static getYVelocity(Landroid/view/VelocityTracker;I)F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result p0

    return p0
.end method

.method public static isAxisSupported(Landroid/view/VelocityTracker;I)Z
    .locals 0

    .line 124
    invoke-static {p0, p1}, Landroidx/core/view/VelocityTrackerCompat$Api34Impl;->isAxisSupported(Landroid/view/VelocityTracker;I)Z

    move-result p0

    return p0
.end method

.method public static recycle(Landroid/view/VelocityTracker;)V
    .locals 0

    .line 229
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->recycle()V

    .line 230
    invoke-static {p0}, Landroidx/core/view/VelocityTrackerCompat;->removeFallbackForTracker(Landroid/view/VelocityTracker;)V

    return-void
.end method

.method private static removeFallbackForTracker(Landroid/view/VelocityTracker;)V
    .locals 1

    .line 295
    sget-object v0, Landroidx/core/view/VelocityTrackerCompat;->sFallbackTrackers:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
