.class public Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;
.super Ljava/lang/Object;
.source "FeatureGroupItem.java"


# instance fields
.field private mChild:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation
.end field

.field private mGroup:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;->mGroup:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;->mChild:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChild()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/tutorial/TutorialType;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;->mChild:Ljava/util/List;

    return-object p0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/FeatureGroupItem;->mGroup:Ljava/lang/String;

    return-object p0
.end method
