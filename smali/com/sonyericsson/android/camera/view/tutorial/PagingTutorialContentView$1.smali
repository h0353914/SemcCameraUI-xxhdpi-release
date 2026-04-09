.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


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

    .line 217
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 317
    :pswitch_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$900(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    goto :goto_0

    .line 313
    :pswitch_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$800(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPageScrolled(IFI)V
    .locals 4

    .line 221
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object p2

    .line 223
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    if-eqz p3, :cond_5

    .line 224
    iget-object p3, p2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    .line 225
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 228
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 229
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

    .line 230
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne v2, v3, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    const v3, 0x7f0901a6

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$102(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 236
    :cond_1
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne v0, v2, :cond_2

    .line 237
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v0

    if-nez v0, :cond_5

    .line 244
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

    .line 245
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v0

    sget-object v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->VIDEO:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne v0, v2, :cond_3

    .line 246
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    const v2, 0x7f0901a8

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$202(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    .line 247
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$300(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;)V

    .line 252
    :cond_4
    invoke-virtual {p3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->VIDEO:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne p2, p3, :cond_5

    .line 253
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object p2

    iget-object p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p3, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$400(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 254
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public onPageSelected(I)V
    .locals 7

    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$000(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;

    move-result-object v0

    .line 264
    iget v1, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    .line 265
    iput p1, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    .line 267
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 268
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mMediaContentsResourceId:Ljava/util/ArrayList;

    .line 269
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;

    .line 270
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v3, :cond_1

    .line 271
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v3

    sget-object v6, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->IMAGE:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne v3, v6, :cond_1

    .line 273
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 274
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setVisibility(I)V

    .line 276
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$500(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)V

    .line 278
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 279
    :cond_1
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 280
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;->VIDEO:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    if-ne v2, v3, :cond_4

    .line 282
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$600(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 283
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$700(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)V

    goto :goto_0

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v3, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$400(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;I)Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 287
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 288
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$100(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    :cond_3
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$1;->this$0:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;->access$200(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;)Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialVideoView;->setVisibility(I)V

    .line 295
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getCurrentTutorialPageInfo(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    move-result-object p0

    .line 296
    iget v2, v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->mPageIndex:I

    if-ge v1, v2, :cond_5

    .line 297
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->pageIndexByType:I

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->NEXT:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    goto :goto_2

    .line 300
    :cond_5
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->pageIndexByType:I

    sget-object v3, Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;->PREVIOUS:Lcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;

    invoke-virtual {v1, v2, p0, v3}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->sendSetupWizardEvent(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;ILcom/sonymobile/cameracommon/research/parameters/Event$WizardResult;)V

    .line 304
    :goto_2
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$PagingTutorialContent;->getCurrentTutorialPageInfo(I)Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;

    move-result-object p0

    .line 305
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->type:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialContentView$TutorialPageInfo;->pageIndexByType:I

    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->startSetupWizard(Lcom/sonyericsson/android/camera/view/tutorial/TutorialController$TutorialType;I)V

    return-void
.end method
