.class Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;
.super Ljava/lang/Object;
.source "TouchActionTranslator.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Idle"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)V

    return-void
.end method


# virtual methods
.method public handleMotionEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$fgetmClientListener(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;)Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    const/4 v2, 0x0

    .line 263
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v1, v3, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 262
    invoke-interface {v0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$TouchActionListener;->onSingleTouched(Landroid/graphics/Point;)V

    .line 264
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    new-instance v0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleDown;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$Idle;->this$0:Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleDown;-><init>(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$SingleDown-IA;)V

    invoke-static {p1, v0}, Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;->-$$Nest$mchangeTo(Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator;Lcom/sonyericsson/cameracommon/interaction/TouchActionTranslator$InteractionState;)V

    return-void
.end method

.method public handleSingleTouchMoveEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public handleSingleTouchStopEvent(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    return-void
.end method

.method public handleTouchRotateEvent(FF)V
    .locals 0

    return-void
.end method

.method public handleTouchScaleEvent(FFF)V
    .locals 0

    return-void
.end method
