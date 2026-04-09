.class Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;
.super Ljava/lang/Object;
.source "CameraActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/CameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateContentInfoTask"
.end annotation


# instance fields
.field mCapturedUris:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 2705
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2704
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;->mCapturedUris:Ljava/util/ArrayList;

    .line 2706
    iput-object p2, p0, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;->mCapturedUris:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 2710
    iget-object v0, p0, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;->this$0:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->access$2900(Lcom/sonyericsson/android/camera/CameraActivity;)Lcom/sonyericsson/android/camera/view/ViewFinder;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraActivity$CreateContentInfoTask;->mCapturedUris:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->requestCreateContentInfoSync(Ljava/util/ArrayList;)V

    return-void
.end method
