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
.method static bridge synthetic -$$Nest$fgetmBasis(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBasis(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mBasis:Ljava/lang/Object;

    .line 94
    iput-object p2, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->mChange:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method hasChange()Z
    .locals 1

    .line 98
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
