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

    .line 307
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V

    return-void
.end method


# virtual methods
.method public onDataLoaded(ZLjava/util/LinkedList;IZLandroid/graphics/Bitmap;)V
    .locals 2
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

    .line 312
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDataLoaded() has been called. result = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , requestId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , infoList "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_3

    .line 317
    invoke-virtual {p2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    if-eqz p4, :cond_1

    .line 319
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->-$$Nest$maddLocalCache(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Ljava/util/LinkedList;)V

    .line 321
    :cond_1
    invoke-virtual {p2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean p1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    if-nez p1, :cond_2

    .line 322
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-virtual {p2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-object p1, p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    invoke-virtual {p0, p3, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->request(ILandroid/net/Uri;)V

    goto :goto_0

    .line 324
    :cond_2
    invoke-virtual {p2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory;->create(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object p1

    .line 327
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->-$$Nest$fgetmHandler(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    move-result-object p2

    new-instance p4, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p4, p0, p1, p5}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V

    invoke-static {p2, p3, p4}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->-$$Nest$mnotifyContentLoaded(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;ILcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)V

    goto :goto_0

    .line 330
    :cond_3
    const-string p1, "Loading data is failed."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    .line 331
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataCallback;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->-$$Nest$fgetmHandler(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p3, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->-$$Nest$mnotifyContentLoaded(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;ILcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)V

    :goto_0
    return-void
.end method
