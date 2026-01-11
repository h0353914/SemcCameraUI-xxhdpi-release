.class public Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewFinderAccessorForZoomDial"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 12134
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isMenuDialogOpened()Z
    .locals 0

    .line 12140
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isMenuDialogOpened()Z

    move-result p0

    return p0
.end method

.method public isSimpleIqControlVisible()Z
    .locals 0

    .line 12147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isSimpleIqControlVisible()Z

    move-result p0

    return p0
.end method
