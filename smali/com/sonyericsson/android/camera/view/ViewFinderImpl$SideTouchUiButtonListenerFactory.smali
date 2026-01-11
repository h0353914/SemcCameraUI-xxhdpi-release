.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SideTouchUiButtonListenerFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 1172
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;
    .locals 1

    .line 1175
    new-instance v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory$OnScreenButtonListenerImpl;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SideTouchUiButtonListenerFactory;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonItemFactory$ButtonType;)V

    return-object v0
.end method
