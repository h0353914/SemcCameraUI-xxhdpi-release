.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;
.super Ljava/lang/Object;
.source "TextureContextView.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/capturefeedback/animation/CaptureFeedbackAnimationCanvas;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationCanvas"
.end annotation


# instance fields
.field private mCanvas:Landroid/graphics/Canvas;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 168
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->mCanvas:Landroid/graphics/Canvas;

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$1;)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->mCanvas:Landroid/graphics/Canvas;

    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public drawColor(FFFF)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->mCanvas:Landroid/graphics/Canvas;

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    mul-float/2addr p2, v0

    float-to-int p2, p2

    mul-float/2addr p3, v0

    float-to-int p3, p3

    mul-float/2addr v0, p4

    float-to-int p4, v0

    .line 198
    invoke-static {p1, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 197
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public lock()Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->mCanvas:Landroid/graphics/Canvas;

    .line 172
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->mCanvas:Landroid/graphics/Canvas;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public unlock()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$AnimationCanvas;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
