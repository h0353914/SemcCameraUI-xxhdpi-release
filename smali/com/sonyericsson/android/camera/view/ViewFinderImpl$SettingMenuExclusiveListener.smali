.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SettingMenuExclusiveListener;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/SettingDialogStack$ExclusiveViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingMenuExclusiveListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 1676
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SettingMenuExclusiveListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SettingMenuExclusiveListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SettingMenuExclusiveListener;-><init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    return-void
.end method


# virtual methods
.method public isExclusiveView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1680
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$SettingMenuExclusiveListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$misExclusiveViewEvent(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
