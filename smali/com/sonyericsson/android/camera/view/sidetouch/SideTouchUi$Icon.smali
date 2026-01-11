.class public interface abstract Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon;
.super Ljava/lang/Object;
.source "SideTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Icon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;
    }
.end annotation


# virtual methods
.method public abstract attach(Landroid/view/ViewGroup;Landroid/graphics/Point;)Landroid/view/View;
.end method

.method public abstract detach(Landroid/view/ViewGroup;)V
.end method

.method public abstract onFocusChanged(Z)V
.end method

.method public abstract setOnDetachedListener(Lcom/sonyericsson/android/camera/view/sidetouch/SideTouchUi$Icon$OnDetachedListener;)V
.end method

.method public abstract setUiOrientation(I)V
.end method

.method public abstract show()V
.end method
