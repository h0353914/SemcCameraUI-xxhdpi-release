.class Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;
.super Ljava/lang/Object;
.source "DcfPathBuilder.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DcfImageFileNameFilter"
.end annotation


# instance fields
.field private mFilterFileNo:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$1;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;)I
    .locals 0

    .line 154
    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;->mFilterFileNo:I

    return p0
.end method

.method static synthetic access$702(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;I)I
    .locals 0

    .line 154
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;->mFilterFileNo:I

    return p1
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    const/4 p1, 0x0

    .line 160
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    const/16 v1, 0x8

    .line 161
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 162
    iget v0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;->mFilterFileNo:I

    if-lt p2, v0, :cond_0

    const/4 v0, 0x1

    if-gt v0, p2, :cond_0

    const/16 v1, 0x270f

    if-gt p2, v1, :cond_0

    .line 164
    iput p2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageFileNameFilter;->mFilterFileNo:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    return p1

    :catch_0
    return p1
.end method
