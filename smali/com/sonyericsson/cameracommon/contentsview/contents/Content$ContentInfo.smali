.class public Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
.super Ljava/lang/Object;
.source "Content.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentInfo"
.end annotation


# instance fields
.field public mBucketId:I

.field public mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

.field public mGroupedImage:I

.field public mHeight:I

.field public mId:J

.field public mIsContainDetails:Z

.field public mIsInTrash:Z

.field public mIsMediaDataVerified:Z

.field public mIsVideoHdr:Z

.field public mMediaStoreIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mMimeType:Ljava/lang/String;

.field public mOrientation:I

.field public mOriginalPath:Ljava/lang/String;

.field public mOriginalUri:Landroid/net/Uri;

.field public mPredictiveNum:I

.field public mSomcType:I

.field public mType:I

.field public mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMediaStoreIds:Ljava/util/List;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsInTrash:Z

    return-void
.end method


# virtual methods
.method public getSnapShot()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .locals 3

    .line 100
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    invoke-direct {v0}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;-><init>()V

    .line 101
    iget-wide v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    iput-wide v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mId:J

    .line 102
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mType:I

    .line 103
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalUri:Landroid/net/Uri;

    .line 104
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOriginalPath:Ljava/lang/String;

    .line 105
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mOrientation:I

    .line 106
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mWidth:I

    .line 107
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mHeight:I

    .line 108
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMimeType:Ljava/lang/String;

    .line 109
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mGroupedImage:I

    .line 110
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mSomcType:I

    .line 111
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsVideoHdr:Z

    iput-boolean v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsVideoHdr:Z

    .line 112
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mBucketId:I

    .line 113
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    iput-object v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    .line 114
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    iput-boolean v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsContainDetails:Z

    .line 115
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsInTrash:Z

    iput-boolean v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsInTrash:Z

    .line 116
    iget v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mPredictiveNum:I

    iput v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mPredictiveNum:I

    .line 117
    iget-boolean v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsMediaDataVerified:Z

    iput-boolean v1, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsMediaDataVerified:Z

    .line 118
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mContentType:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    sget-object v2, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;->BURST:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;

    if-ne v1, v2, :cond_1

    .line 119
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMediaStoreIds:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 120
    iget-object v2, v0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mMediaStoreIds:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method
