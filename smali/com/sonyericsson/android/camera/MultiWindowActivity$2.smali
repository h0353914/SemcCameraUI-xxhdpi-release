.class Lcom/sonyericsson/android/camera/MultiWindowActivity$2;
.super Ljava/lang/Object;
.source "MultiWindowActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/MultiWindowActivity;->showCameraNotAvailableError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/MultiWindowActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/MultiWindowActivity;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/sonyericsson/android/camera/MultiWindowActivity$2;->this$0:Lcom/sonyericsson/android/camera/MultiWindowActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 238
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method
