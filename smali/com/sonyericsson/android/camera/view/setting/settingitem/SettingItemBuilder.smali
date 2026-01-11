.class public Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
.super Ljava/lang/Object;
.source "SettingItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SettingItemBuilder"


# instance fields
.field private mAdditionalTextForAccessibility:Ljava/lang/String;

.field private final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mDialogItemType:I

.field private mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mIconId:I

.field private mIsSoundEnabled:Z

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

.field private mSelected:Z

.field private mSubText:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTextId:I


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIconId:I

    .line 21
    iput v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mTextId:I

    .line 23
    const-string v1, ""

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    .line 26
    iput v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    .line 27
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    .line 28
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    .line 30
    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelected:Z

    const/4 v0, 0x1

    .line 33
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    .line 36
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    return-void
.end method

.method public static build(Ljava/lang/Object;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 40
    new-instance v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public additionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object p0
.end method

.method public commit()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;
    .locals 21

    move-object/from16 v0, p0

    .line 46
    iget v1, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mTextId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 47
    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    iget-object v4, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    iget v5, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIconId:I

    iget-object v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    iget-object v7, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    iget-object v8, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget v9, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    iget-object v10, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    iget-boolean v11, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;-><init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Z)V

    goto :goto_0

    .line 58
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    iget-object v13, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mData:Ljava/lang/Object;

    iget v14, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIconId:I

    iget v15, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mTextId:I

    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    iget-object v3, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget v4, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    iget-object v5, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    iget-boolean v6, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    move-object v12, v1

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move/from16 v20, v6

    invoke-direct/range {v12 .. v20}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;-><init>(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;ILcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Z)V

    .line 69
    :goto_0
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 70
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;

    .line 71
    invoke-interface {v1}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    :cond_1
    iget-object v2, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    invoke-interface {v1, v2}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)V

    .line 77
    iget-boolean v0, v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelected:Z

    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;->setSelected(Z)V

    return-object v1
.end method

.method public dialogItemType(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 108
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mDialogItemType:I

    return-object p0
.end method

.method public enableSound(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 136
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIsSoundEnabled:Z

    return-object p0
.end method

.method public executor(Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "TT;>;)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    return-object p0
.end method

.method public iconId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 83
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mIconId:I

    return-object p0
.end method

.method public item(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public selectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    return-object p0
.end method

.method public selected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 126
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSelected:Z

    return-object p0
.end method

.method public subText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mSubText:Ljava/lang/String;

    return-object p0
.end method

.method public text(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mText:Ljava/lang/String;

    return-object p0
.end method

.method public textId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 88
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItemBuilder;->mTextId:I

    return-object p0
.end method
