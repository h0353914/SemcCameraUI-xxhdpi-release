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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/CameraApplication$Pausable;",
            ">;)V"
        }
    .end annotation

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    .line 202
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

    .line 252
    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    if-nez v0, :cond_0

    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 259
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    .line 261
    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->isDelayToResume()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 262
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->setDelayToResume(Z)V

    .line 263
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/CameraActivity;->onResume()V

    .line 267
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 268
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mPausables:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;

    .line 269
    invoke-interface {p1}, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;->pause()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onActivityPreResumed(Landroid/app/Activity;)V
    .locals 2

    .line 217
    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 219
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    .line 220
    instance-of p0, p0, Lcom/sonyericsson/android/camera/CameraActivity;

    if-eqz p0, :cond_0

    .line 221
    check-cast p1, Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->setDelayToResume(Z)V

    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 229
    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraActivity;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    if-nez v0, :cond_0

    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 237
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mForegroundActivity:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraApplication$ActivityLifeCycleCallbackImpl;->mPausables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;

    .line 239
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/CameraApplication$Pausable;->resume()V

    goto :goto_0

    .line 247
    :cond_2
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
