.class Lcom/sonyericsson/android/camera/view/blur/BlurViewController$3;
.super Ljava/lang/Object;
.source "BlurViewController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/blur/BlurViewController;
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

    .line 111
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$3;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurViewController$3;->this$0:Lcom/sonyericsson/android/camera/view/blur/BlurViewController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurViewController;->hideBlurView()V

    return-void
.end method
