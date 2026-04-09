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

    .line 2123
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTicked(Lcom/sonyericsson/android/camera/view/UserEventHandler$VariableUserEventTicker;)V
    .locals 2

    .line 2126
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler$1;->this$1:Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    .line 2127
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$6700(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 2126
    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->access$6800(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;[Ljava/lang/Object;)Z

    return-void
.end method
