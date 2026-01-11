.class Lcom/sonyericsson/android/camera/view/blur/BlurViewController$4;
.super Ljava/lang/Object;
.source "BlurViewController.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/blur/BlurViewController$AnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->showFadeInAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/blur/BlurViewController;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$4;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 1

    .line 182
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$4;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mIsAnimationEnd:Z

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 177
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$4;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->mIsAnimationEnd:Z

    return-void
.end method
