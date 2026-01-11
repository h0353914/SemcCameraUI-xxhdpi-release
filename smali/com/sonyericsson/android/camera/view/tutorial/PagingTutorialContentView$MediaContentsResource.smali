.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MediaContentsResource"
.end annotation


# instance fields
.field private final mResourceId:I

.field private final mType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;


# direct methods
.method constructor <init>(ILcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->mResourceId:I

    .line 115
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->mType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 0

    .line 119
    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->mResourceId:I

    return p0
.end method

.method public getType()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResource;->mType:Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$MediaContentsResourceType;

    return-object p0
.end method
