.class Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;
.super Ljava/lang/Object;
.source "FocusRectangles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchDownAnimationForTouchFocusRect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 1708
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1711
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTouchAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 1714
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1716
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmIsFocusAnimationEnabled(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1719
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->playTouchDownAnimation(Landroid/view/View;)V

    goto :goto_0

    .line 1722
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;->this$0:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->-$$Nest$fgetmTouchAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
