.class Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageLoaderTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final THREAD_NAME:Ljava/lang/String; = "AppsUi#AsyncTask"


# instance fields
.field private final imageHeight:I

.field private final imageUri:Ljava/lang/String;

.field private final imageViewReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final imageWidth:I

.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;Ljava/lang/String;IILandroid/widget/ImageView;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 374
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageUri:Ljava/lang/String;

    .line 375
    iput p3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageWidth:I

    .line 376
    iput p4, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageHeight:I

    .line 377
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;)Ljava/lang/String;
    .locals 0

    .line 365
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageUri:Ljava/lang/String;

    return-object p0
.end method

.method private getAttachedImageView()Landroid/widget/ImageView;
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageViewReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 474
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->access$500(Landroid/widget/ImageView;)Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;

    move-result-object v1

    if-ne p0, v1, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 4

    .line 382
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    const-string v0, "AppsUi#AsyncTask"

    invoke-virtual {p1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->isCancelled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 398
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->access$100(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageUri:Ljava/lang/String;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageWidth:I

    iget v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageHeight:I

    invoke-static {p1, v1, v2, v3}, Lcom/sonyericsson/android/camera/view/modeselector/ResourceUtil;->getBitmap(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 417
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->access$200(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 418
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->access$300(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;)Landroid/util/LruCache;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 419
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->access$300(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;)Landroid/util/LruCache;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->imageUri:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 365
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method public onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0

    .line 462
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onCancelled(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 365
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->onCancelled(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method

.method public onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 447
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->getAttachedImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 452
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;

    invoke-static {p0, v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;->access$400(Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 365
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;->onPostExecute(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
