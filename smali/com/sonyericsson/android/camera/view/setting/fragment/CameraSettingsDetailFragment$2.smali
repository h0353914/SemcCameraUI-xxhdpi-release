.class Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$2;
.super Ljava/lang/Object;
.source "CameraSettingsDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->updateViews(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$2;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 215
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment$2;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;

    invoke-static {p0, p1, p3}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;->-$$Nest$mhandleItemClicked(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsDetailFragment;Landroid/widget/AdapterView;I)V

    return-void
.end method
