.class Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;
.super Landroid/os/Handler;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoaderHander"
.end annotation


# static fields
.field private static final NOTIFY_CONTENT_CREATED:I = 0x1

.field private static final NOTIFY_NO_CONTENT_LOADED:I


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;


# direct methods
.method static bridge synthetic -$$Nest$mnotifyContentLoaded(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;ILcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->notifyContentLoaded(ILcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveAllMessages(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeAllMessages()V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)V

    return-void
.end method

.method private notifyContentLoaded(ILcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)V
    .locals 2

    .line 283
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 284
    const-string v0, "notifyContentLoaded() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 287
    :cond_0
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    .line 289
    iput v1, v0, Landroid/os/Message;->what:I

    .line 290
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 292
    iput p2, v0, Landroid/os/Message;->what:I

    .line 294
    :goto_0
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 295
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private removeAllMessages()V
    .locals 1

    const/4 v0, 0x1

    .line 299
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeMessages(I)V

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->removeMessages(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 258
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 261
    const-string v0, "handleMessage for content creation."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 263
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 264
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;

    .line 266
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->-$$Nest$fgetmContent(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->-$$Nest$mremoveFuture(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;J)V

    .line 268
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->-$$Nest$fgetmContentCallback(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    move-result-object p0

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->-$$Nest$fgetmContent(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    move-result-object v1

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->-$$Nest$fgetmBitmap(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, v0, v1, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onContentCreated(ILcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 274
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoaderHander;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;->-$$Nest$fgetmContentCallback(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;)Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;

    move-result-object p0

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$ContentCreationCallback;->onNoContentLoaded()V

    :goto_0
    return-void
.end method
