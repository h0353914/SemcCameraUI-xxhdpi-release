.class Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;",
        ">;"
    }
.end annotation


# instance fields
.field private mScanDirNo:I

.field private mScanFileNo:I

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x64

    .line 225
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    const/4 p1, 0x1

    .line 226
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    return-void
.end method

.method private final search()Z
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->checkAndCreateDirectory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->searchImageDir()Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 262
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "search error DCIM is not exist. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v1
.end method

.method private searchImageDir()Z
    .locals 3

    .line 273
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$300(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;

    move-result-object v1

    const/16 v2, 0x64

    invoke-static {v1, v2}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;->access$402(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;I)I

    .line 275
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$300(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 277
    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$300(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;->access$400(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;)I

    move-result v0

    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$300(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;->access$500(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;)Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->getDcimDirectory(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->searchImageNo(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 279
    :cond_1
    :goto_0
    iput v2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    const/4 v0, 0x1

    .line 280
    iput v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    return v0
.end method

.method private searchImageNo(Ljava/lang/String;)Z
    .locals 2

    .line 295
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 297
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$600(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;->access$702(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;I)I

    .line 298
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$600(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 300
    array-length p1, p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$600(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;->access$700(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;)I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    goto :goto_1

    .line 301
    :cond_1
    :goto_0
    iput v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 306
    :goto_1
    iget p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    const/16 v0, 0x270f

    if-le p1, v0, :cond_2

    .line 307
    iget p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 308
    iput v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 311
    :cond_2
    iget p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    const/16 v0, 0x3e7

    if-le p1, v0, :cond_3

    .line 312
    new-array p1, v1, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "searchImageNo over max dir. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aput-object p0, p1, v0

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v0

    :cond_3
    return v1
.end method


# virtual methods
.method public call()Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;
    .locals 7

    .line 230
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScanTask in: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {v4}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 231
    :cond_0
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_1

    .line 232
    new-array v0, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 233
    :cond_1
    sget-object v0, Lcom/sonyericsson/android/camera/util/PerfLog;->DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/util/PerfLog;->begin()V

    .line 235
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->search()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 236
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_SUCCEEDED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    goto :goto_0

    :cond_2
    const-string v0, "Scan failed."

    .line 238
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    .line 239
    sget-object v0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;->SCAN_FAILED:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    const/4 v3, -0x1

    .line 240
    iput v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    .line 241
    iput v3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    .line 243
    :goto_0
    sget-object v3, Lcom/sonyericsson/android/camera/util/PerfLog;->DCF_PATH_BUILDER_SCAN:Lcom/sonyericsson/android/camera/util/PerfLog;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/util/PerfLog;->end()V

    .line 244
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_3

    .line 245
    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "end  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 246
    :cond_3
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_4

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScanTask out:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->this$0:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;

    invoke-static {v5}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;->access$200(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 247
    :cond_4
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_5

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScanTask result dirNo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", fileNo: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 249
    :cond_5
    new-instance v1, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanDirNo:I

    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->mScanFileNo:I

    invoke-direct {v1, v0, v2, p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;-><init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;II)V

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanTask;->call()Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;

    move-result-object p0

    return-object p0
.end method
