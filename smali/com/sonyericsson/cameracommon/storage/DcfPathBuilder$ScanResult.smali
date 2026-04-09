.class Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScanResult"
.end annotation


# instance fields
.field final resultDirNo:I

.field final resultFileNo:I

.field final resultState:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;


# direct methods
.method constructor <init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;II)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;->resultState:Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResultState;

    .line 108
    iput p2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;->resultDirNo:I

    .line 109
    iput p3, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$ScanResult;->resultFileNo:I

    return-void
.end method
