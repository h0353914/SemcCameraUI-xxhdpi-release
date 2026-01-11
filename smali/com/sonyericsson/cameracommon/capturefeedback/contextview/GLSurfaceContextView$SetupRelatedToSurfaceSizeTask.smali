.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;
.super Ljava/lang/Object;
.source "GLSurfaceContextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetupRelatedToSurfaceSizeTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getHeight()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$msetupDynamicConfig(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;II)V

    .line 213
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fgetmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$mcreateAllShaders(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    .line 216
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    new-instance v1, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    .line 217
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-direct {v1, v2, v3}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fputmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonymobile/cameracommon/opengl/SimpleFrame;)V

    .line 219
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fgetmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->setColor(FFFF)V

    .line 220
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fgetmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fgetmSimpleFrameShader(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->setShaderProgram(I)V

    .line 221
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetupRelatedToSurfaceSizeTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fgetmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->setVisibility(Z)V

    :cond_0
    return-void
.end method
