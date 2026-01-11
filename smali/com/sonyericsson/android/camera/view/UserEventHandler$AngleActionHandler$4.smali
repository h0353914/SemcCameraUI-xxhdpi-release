.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareJumpZooming(F)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

.field final synthetic val$stopStep:F


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2381
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    iput p2, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->val$stopStep:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V
    .locals 0

    .line 2385
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$4;->val$stopStep:F

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mperformRatioDesignationZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;I)V

    return-void
.end method
