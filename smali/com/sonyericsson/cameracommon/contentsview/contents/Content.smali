.class public Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
.super Ljava/lang/Object;
.source "Content.java"

# interfaces
.implements Lcom/sonyericsson/cameracommon/contentsview/contents/optionmenu/OptionOperating;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;,
        Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentsType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Content"


# instance fields
.field protected mCountText:Ljava/lang/String;

.field private final mExtraIconId:I

.field protected final mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

.field private final mPlayableIconId:I


# direct methods
.method public constructor <init>(Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;II)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    .line 132
    iput p2, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    .line 133
    iput p3, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    return-void
.end method


# virtual methods
.method public getContentInfo()Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    return-object p0
.end method

.method public getCountText()Ljava/lang/String;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mCountText:Ljava/lang/String;

    return-object p0
.end method

.method public getExtraIconResourceId()I
    .locals 0

    .line 162
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    return p0
.end method

.method public getPlayIconResourceId()I
    .locals 0

    .line 166
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    return p0
.end method

.method public isMediaDataVerified()Z
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mInfo:Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content$ContentInfo;->mIsMediaDataVerified:Z

    return p0
.end method

.method public shouldShowExtraIcon()Z
    .locals 1

    .line 158
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mExtraIconId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public shouldShowPlayableIcon()Z
    .locals 1

    .line 151
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->mPlayableIconId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public viewContent(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
