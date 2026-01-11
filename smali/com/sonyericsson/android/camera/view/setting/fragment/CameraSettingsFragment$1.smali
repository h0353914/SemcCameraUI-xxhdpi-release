.class Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$1;
.super Ljava/lang/Object;
.source "CameraSettingsFragment.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 100
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p1

    .line 102
    invoke-interface {p1, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    if-eqz p1, :cond_1

    .line 104
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->-$$Nest$fgetmOnListItemClickListener(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 105
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$1;->this$0:Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;->-$$Nest$fgetmOnListItemClickListener(Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment;)Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sonyericsson/android/camera/view/setting/fragment/CameraSettingsFragment$OnListItemClickListener;->onClick(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
