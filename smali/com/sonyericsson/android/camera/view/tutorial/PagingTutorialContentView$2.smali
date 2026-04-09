.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->createSurfaceTextureListener(I)Landroid/view/TextureView$SurfaceTextureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    iput p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 331
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p2, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$602(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 332
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->val$position:I

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 344
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$2;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$500(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
