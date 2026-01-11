.class Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;
.super Ljava/lang/Object;
.source "CameraDeviceHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DumpInfo"
.end annotation


# instance fields
.field private final stackTrace:[Ljava/lang/StackTraceElement;

.field private final status:Ljava/lang/String;

.field final synthetic this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;


# direct methods
.method static bridge synthetic -$$Nest$mdump(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->dump(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V
    .locals 1

    .line 4698
    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->this$0:Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4699
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->stackTrace:[Ljava/lang/StackTraceElement;

    .line 4701
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;->-$$Nest$fgetmSessionId(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->getOpenCloseStatusInfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionId;)Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4704
    const-string p1, "CameraSession info is null. So, camera is closed"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->status:Ljava/lang/String;

    goto :goto_0

    .line 4706
    :cond_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;->-$$Nest$minfo(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraSessionInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->status:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;-><init>(Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask;)V

    return-void
.end method

.method private dump(Ljava/lang/String;)V
    .locals 2

    .line 4711
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[status dump] START "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4712
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[status dump]   status:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->status:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 4713
    const-string p1, "[status dump]   trace:"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 4714
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->stackTrace:[Ljava/lang/StackTraceElement;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 4715
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[status dump]     at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->stackTrace:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/device/CameraDeviceHandler$CameraDeviceAccessTask$DumpInfo;->stackTrace:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, p1

    .line 4716
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 4715
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4718
    :cond_0
    const-string p0, "[status dump] END"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method
