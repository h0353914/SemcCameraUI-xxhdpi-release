.class Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;
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
    name = "SetInvisibleTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;-><init>(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->setVisibility(I)V

    .line 169
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView$SetInvisibleTask;->this$0:Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;->-$$Nest$fgetmScheduledFuture(Lcom/sonyericsson/cameracommon/capturefeedback/contextview/TextureContextView;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void
.end method
