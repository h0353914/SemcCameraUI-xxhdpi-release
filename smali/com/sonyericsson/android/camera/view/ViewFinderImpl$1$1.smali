.class Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1$1;
.super Ljava/lang/Object;
.source "ViewFinderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->onStorageSizeChanged(Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;

    iget-object v1, v1, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v2, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->INTERNAL:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 542
    invoke-static {v1, v2}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mhasEnoughFreeSpace(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 541
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->set(Z)V

    .line 543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$fgetmBaseLayout(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1$1;->this$1:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/ViewFinderImpl$1;->this$0:Lcom/sonyericsson/android/camera/view/ViewFinderImpl;

    sget-object v1, Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;->EXTERNAL_CARD:Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;

    .line 544
    invoke-static {p0, v1}, Lcom/sonyericsson/android/camera/view/ViewFinderImpl;->-$$Nest$mhasEnoughFreeSpace(Lcom/sonyericsson/android/camera/view/ViewFinderImpl;Lcom/sonyericsson/cameracommon/storage/Storage$StorageType;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 543
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->set(Z)V

    return-void
.end method
