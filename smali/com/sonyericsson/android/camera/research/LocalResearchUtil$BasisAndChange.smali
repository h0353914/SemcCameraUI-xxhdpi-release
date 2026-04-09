.class Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;
.super Ljava/lang/Object;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BasisAndChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mBasis:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mChange:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    .line 85
    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    .line 88
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    .line 89
    iput-object p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$002(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    return-object p1
.end method


# virtual methods
.method hasChange()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
