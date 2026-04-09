.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;
.super Ljava/lang/Object;
.source "TextureContextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawFrameTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V
    .locals 0

    .line 118
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->lock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->clear()V

    .line 128
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$400(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 132
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    .line 133
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    .line 134
    invoke-static {v3}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$500(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->elapsedTimeMillis()J

    move-result-wide v3

    .line 132
    invoke-interface {v0, v2, v3, v4}, Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimation;->draw(Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;J)Z

    move-result v0

    xor-int/2addr v1, v0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$300(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->unlock()V

    if-eqz v1, :cond_2

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$500(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/recorder/utility/ReferenceClock;->stop()V

    .line 143
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$DrawFrameTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->access$600(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
