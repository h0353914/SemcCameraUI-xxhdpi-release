.class Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;
.super Ljava/lang/Object;
.source "LocalResearchUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/research/LocalResearchUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SemiAutoSettingValues"
.end annotation


# instance fields
.field private mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    .line 487
    new-instance v0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-direct {v0, v1, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    return-void
.end method


# virtual methods
.method public applyChange()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fputmBasis(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)V

    .line 504
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fputmBasis(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)V

    return-void
.end method

.method public hasChange()Z
    .locals 1

    .line 499
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->hasChange()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->hasChange()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEnabled()Z
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AMB_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_BR_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fgetmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAmberBlue(I)V
    .locals 0

    .line 491
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mAmberBlue:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fputmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)V

    return-void
.end method

.method public updateBrightness(I)V
    .locals 0

    .line 495
    iget-object p0, p0, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$SemiAutoSettingValues;->mBrightness:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;->-$$Nest$fputmChange(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$BasisAndChange;Ljava/lang/Object;)V

    return-void
.end method
