.class Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;
.super Ljava/lang/Object;
.source "BlurProcess.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/blur/BlurProcess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlurTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final _coreIndex:I

.field private final _h:I

.field private final _radius:I

.field private final _round:I

.field private final _src:[I

.field private final _totalCores:I

.field private final _w:I


# direct methods
.method public constructor <init>([IIIIIII)V
    .locals 0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_src:[I

    .line 330
    iput p2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_w:I

    .line 331
    iput p3, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_h:I

    .line 332
    iput p4, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_radius:I

    .line 333
    iput p5, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_totalCores:I

    .line 334
    iput p6, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_coreIndex:I

    .line 335
    iput p7, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_round:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 318
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->call()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method public call()Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 340
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_src:[I

    iget v1, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_w:I

    iget v2, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_h:I

    iget v3, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_radius:I

    iget v4, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_totalCores:I

    iget v5, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_coreIndex:I

    iget v6, p0, Lcom/sonyericsson/android/camera/view/blur/BlurProcess$BlurTask;->_round:I

    invoke-static/range {v0 .. v6}, Lcom/sonyericsson/android/camera/view/blur/BlurProcess;->-$$Nest$smblurIteration([IIIIIII)V

    const/4 p0, 0x0

    return-object p0
.end method
