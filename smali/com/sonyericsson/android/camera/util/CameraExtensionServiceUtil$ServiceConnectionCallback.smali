.class Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;
.super Ljava/lang/Object;
.source "CameraExtensionServiceUtil.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceConnectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;


# direct methods
.method private constructor <init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;-><init>(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 77
    iget-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-static {p2}, Lcom/sonymobile/cameracommon/ICameraExtensionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sonymobile/cameracommon/ICameraExtensionService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->-$$Nest$fputmService(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonymobile/cameracommon/ICameraExtensionService;)V

    .line 78
    iget-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->-$$Nest$fgetmConnectedSignal(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->-$$Nest$fgetmConnectedSignal(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    .line 79
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->-$$Nest$fgetmConnectedSignal(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    .line 86
    iget-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->-$$Nest$fputmService(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;Lcom/sonymobile/cameracommon/ICameraExtensionService;)V

    .line 87
    iget-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->-$$Nest$fgetmConnectedSignal(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->-$$Nest$fgetmConnectedSignal(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil$ServiceConnectionCallback;->this$0:Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;->-$$Nest$fgetmConnectedSignal(Lcom/sonyericsson/android/camera/util/CameraExtensionServiceUtil;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method
