.class public interface abstract Lcom/sonymobile/cameracommon/evf/Evf;
.super Ljava/lang/Object;
.source "Evf.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;,
        Lcom/sonymobile/cameracommon/evf/Evf$EvfFactory;
    }
.end annotation


# virtual methods
.method public abstract asSurface()Landroid/view/Surface;
.end method

.method public abstract asView()Landroid/view/View;
.end method

.method public abstract clear()V
.end method

.method public abstract getRect()Landroid/graphics/Rect;
.end method

.method public abstract getSurfaceSize()Landroid/util/Size;
.end method

.method public abstract hide()V
.end method

.method public abstract isShown()Z
.end method

.method public abstract onCreate(Landroid/content/Context;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

.method public abstract resize(II)V
.end method

.method public abstract setFixedSurfaceSize(II)V
.end method

.method public abstract setLifeCycleCallback(Lcom/sonymobile/cameracommon/evf/Evf$LifeCycleCallback;)V
.end method

.method public abstract show()V
.end method
