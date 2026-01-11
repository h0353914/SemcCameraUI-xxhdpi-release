.class Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;
.super Ljava/lang/Object;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataLoadResult"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

.field final synthetic this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBitmap(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContent(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    return-object p0
.end method

.method public constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;Lcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->this$0:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    .line 243
    iput-object p3, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$DataLoadResult;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
