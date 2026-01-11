.class Lcom/sonyericsson/android/camera/view/blur/BlurView$1;
.super Ljava/lang/Object;
.source "BlurView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/blur/BlurView;->startShowAnimation(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;)Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/blur/BlurView;

.field final synthetic val$callback:Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/blur/BlurView;Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView$1;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurView;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView$1;->val$callback:Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView$1;->val$callback:Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;->onEnd()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurView$1;->val$callback:Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;

    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;->onStart()V

    return-void
.end method
