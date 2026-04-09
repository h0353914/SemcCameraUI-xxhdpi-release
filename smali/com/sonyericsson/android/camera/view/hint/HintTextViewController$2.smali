.class Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;
.super Ljava/lang/Object;
.source "HintTextViewController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;-><init>(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$HintTextContentListener;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$500(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$300(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$300(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    move-result-object p1

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->attachedContent:Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$300(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$TimeoutHandler;->attachedContent:Lcom/sonyericsson/android/camera/view/hint/HintTextContent;

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$400(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;Lcom/sonyericsson/android/camera/view/hint/HintTextContent;)Z

    .line 167
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController$2;->this$0:Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;->access$500(Lcom/sonyericsson/android/camera/view/hint/HintTextViewController;)Lcom/sonyericsson/android/camera/view/hint/HintTextView;

    move-result-object p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/hint/HintTextView;->setAlpha(F)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
