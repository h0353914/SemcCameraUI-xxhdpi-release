.class Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Lcom/sonymobile/cameracommon/view/Notification$SceneTextAnimation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/cameracommon/view/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NoFadeoutAnimtion"
.end annotation


# instance fields
.field private mSceneTextRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/sonymobile/cameracommon/view/Notification;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/view/Notification;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->mSceneTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/view/Notification;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public create()V
    .locals 1

    .line 237
    new-instance v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;-><init>(Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;)V

    iput-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->mSceneTextRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public release()V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->mSceneTextRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/sonymobile/cameracommon/view/Notification;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public start()V
    .locals 5

    .line 254
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$200(Lcom/sonymobile/cameracommon/view/Notification;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->cancel()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    iget-object v1, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->mSceneTextRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-virtual {v2}, Lcom/sonymobile/cameracommon/view/Notification;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    .line 258
    invoke-virtual {v3}, Lcom/sonymobile/cameracommon/view/Notification;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    .line 257
    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/cameracommon/view/Notification;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 259
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonymobile/cameracommon/view/Notification;->setAnimationStatus(Z)V

    .line 260
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$000(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-static {p0}, Lcom/sonymobile/cameracommon/view/Notification;->access$100(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
