.class public Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;
.super Ljava/lang/Object;
.source "StackBlurManager.java"


# static fields
.field static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field static final EXECUTOR_THREADS:I


# instance fields
.field private final _blurProcess:Lcom/sonyericsson/android/camera/view/blur/BlurProcess;

.field private _image:Landroid/graphics/Bitmap;

.field private _result:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->EXECUTOR_THREADS:I

    .line 37
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->_blurProcess:Lcom/sonyericsson/android/camera/view/blur/BlurProcess;

    return-void
.end method


# virtual methods
.method public getImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->_image:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public process(I)Landroid/graphics/Bitmap;
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->_blurProcess:Lcom/sonyericsson/android/camera/view/blur/BlurProcess;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->_image:Landroid/graphics/Bitmap;

    int-to-float p1, p1

    invoke-virtual {v0, v1, p1}, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->_result:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public returnBlurredImage()Landroid/graphics/Bitmap;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->_result:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public setOriginBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/StackBlurManager;->_image:Landroid/graphics/Bitmap;

    return-void
.end method
