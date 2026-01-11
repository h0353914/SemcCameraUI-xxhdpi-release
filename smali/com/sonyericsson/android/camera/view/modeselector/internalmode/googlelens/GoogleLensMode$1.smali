.class Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;
.super Ljava/lang/Object;
.source "GoogleLensMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->isAvailable(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    new-instance v0, Lcom/google/lens/sdk/LensApi;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;->this$0:Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;->access$000(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/lens/sdk/LensApi;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v1, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1$1;-><init>(Lcom/sonyericsson/android/camera/view/modeselector/internalmode/googlelens/GoogleLensMode$1;)V

    invoke-virtual {v0, v1}, Lcom/google/lens/sdk/LensApi;->checkLensAvailability(Lcom/google/lens/sdk/LensApi$LensAvailabilityCallback;)V

    return-void
.end method
