.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareSideTouchZoom()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V
    .locals 0

    .line 2307
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V
    .locals 0

    .line 2310
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$fgetmSideTouchScrollDistance(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)I

    move-result p1

    .line 2311
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 2310
    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mperformZoom(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;[Ljava/lang/Object;)Z

    return-void
.end method
