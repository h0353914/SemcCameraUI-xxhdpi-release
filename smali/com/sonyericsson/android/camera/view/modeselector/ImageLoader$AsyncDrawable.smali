.class Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$AsyncDrawable;
.super Landroid/graphics/drawable/BitmapDrawable;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsyncDrawable"
.end annotation


# instance fields
.field private final imageLoaderTaskReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;)V
    .locals 0

    .line 509
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 510
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$AsyncDrawable;->imageLoaderTaskReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public getImageLoaderTask()Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$AsyncDrawable;->imageLoaderTaskReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/modeselector/ImageLoader$ImageLoaderTask;

    return-object p0
.end method
