.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;
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
    name = "ReleaseTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fgetmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fgetmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)Lcom/sonymobile/cameracommon/opengl/SimpleFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/cameracommon/opengl/SimpleFrame;->release()V

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$fputmFlashFeedback(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonymobile/cameracommon/opengl/SimpleFrame;)V

    .line 196
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$ReleaseTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->-$$Nest$mreleaseAllShaders(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    return-void
.end method
