.class Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;
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
    name = "DcfImageDirNameFilter"
.end annotation


# instance fields
.field private mFilterDirName:Ljava/lang/String;

.field private mFilterDirNo:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$1;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;)I
    .locals 0

    .line 120
    iget p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;->mFilterDirNo:I

    return p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;I)I
    .locals 0

    .line 120
    iput p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;->mFilterDirNo:I

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;)Ljava/lang/String;
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;->mFilterDirName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    .line 128
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    .line 129
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 130
    iget v2, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;->mFilterDirNo:I

    if-lt v1, v2, :cond_0

    const/16 v2, 0x64

    if-gt v2, v1, :cond_0

    const/16 v2, 0x3e7

    if-gt v1, v2, :cond_0

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%03d"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "ANDRO"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 136
    iput v1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;->mFilterDirNo:I

    .line 137
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/storage/DcfPathBuilder$DcfImageDirNameFilter;->mFilterDirName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :cond_0
    return v0

    :catch_0
    return v0
.end method
