.class Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;
.super Ljava/lang/Object;
.source "IconTextIndicator.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->-$$Nest$fgetmText(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->-$$Nest$fgetmOrientation(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 43
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->-$$Nest$fgetmText(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->-$$Nest$fgetmText(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 45
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->-$$Nest$fgetmText(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->-$$Nest$fgetmText(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/16 v1, -0x5a

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 48
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->-$$Nest$fgetmText(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v3

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setRotation(F)V

    .line 49
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->-$$Nest$fgetmText(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 50
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->-$$Nest$fgetmText(Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method
