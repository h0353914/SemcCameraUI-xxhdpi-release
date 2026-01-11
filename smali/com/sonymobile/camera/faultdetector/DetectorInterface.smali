.class public interface abstract Lcom/sonymobile/camera/faultdetector/DetectorInterface;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;
    }
.end annotation


# virtual methods
.method public abstract deinitialize()V
.end method

.method public abstract execute(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getInputSize()Landroid/util/Size;
.end method

.method public abstract initialize()Z
.end method

.method public abstract release()V
.end method
