.class public interface abstract Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$OnClickButtonListener;
.super Ljava/lang/Object;
.source "TutorialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnClickButtonListener"
.end annotation


# virtual methods
.method public abstract onAccepted(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
.end method

.method public abstract onClose(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDenied(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;)V
.end method
