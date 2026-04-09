.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener$1;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->onRectTouchUp(Landroid/view/View;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;)V
    .locals 0

    .line 1421
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener$1;->this$1:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFaceReflected()V
    .locals 0

    .line 1424
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener$1;->this$1:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->access$3200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onReleased()V

    return-void
.end method
