.class Lcom/sonymobile/camera/faultdetector/c$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/camera/faultdetector/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final b:Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V
    .locals 0
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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sonymobile/camera/faultdetector/c$b;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/sonymobile/camera/faultdetector/c$b;->b:Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;

    return-void
.end method
