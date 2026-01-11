.class Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;
.super Ljava/lang/Object;
.source "StorageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/storage/StorageImpl;->requestLoad([BILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 305
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;->val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 308
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;->val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    if-eqz v0, :cond_0

    .line 309
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$2;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onLoadCompleted(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
