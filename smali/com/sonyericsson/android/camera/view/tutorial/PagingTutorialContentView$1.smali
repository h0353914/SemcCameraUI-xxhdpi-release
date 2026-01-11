.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$msuspend(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    goto :goto_0

    .line 351
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$mresume(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 259
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$mgetContent(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object p2

    .line 261
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    if-eqz p3, :cond_5

    .line 262
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    .line 263
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 267
    iget-object v0, p2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 268
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne v2, v3, :cond_0

    .line 269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    const v2, 0x7f090210

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fputmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Landroid/widget/ImageView;)V

    .line 274
    :cond_1
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne v0, v2, :cond_2

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 281
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v0

    if-nez v0, :cond_5

    .line 282
    iget-object p2, p2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 283
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->VIDEO:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne v0, v2, :cond_3

    .line 284
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    const v0, 0x7f090213

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fputmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V

    .line 285
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$mprepareTutorialVideoView(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V

    .line 290
    :cond_4
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->VIDEO:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne p2, p3, :cond_5

    .line 291
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object p2

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p3, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$mcreateSurfaceTextureListener(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 292
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 301
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$mgetContent(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v0

    .line 302
    iget v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    .line 303
    iput p1, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    .line 305
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 306
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    .line 307
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 308
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 309
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v3

    sget-object v6, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne v3, v6, :cond_1

    .line 311
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 312
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 313
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setVisibility(I)V

    .line 314
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$mclearMediaPlayer(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    .line 316
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 317
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 318
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->VIDEO:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne v2, v3, :cond_4

    .line 320
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmSurfaceTexture(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 321
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$mcreateMediaPlayer(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V

    goto :goto_0

    .line 323
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v3, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$mcreateSurfaceTextureListener(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 325
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 326
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmIcon(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 328
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->-$$Nest$fgetmVideo(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object p0

    invoke-virtual {p0, v5}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setVisibility(I)V

    .line 333
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getCurrentTutorialPageInfo(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    move-result-object p0

    .line 334
    iget v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    if-ge v1, v2, :cond_5

    .line 335
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->pageIndexByType:I

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->NEXT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    goto :goto_2

    .line 338
    :cond_5
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->pageIndexByType:I

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->PREVIOUS:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 342
    :goto_2
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getCurrentTutorialPageInfo(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    move-result-object p0

    .line 343
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->pageIndexByType:I

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;I)V

    return-void
.end method
