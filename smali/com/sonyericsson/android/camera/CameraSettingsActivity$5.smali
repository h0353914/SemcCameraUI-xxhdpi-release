.class Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;
.super Ljava/lang/Object;
.source "CameraSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/CameraSettingsActivity;->onDismiss(Lcom/sonyericsson/android/camera/view/messagedialog/MessageDialogRequest;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/sonyericsson/android/camera/CameraSettingsActivity$5;->this$0:Lcom/sonyericsson/android/camera/CameraSettingsActivity;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/CameraSettingsActivity;->-$$Nest$mupdateSetting(Lcom/sonyericsson/android/camera/CameraSettingsActivity;)V

    return-void
.end method
