.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->addThumbnail(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$originalUri:Landroid/net/Uri;

.field final synthetic val$requestId:I

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

.field final synthetic val$resultCode:Z


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;IZLandroid/net/Uri;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11114
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iput p3, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$requestId:I

    iput-boolean p4, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$resultCode:Z

    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$originalUri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 11117
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 11118
    sget-object v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$44;->$SwitchMap$com$sonyericsson$cameracommon$storage$SavingTaskManager$SavedFileType:[I

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->common:Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/mediasaving/takenstatus/TakenStatusCommon;->savedFileType:Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/storage/SavingTaskManager$SavedFileType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 11130
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetCurrentLayoutPattern(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/cameracommon/viewfinder/LayoutPattern;

    move-result-object v0

    .line 11131
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;->PAUSE_RECORDING:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayoutPattern;

    if-ne v0, v1, :cond_2

    .line 11133
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->startHideThumbnail()V

    .line 11141
    :cond_2
    :goto_0
    iget v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$requestId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 11142
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$resultCode:Z

    if-eqz v0, :cond_3

    .line 11143
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->STORE_COMPLETE:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    .line 11144
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$requestId:I

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$originalUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->addContent(ILandroid/net/Uri;)V

    .line 11147
    sget-object p0, Lcom/sonyericsson/android/camera/util/PerfLog;->THUMBNAIL_SHOW:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/util/PerfLog;->transit()V

    goto :goto_1

    .line 11149
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 11150
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_1

    .line 11153
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->remove()V

    .line 11154
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 11155
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    goto :goto_1

    .line 11120
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;->savingRequest:Lcom/sonyericsson/cameracommon/storage/SavingRequest;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/storage/SavingRequest;->isFinalInSavingGroup()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 11124
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mgetBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    move-result-object v0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$35;->val$requestId:I

    .line 11125
    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->requestLastContentLoading(I)V

    :cond_6
    :goto_1
    return-void
.end method
