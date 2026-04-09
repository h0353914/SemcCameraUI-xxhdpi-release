.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OverlayControlStateListener;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverlayControlStateListener"
.end annotation


# instance fields
.field private final mKind:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;)V
    .locals 0

    .line 9997
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OverlayControlStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9998
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OverlayControlStateListener;->mKind:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    return-void
.end method


# virtual methods
.method public onValueUpdateEnd()V
    .locals 4

    .line 10008
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OverlayControlStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_CLOSED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OverlayControlStateListener;->mKind:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public onValueUpdateStart()V
    .locals 4

    .line 10003
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OverlayControlStateListener;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_DIALOG_OPENED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$OverlayControlStateListener;->mKind:Lcom/sonyericsson/android/camera/view/ViewFinder$UiComponentKind;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method
