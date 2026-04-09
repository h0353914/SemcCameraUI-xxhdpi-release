.class Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;
.super Ljava/lang/Object;
.source "StorageImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/cameracommon/storage/StorageImpl;->requestLoad(Landroid/net/Uri;ILcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/StorageImpl;Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->this$0:Lcom/sonyericsson/cameracommon/storage/StorageImpl;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iput-object p3, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->val$uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, p0}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onLoadCompleted(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->val$listener:Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/StorageImpl$1;->val$uri:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/sonyericsson/cameracommon/storage/Storage$OnLoadCompletedListener;->onLoadFailed(Landroid/net/Uri;I)V

    :cond_1
    :goto_0
    return-void
.end method
