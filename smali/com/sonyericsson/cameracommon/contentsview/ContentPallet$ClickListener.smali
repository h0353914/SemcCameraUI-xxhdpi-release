.class Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;
.super Ljava/lang/Object;
.source "ContentPallet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->-$$Nest$fgetcurTime(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 292
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->-$$Nest$fgetmContent(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->-$$Nest$fgetmThumbnailStateListener(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 293
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->-$$Nest$fgetmThumbnailStateListener(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->-$$Nest$fgetmContent(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;->onThumbnailClicked(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;)V

    :cond_0
    return-void
.end method
