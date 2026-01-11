.class Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$1;
.super Ljava/lang/Object;
.source "GoogleLensModeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 45
    const-string v0, "Finish. Timeout of launch Google Lens."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->-$$Nest$mshowErrorToast(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;)V

    .line 47
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->finish()V

    return-void
.end method
