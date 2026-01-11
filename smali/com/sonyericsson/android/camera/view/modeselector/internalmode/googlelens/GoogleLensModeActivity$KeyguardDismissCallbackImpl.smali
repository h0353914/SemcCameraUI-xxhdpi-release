.class Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "GoogleLensModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyguardDismissCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;)V

    return-void
.end method


# virtual methods
.method public onDismissCancelled()V
    .locals 2

    .line 209
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Keyguard dismiss cancelled"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->READY:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V

    .line 211
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->finish()V

    return-void
.end method

.method public onDismissError()V
    .locals 2

    .line 202
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Error dismissing keyguard"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->READY:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V

    .line 204
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->finish()V

    return-void
.end method

.method public onDismissSucceeded()V
    .locals 2

    .line 191
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Keyguard successfully dismissed"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->-$$Nest$mstartGoogleLensActivity(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    sget-object v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->DONE:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    sget-object v1, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;->READY:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->-$$Nest$mchangeTo(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$State;)V

    .line 196
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity$KeyguardDismissCallbackImpl;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensModeActivity;->finish()V

    :goto_0
    return-void
.end method
