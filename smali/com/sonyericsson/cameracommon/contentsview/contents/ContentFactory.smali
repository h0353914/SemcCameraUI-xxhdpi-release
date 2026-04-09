.class public Lcom/sonyericsson/cameracommon/contentsview/contents/ContentFactory;
.super Ljava/lang/Object;
.source "ContentFactory.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContentFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 4

    .line 33
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create() has been called. Content type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 35
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 37
    invoke-static {v1}, Lcom/sonyericsson/cameracommon/contentsview/contents/ExtraIconResources;->get(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;)I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 38
    invoke-static {v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/PlayIconResources;->get(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;-><init>(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;II)V

    return-object v0
.end method
