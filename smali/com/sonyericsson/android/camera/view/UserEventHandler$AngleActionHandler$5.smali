.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->switchFrontAngle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mCount:I

.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

.field final synthetic val$newAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2572
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;->val$newAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2573
    iput p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;->mCount:I

    return-void
.end method


# virtual methods
.method public onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V
    .locals 2

    .line 2576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;->val$newAngle:Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mperformFrontAngleChange(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;Lcom/sonyericsson/android/camera/configuration/parameters/FrontAngle;)Z

    .line 2577
    iget v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;->mCount:I

    if-gtz v0, :cond_0

    .line 2579
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;->stop()V

    .line 2580
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$5;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mfinishZoom(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)Z

    :cond_0
    return-void
.end method
