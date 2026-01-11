.class Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;
.super Ljava/lang/Object;
.source "GoogleLensMode.java"

# interfaces
.implements Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailabilityStatusFetched(I)V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->-$$Nest$mgetCachedGoogleLensAvailability(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move p1, v1

    goto :goto_0

    .line 71
    :cond_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    .line 72
    const-string p1, "lens_availability: false"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    move p1, v2

    .line 75
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    new-array v1, v1, [Z

    aput-boolean p1, v1, v2

    invoke-static {v3, v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->-$$Nest$fputmAvailable(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;[Z)V

    if-eq v0, p1, :cond_2

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->-$$Nest$mupdateCachedGoogleLensAvailability(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;Z)V

    .line 78
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->access$100(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->access$200(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;->onAvailabilityChanged(Lcom/sonyericsson/android/camera/view/modeselector/Mode;Z)V

    :cond_2
    return-void
.end method
