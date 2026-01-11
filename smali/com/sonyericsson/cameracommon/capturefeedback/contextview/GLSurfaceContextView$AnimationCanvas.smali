.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;
.super Ljava/lang/Object;
.source "GLSurfaceContextView.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationCanvas"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    return-void
.end method


# virtual methods
.method public drawColor(FFFF)V
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fgetmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v0, v1, v1, v2}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->translate(FFF)V

    .line 442
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fgetmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4, p1}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->setColor(FFFF)V

    .line 443
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$AnimationCanvas;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fgetmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->render()V

    return-void
.end method
