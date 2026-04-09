.class Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;
.super Ljava/lang/Object;
.source "Notification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->create()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;


# direct methods
.method constructor <init>(Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;)V
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;->this$1:Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;->this$1:Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$000(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;->this$1:Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    iget-object v0, v0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/view/Notification;->access$100(Lcom/sonymobile/cameracommon/view/Notification;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion$1;->this$1:Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;

    iget-object p0, p0, Lcom/sonymobile/cameracommon/view/Notification$NoFadeoutAnimtion;->this$0:Lcom/sonymobile/cameracommon/view/Notification;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonymobile/cameracommon/view/Notification;->setAnimationStatus(Z)V

    return-void
.end method
