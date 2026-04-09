.class Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;
.super Ljava/lang/Object;
.source "ContentLoader.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataLoadCompleted(IZLjava/util/LinkedList;Landroid/graphics/Bitmap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 78
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;

    move-result-object v0

    const/4 v1, 0x1

    move-object v2, p3

    move v3, p1

    move v4, p2

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;->onDataLoaded(ZLjava/util/LinkedList;IZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onDataLoadFailed(I)V
    .locals 6

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;->onDataLoaded(ZLjava/util/LinkedList;IZLandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onLoadCompleted(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Landroid/net/Uri;I)V
    .locals 0

    return-void
.end method
