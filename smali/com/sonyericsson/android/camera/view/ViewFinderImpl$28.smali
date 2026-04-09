.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->showAutoReview(Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

.field final synthetic val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V
    .locals 0

    .line 9865
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 9868
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$6600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 9871
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$28;->val$result:Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;

    invoke-static {p1, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->access$9600(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/mediasaving/StoreDataResult;)V

    return-void
.end method
