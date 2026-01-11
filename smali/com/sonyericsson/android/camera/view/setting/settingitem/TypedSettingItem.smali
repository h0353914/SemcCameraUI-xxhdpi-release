.class public Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;
.super Ljava/lang/Object;
.source "TypedSettingItem.java"

# interfaces
.implements Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "TypedSettingItem"


# instance fields
.field private final mAdditionalTextForAccessibility:Ljava/lang/String;

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mDialogItemType:I

.field private final mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mIconId:I

.field private mIsSelected:Z

.field private final mIsSoundEnabled:Z

.field private mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

.field private final mSubText:Ljava/lang/String;

.field private final mText:Ljava/lang/String;

.field private final mTextId:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;IILjava/lang/String;Ljava/lang/String;ILcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    .line 51
    iput p3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mTextId:I

    .line 52
    const-string p1, ""

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIconId:I

    .line 54
    iput p6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    .line 55
    iput-object p7, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    .line 56
    iput-boolean p8, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIsSoundEnabled:Z

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    .line 60
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mSubText:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    const/4 p1, 0x0

    .line 62
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 63
    sget-object p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 76
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mTextId:I

    .line 77
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mSubText:Ljava/lang/String;

    .line 79
    iput p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIconId:I

    .line 81
    iput p6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    .line 82
    iput-object p5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 83
    iput-object p7, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    .line 84
    iput-boolean p8, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIsSoundEnabled:Z

    .line 86
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    const/4 p1, 0x0

    .line 88
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 89
    sget-object p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->UNSELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    return-void
.end method


# virtual methods
.method public compareData(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;)Z
    .locals 2

    .line 201
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 202
    check-cast p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;

    .line 203
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    iget-object p1, p1, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public compareData(Ljava/lang/Object;)Z
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getChildren()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method public getContentDescription(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mTextId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 115
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    const/16 v2, 0x20

    if-eqz v1, :cond_1

    .line 121
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->isSelectable()Z

    move-result p0

    if-nez p0, :cond_2

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const p0, 0x7f0f0083

    .line 128
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getData()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mData:Ljava/lang/Object;

    return-object p0
.end method

.method public getDialogItemType()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mDialogItemType:I

    return p0
.end method

.method public getIconId()I
    .locals 0

    .line 137
    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIconId:I

    return p0
.end method

.method public getSelectability()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    return-object p0
.end method

.method public getSubText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mSubText:Ljava/lang/String;

    return-object p0
.end method

.method public getText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 2

    .line 94
    iget v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mTextId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 95
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mText:Ljava/lang/String;

    return-object p0

    .line 97
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValueText()Ljava/lang/String;
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object p0
.end method

.method public isSelectable()Z
    .locals 1

    .line 147
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    sget-object v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;->SELECTABLE:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSelected()Z
    .locals 0

    .line 142
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    return p0
.end method

.method public isSoundEnabled()Z
    .locals 0

    .line 219
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIsSoundEnabled:Z

    return p0
.end method

.method public select()V
    .locals 1

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    .line 192
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mExecutor:Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;

    if-nez v0, :cond_0

    return-void

    .line 196
    :cond_0
    invoke-interface {v0, p0}, Lcom/sonyericsson/android/camera/view/setting/executor/SettingExecutorInterface;->onExecute(Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;)V

    return-void
.end method

.method public setSelectability(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mSelectability:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingItem$Selectability;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/TypedSettingItem;->mIsSelected:Z

    return-void
.end method
