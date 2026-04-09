.class abstract Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;
.super Ljava/lang/Object;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "EventDispatcher"
.end annotation


# instance fields
.field private mHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

.field private mIsRunning:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 210
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->mIsRunning:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$1;)V
    .locals 0

    .line 208
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->mHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    return-void
.end method

.method protected getHandler()Lcom/sonyericsson/android/camera/view/UserEventHandler;
    .locals 0

    .line 244
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->mHandler:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    return-object p0
.end method

.method protected isRunning()Z
    .locals 0

    .line 251
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->mIsRunning:Z

    return p0
.end method

.method protected reset()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->mIsRunning:Z

    .line 225
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->reset()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 232
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->mIsRunning:Z

    .line 233
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$EventDispatcher;->reset()V

    return-void
.end method
