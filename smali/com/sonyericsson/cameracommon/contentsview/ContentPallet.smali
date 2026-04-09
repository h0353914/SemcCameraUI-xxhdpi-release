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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 90
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    .line 82
    new-instance v0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0x0

    .line 49
    iput-wide p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J

    const/4 p1, 0x0

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    .line 82
    new-instance p2, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;-><init>(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$1;)V

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->curTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;)Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    return-object p0
.end method


# virtual methods
.method public cancelRequestHide()V
    .locals 1

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    return-void
.end method

.method disableClick()V
    .locals 2

    const v0, 0x7f090071

    .line 227
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09006f

    .line 228
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method enableClick()V
    .locals 2

    const v0, 0x7f090071

    .line 222
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09006f

    .line 223
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method public getContent()Lcom/sonyericsson/cameracommon/contentsview/contents/Content;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    return-object p0
.end method

.method public getRequestId()I
    .locals 0

    .line 133
    iget p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mRequestId:I

    return p0
.end method

.method public hasContent()Z
    .locals 0

    .line 237
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
    .locals 4

    .line 109
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 110
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequestId() has been called. id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 111
    :cond_0
    iput p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mRequestId:I

    .line 112
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnailStateListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;

    const p1, 0x7f090071

    .line 113
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mClickListener:Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isProvisionalContent()Z
    .locals 1

    const v0, 0x7f090070

    .line 263
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 264
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

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 120
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    .line 122
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    :cond_1
    const v0, 0x7f090071

    .line 124
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method set(Lcom/sonyericsson/cameracommon/contentsview/contents/Content;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 145
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "set() has been called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mContent:Lcom/sonyericsson/cameracommon/contentsview/contents/Content;

    const v0, 0x7f09006f

    .line 150
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    .line 151
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v2, 0x0

    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090070

    .line 155
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 156
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    .line 157
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    const/16 v2, 0xd

    if-eqz p2, :cond_1

    .line 158
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 160
    :cond_1
    new-instance p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 161
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {p2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 164
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 165
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;)V

    const p2, 0x7f080216

    .line 167
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 171
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->shouldShowPlayableIcon()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 172
    new-instance p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 173
    invoke-virtual {p0, p2}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->addView(Landroid/view/View;)V

    .line 174
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v3, -0x2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 176
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getPlayIconResourceId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    :cond_2
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->shouldShowExtraIcon()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 182
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 185
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/sonyericsson/cameracommon/utility/CommonUtility;->isCoreCameraApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0c002f

    .line 186
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    :cond_3
    const v0, 0x7f0c002e

    .line 188
    invoke-virtual {p2, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :goto_1
    const v0, 0x7f09006e

    .line 190
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 191
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/contents/Content;->getExtraIconResourceId()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    :cond_4
    const-string p1, "could not get inflater."

    .line 193
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_5
    :goto_2
    const p1, 0x7f090071

    .line 198
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    iget-boolean p1, p0, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->mIsRequestHide:Z

    if-eqz p1, :cond_6

    .line 202
    invoke-virtual {p0, v1}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public setProvisionalContent()V
    .locals 4

    const v0, 0x7f090070

    .line 214
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 215
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    .line 216
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060078

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f090071

    .line 218
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentPallet;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
