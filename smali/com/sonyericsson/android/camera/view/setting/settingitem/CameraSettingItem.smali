.class public Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
.super Ljava/lang/Object;
.source "CameraSettingItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;
    }
.end annotation


# instance fields
.field private mAddedDescriptionResId:I

.field private mAdditionalTextForAccessibility:Ljava/lang/String;

.field private mDescriptionResId:I

.field private mImageResId:I

.field private mInformationResId:I

.field private mIsExclusionInfo:Z

.field private mIsRestricted:Z

.field private mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

.field private mLayoutType:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

.field private mOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRestrictMessageDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

.field private mTitleResId:I

.field private mValueText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;ILjava/lang/String;IIZILjava/lang/String;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;ZLcom/sonyericsson/android/camera/view/messagedialog/DialogId;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/UserSettingKey;",
            "I",
            "Ljava/lang/String;",
            "IIZI",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;",
            "Z",
            "Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;I)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    .line 53
    iput p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mTitleResId:I

    .line 54
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mValueText:Ljava/lang/String;

    .line 55
    iput p4, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mDescriptionResId:I

    .line 56
    iput p5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mAddedDescriptionResId:I

    .line 57
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mIsExclusionInfo:Z

    .line 58
    iput p7, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mInformationResId:I

    .line 59
    iput-object p8, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 60
    iput-object p9, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mLayoutType:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    .line 61
    iput-boolean p10, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mIsRestricted:Z

    .line 62
    iput-object p11, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mRestrictMessageDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    .line 63
    iput-object p12, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mOptions:Ljava/util/List;

    .line 64
    iput p13, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mImageResId:I

    return-void
.end method


# virtual methods
.method public getAddedDescriptionResId()I
    .locals 0

    .line 109
    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mAddedDescriptionResId:I

    return p0
.end method

.method public getAdditionalTextForAccessibility()Ljava/lang/String;
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object p0
.end method

.method public getDescriptionResId()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mDescriptionResId:I

    return p0
.end method

.method public getImageResId()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mImageResId:I

    return p0
.end method

.method public getInformationResId()I
    .locals 0

    .line 127
    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mInformationResId:I

    return p0
.end method

.method public getKey()Lcom/sonyericsson/android/camera/configuration/UserSettingKey;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method public getOptions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mOptions:Ljava/util/List;

    return-object p0
.end method

.method public getRestrictMessageDialogId()Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mRestrictMessageDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    return-object p0
.end method

.method public getSelectedValueItem()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;
    .locals 2

    .line 195
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->getOptions()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    .line 197
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSettingLayoutType()Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;
    .locals 0

    .line 146
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mLayoutType:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-object p0
.end method

.method public getTitleResId()I
    .locals 0

    .line 82
    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mTitleResId:I

    return p0
.end method

.method public getValueText()Ljava/lang/String;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mValueText:Ljava/lang/String;

    return-object p0
.end method

.method public isExclusionInfo()Z
    .locals 0

    .line 118
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mIsExclusionInfo:Z

    return p0
.end method

.method public isRestricted()Z
    .locals 0

    .line 157
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;->mIsRestricted:Z

    return p0
.end method
