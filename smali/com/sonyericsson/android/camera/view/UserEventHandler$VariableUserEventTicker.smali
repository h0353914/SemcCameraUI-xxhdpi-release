.class Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableUserEventTicker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;
    }
.end annotation


# static fields
.field private static final INTERVAL_30_FPS:I = 0x21


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mInterval:I

.field private mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .locals 0

    .line 2321
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;-><init>()V

    return-void
.end method

.method private postSchedule(J)V
    .locals 1

    .line 2341
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;

    if-nez v0, :cond_0

    return-void

    .line 2344
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 2345
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mHandler:Landroid/os/Handler;

    .line 2347
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2348
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 2353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2355
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;

    invoke-interface {v2, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;->onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V

    .line 2358
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    .line 2359
    iget v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mInterval:I

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    int-to-long v0, v1

    .line 2360
    :goto_0
    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->postSchedule(J)V

    return-void
.end method

.method start(ILcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;)V
    .locals 0

    .line 2330
    iput p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mInterval:I

    .line 2331
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;

    const-wide/16 p1, 0x0

    .line 2332
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->postSchedule(J)V

    return-void
.end method

.method stop()V
    .locals 1

    .line 2336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2337
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->mOnTickingListener:Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;

    return-void
.end method
