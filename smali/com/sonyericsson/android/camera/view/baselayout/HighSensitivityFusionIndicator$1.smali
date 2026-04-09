.class Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator$1;
.super Ljava/lang/Object;
.source "HighSensitivityFusionIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;-><init>(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;

    invoke-virtual {p1}, Landroid/view/View;->isActivated()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->setChecked(Z)V

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator$1;->this$0:Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;->access$000(Lcom/sonyericsson/android/camera/view/baselayout/HighSensitivityFusionIndicator;)Landroid/view/View$OnClickListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
