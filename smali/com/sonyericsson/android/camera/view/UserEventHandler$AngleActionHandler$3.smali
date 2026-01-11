.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$3;
.super Ljava/lang/Object;
.source "UserEventHandler.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker$OnEventTickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->prepareSlideZooming()Z
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

    .line 2364
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$3;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V
    .locals 0

    .line 2368
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$3;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$fgetmSlideMoveRatio(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mperformSlideZooming(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;F)Z

    return-void
.end method
