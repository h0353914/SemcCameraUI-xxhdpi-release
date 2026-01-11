.class Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;
.super Ljava/lang/Object;
.source "ContentsViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)V
    .locals 0

    .line 581
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 584
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onClick: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 586
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->-$$Nest$fgetmClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 587
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0900a9

    if-ne p1, v0, :cond_1

    .line 588
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->-$$Nest$fgetmClickThumbnailProgressListener(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;->onClickThumbnailProgress()V

    :cond_1
    return-void
.end method
