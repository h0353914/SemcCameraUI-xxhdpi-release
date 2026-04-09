.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->setupOnScreenShortcut()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 2473
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 2476
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$400(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->isUserOperable()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2479
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->exists(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 2480
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$900(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object p1

    sget-object v0, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->FRONT_PHOTO:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 2481
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object p1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget-object v2, Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;->MODE_SELECTOR:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2484
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$7;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->startReturnModeAnimation()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method
