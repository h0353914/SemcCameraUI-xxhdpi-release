.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;
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
    name = "SetInvisibleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setVisibility(I)V

    .line 430
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView$SetInvisibleTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/GLSurfaceContextView;->setRenderMode(I)V

    return-void
.end method
