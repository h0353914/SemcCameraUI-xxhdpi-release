.class Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;
.super Ljava/lang/Object;
.source "ContentLoader.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/storage/DataLoader$DataLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$1;)V
    .locals 0

    .line 302
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V

    return-void
.end method


# virtual methods
.method public onDataLoaded(ZLjava/util/LinkedList;IZLandroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/LinkedList<",
            "Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;",
            ">;IZ",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 307
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataLoaded() has been called. result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , requestId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_3

    .line 312
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p4, :cond_1

    .line 314
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$800(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Ljava/util/LinkedList;)V

    .line 316
    :cond_1
    invoke-virtual {p2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean p1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    if-nez p1, :cond_2

    .line 317
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-virtual {p0, p3, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    goto :goto_0

    .line 319
    :cond_2
    invoke-virtual {p2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory;->create(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object p1

    .line 322
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$900(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    move-result-object p2

    new-instance p4, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p4, p0, p1, p5}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V

    invoke-static {p2, p3, p4}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->access$1000(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;ILcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)V

    goto :goto_0

    :cond_3
    const-string p1, "Loading data is failed."

    .line 325
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 326
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->access$900(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p3, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->access$1000(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;ILcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)V

    :goto_0
    return-void
.end method
