.class public Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;
.super Landroid/widget/RelativeLayout;
.source "ContentPallet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;,
        Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
    }
.end annotation


# static fields
.field private static final INSERTANIMATION_DURATION:I = 0x12c

.field private static final INSERTANIMATION_FADE_END:F = 1.0f

.field private static final INSERTANIMATION_FADE_START:F = 0.0f

.field private static final INSERTANIMATION_SCALE_END:F = 1.0f

.field private static final INSERTANIMATION_SCALE_START:F = 0.7f

.field public static final TAG:Ljava/lang/String; = "ContentPallet"

.field private static final intervalTime:J = 0xbb8L


# instance fields
.field private curTime:J

.field private final mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

.field private mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

.field private mIsRequestHide:Z

.field private mRequestId:I

.field private mThumbnail:Landroid/graphics/Bitmap;

.field private mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetcurTime(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmContent(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmThumbnailStateListener(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 91
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    .line 83
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener-IA;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 50
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J

    const/4 p1, 0x0

    .line 76
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    .line 83
    new-instance p2, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener-IA;)V

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    return-void
.end method


# virtual methods
.method public cancelRequestHide()V
    .locals 1

    const/4 v0, 0x0

    .line 266
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    return-void
.end method

.method public clearProvisionalContent()V
    .locals 2

    const v0, 0x7f0900aa

    .line 226
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0900ab

    .line 228
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method disableClick()V
    .locals 3

    const v0, 0x7f0900ab

    .line 238
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0900a9

    .line 240
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method enableClick()V
    .locals 3

    const v0, 0x7f0900ab

    .line 232
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0900a9

    .line 234
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public getContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    return-object p0
.end method

.method public getRequestId()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mRequestId:I

    return p0
.end method

.method public hasContent()Z
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method initialize(ILcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .locals 2

    .line 110
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "setRequestId() has been called. id = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 112
    :cond_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mRequestId:I

    .line 113
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    const p1, 0x7f0900ab

    .line 114
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isProvisionalContent()Z
    .locals 1

    const v0, 0x7f0900aa

    .line 275
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 276
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->hasContent()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method release()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 121
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    .line 123
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    :cond_1
    const v0, 0x7f0900ab

    .line 125
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 144
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "set() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 146
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    const v0, 0x7f0900a9

    .line 149
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    .line 150
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900aa

    .line 154
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 155
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/16 v3, 0xd

    if-eqz p2, :cond_1

    .line 157
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getThumbnailStatus()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 159
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setThumbnailTransitionEnd()V

    .line 160
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendThumbnailTransitionEvent()V

    .line 161
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setThumbnailStatus(Z)V

    goto :goto_0

    .line 164
    :cond_1
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 165
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 168
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;)V

    const p2, 0x7f08026e

    .line 171
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 175
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->shouldShowPlayableIcon()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 176
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 177
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;)V

    .line 178
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v4, -0x2

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 179
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 180
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 181
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getPlayIconResourceId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    :cond_3
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->shouldShowExtraIcon()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 186
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 189
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0c0034

    .line 190
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_4
    const v0, 0x7f0c0033

    .line 192
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_1
    const v0, 0x7f0900a6

    .line 194
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 195
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getExtraIconResourceId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 197
    :cond_5
    const-string p1, "could not get inflater."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_6
    :goto_2
    const p1, 0x7f0900ab

    .line 202
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 205
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    if-eqz p1, :cond_7

    .line 206
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public setProvisionalContent()V
    .locals 4

    const v0, 0x7f0900aa

    .line 218
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 219
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 220
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060091

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0900ab

    .line 222
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
