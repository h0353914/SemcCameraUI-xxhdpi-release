.class Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;
.super Ljava/lang/Object;
.source "CameraApplication.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ActivityLifeCycleCallbackImpl"
.end annotation


# instance fields
.field mForegroundActivity:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field mPausables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/CameraApplication$Pausable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/CameraApplication$Pausable;",
            ">;)V"
        }
    .end annotation

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    .line 200
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mPausables:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 234
    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraActivity;

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 239
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 240
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mPausables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;

    .line 241
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;->pause()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 215
    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraActivity;

    if-nez v0, :cond_0

    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mPausables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;

    .line 221
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;->resume()V

    goto :goto_0

    .line 229
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
