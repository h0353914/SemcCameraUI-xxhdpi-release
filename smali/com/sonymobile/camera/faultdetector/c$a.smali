.class Lcom/sonymobile/camera/faultdetector/c$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/camera/faultdetector/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3


# instance fields
.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/sonymobile/camera/faultdetector/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/sonymobile/camera/faultdetector/c;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sonymobile/camera/faultdetector/c$a;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object p0, p0, Lcom/sonymobile/camera/faultdetector/c$a;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonymobile/camera/faultdetector/c;

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/sonymobile/camera/faultdetector/c;->e(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne v0, v1, :cond_3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/sonymobile/camera/faultdetector/c$b;

    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$d;->d:Lcom/sonymobile/camera/faultdetector/c$d;

    invoke-static {p0, v0}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Lcom/sonymobile/camera/faultdetector/c$d;)V

    iget-object v0, p1, Lcom/sonymobile/camera/faultdetector/c$b;->a:Ljava/util/List;

    iget-object p1, p1, Lcom/sonymobile/camera/faultdetector/c$b;->b:Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;

    invoke-static {p0, v0, p1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Ljava/util/List;Lcom/sonymobile/camera/faultdetector/DetectorInterface$Callback;)V

    invoke-static {p0}, Lcom/sonymobile/camera/faultdetector/c;->e(Lcom/sonymobile/camera/faultdetector/c;)Lcom/sonymobile/camera/faultdetector/c$d;

    move-result-object p1

    sget-object v0, Lcom/sonymobile/camera/faultdetector/c$d;->d:Lcom/sonymobile/camera/faultdetector/c$d;

    if-ne p1, v0, :cond_3

    sget-object p1, Lcom/sonymobile/camera/faultdetector/c$d;->c:Lcom/sonymobile/camera/faultdetector/c$d;

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/sonymobile/camera/faultdetector/c;->d(Lcom/sonymobile/camera/faultdetector/c;)V

    sget-object p1, Lcom/sonymobile/camera/faultdetector/c$d;->a:Lcom/sonymobile/camera/faultdetector/c$d;

    :goto_0
    invoke-static {p0, p1}, Lcom/sonymobile/camera/faultdetector/c;->a(Lcom/sonymobile/camera/faultdetector/c;Lcom/sonymobile/camera/faultdetector/c$d;)V

    :cond_3
    :goto_1
    return-void
.end method
