.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$38;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 11498
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$38;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Float;
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    .line 11501
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11498
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$38;->get()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public reset()Ljava/lang/Float;
    .locals 0

    .line 11512
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$38;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mdisableSemiAutoControl(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V

    const/high16 p0, 0x3f000000    # 0.5f

    .line 11513
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic reset()Ljava/lang/Object;
    .locals 0

    .line 11498
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$38;->reset()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/Float;)V
    .locals 1

    .line 11506
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$38;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmStateMachine(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    sget-object v0, Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;->EVENT_ON_BRIGHTNESS_CHANGED:Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sonyericsson/android/camera/controller/StateMachine;->sendEvent(Lcom/sonyericsson/android/camera/controller/StateMachine$TransitterEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;)V
    .locals 0

    .line 11498
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$38;->set(Ljava/lang/Float;)V

    return-void
.end method
