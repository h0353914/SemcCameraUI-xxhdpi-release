.class Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;
.super Ljava/lang/Object;
.source "OnScreenButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$1;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 112
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_0

    const-string p1, "onLongClick()"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->EMPTY_LISTENER:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    return v1

    .line 117
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton$LongClickListener;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-interface {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonListener;->onLongPress(Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;)V

    return v1
.end method
