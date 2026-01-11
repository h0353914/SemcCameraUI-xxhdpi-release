.class Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;
.super Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;
.source "UserEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/UserEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AngleChangeButtonProcedure"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V
    .locals 1

    .line 1356
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$TouchEventProcedure-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;-><init>(Lcom/sonyericsson/android/camera/view/UserEventHandler;)V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/graphics/Point;)V
    .locals 0

    .line 1360
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleChangeButtonProcedure;->this$0:Lcom/sonyericsson/android/camera/view/UserEventHandler;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler;->-$$Nest$fgetmAngleActionHandler(Lcom/sonyericsson/android/camera/view/UserEventHandler;)Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;->-$$Nest$mswitchFrontAngle(Lcom/sonyericsson/android/camera/view/UserEventHandler$AngleActionHandler;)V

    return-void
.end method
