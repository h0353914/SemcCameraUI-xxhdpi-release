.class public abstract Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;
.super Ljava/lang/Object;
.source "OnScreenButtonGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Item"
.end annotation


# instance fields
.field private mIsEnabled:Z

.field private final mIsSoundEffectsEnabled:Z

.field private final mOnScreenButtonListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

.field private final mOnUpdatedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;Z)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mOnScreenButtonListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    .line 67
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mIsSoundEffectsEnabled:Z

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mOnUpdatedListeners:Ljava/util/List;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mIsEnabled:Z

    return-void
.end method


# virtual methods
.method addOnUpdatedListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mOnUpdatedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mOnUpdatedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getOnScreenButtonListener()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mOnScreenButtonListener:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    return-object p0
.end method

.method public abstract getResource()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$Resource;
.end method

.method public isEnabled()Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mIsEnabled:Z

    return p0
.end method

.method public isSoundEffectsEnabled()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mIsSoundEffectsEnabled:Z

    return p0
.end method

.method notifyUpdated()V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mOnUpdatedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;

    .line 103
    invoke-interface {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;->onUpdated(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method removeOnUpdatedListener(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$OnItemUpdatedListener;)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mOnUpdatedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->mIsEnabled:Z

    .line 84
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup$Item;->notifyUpdated()V

    return-void
.end method
