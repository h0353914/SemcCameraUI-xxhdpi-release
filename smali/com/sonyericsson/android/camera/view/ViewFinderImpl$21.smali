.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$21;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->getThumbnailStateListener()Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)V
    .locals 0

    .line 6367
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$21;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThumbnailClicked(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 8

    .line 6370
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$21;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 6374
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    .line 6376
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->isMediaDataVerified()Z

    move-result v7

    .line 6379
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$21;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object v2, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    iget-object v3, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    iget v4, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    iget v5, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    iget v6, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    invoke-static/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6700(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Landroid/net/Uri;Ljava/lang/String;IIIZ)V

    :cond_1
    return-void
.end method

.method public onThumbnailCreated(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V
    .locals 2

    .line 6394
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$21;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$2200(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler;->getRemainSavingPhotoRequestCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 6395
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v0, v1, :cond_2

    .line 6397
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$21;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/InstantViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6398
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$21;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6800(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/InstantViewer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/InstantViewer;->prepareBitmap(Landroid/net/Uri;)V

    .line 6400
    :cond_1
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->PREDICTIVE_CAPTURE:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v0, v1, :cond_2

    .line 6402
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$21;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPredictiveCaptureStoreInfo()Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6403
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$21;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    .line 6404
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$1000(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/controller/StateMachine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/controller/StateMachine;->getPredictiveCaptureStoreInfo()Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/PredictiveCaptureStoreInfo;->getCaptureNum()I

    move-result p0

    iput p0, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mPredictiveNum:I

    :cond_2
    return-void
.end method
