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

    .line 66
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailabilityStatusFetched(I)V
    .locals 5
    .param p1    # I
        .annotation build Lcom/google/lens/sdk/LensApi$LensAvailabilityStatus;
        .end annotation
    .end param

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->access$100(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move p1, v2

    goto :goto_0

    .line 76
    :cond_0
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p1, :cond_1

    .line 77
    new-array p1, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lens_availability: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    move p1, v1

    .line 80
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object v3, v3, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    new-array v2, v2, [Z

    aput-boolean p1, v2, v1

    invoke-static {v3, v2}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->access$202(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;[Z)[Z

    if-eq v0, p1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-static {v0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->access$300(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;Z)V

    .line 83
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->access$400(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->access$500(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;->this$1:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-interface {v0, p0, p1}, Lcom/sonyericsson/android/camera/view/modeselector/Mode$OnStateChangeListener;->onAvailabilityChanged(Lcom/sonyericsson/android/camera/view/modeselector/Mode;Z)V

    :cond_2
    return-void
.end method
