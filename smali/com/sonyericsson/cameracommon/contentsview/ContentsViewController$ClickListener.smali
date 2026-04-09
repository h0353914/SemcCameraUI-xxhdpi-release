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

    .line 544
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$1;)V
    .locals 0

    .line 544
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 547
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 550
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09006f

    if-ne p1, v0, :cond_1

    .line 551
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;)Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController$OnClickThumbnailProgressListener;->onClickThumbnailProgress()V

    :cond_1
    return-void
.end method
