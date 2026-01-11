.class Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
.super Ljava/lang/Object;
.source "CameraSettingItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserSettingKeyItemBuilder"
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
.method private constructor <init>()V
    .locals 0

    .line 623
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
    .locals 15

    .line 718
    new-instance v14, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mTitleResId:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mValueText:Ljava/lang/String;

    iget v4, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mDescriptionResId:I

    iget v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mAddedDescriptionResId:I

    iget-boolean v6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mIsExclusionInfo:Z

    iget v7, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mInformationResId:I

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mLayoutType:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    iget-boolean v10, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mIsRestricted:Z

    iget-object v11, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mRestrictMessageDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    iget-object v12, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mOptions:Ljava/util/List;

    iget v13, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mImageResId:I

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;-><init>(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;ILjava/lang/String;IIZILjava/lang/String;Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;ZLcom/sonyericsson/android/camera/view/messagedialog/DialogId;Ljava/util/List;I)V

    return-object v14
.end method

.method setAddedDescriptionResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 671
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mAddedDescriptionResId:I

    return-object p0
.end method

.method setAdditionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 687
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object p0
.end method

.method setDescriptionResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 666
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mDescriptionResId:I

    return-object p0
.end method

.method setImageResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 713
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mImageResId:I

    return-object p0
.end method

.method setInformationResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 681
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mInformationResId:I

    return-object p0
.end method

.method setIsExclusionInfo(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 676
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mIsExclusionInfo:Z

    return-object p0
.end method

.method setIsRestricted(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 697
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mIsRestricted:Z

    return-object p0
.end method

.method setOptions(Ljava/util/List;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;",
            ">;)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;"
        }
    .end annotation

    .line 708
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mOptions:Ljava/util/List;

    return-object p0
.end method

.method setRestrictMessageDialogId(Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mRestrictMessageDialogId:Lcom/sonyericsson/android/camera/view/messagedialog/DialogId;

    return-object p0
.end method

.method setSettingLayoutType(Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mLayoutType:Lcom/sonyericsson/android/camera/view/setting/settingitem/SettingLayoutType;

    return-object p0
.end method

.method setTitleResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 656
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mTitleResId:I

    return-object p0
.end method

.method setUserSettingKey(Lcom/sonyericsson/android/camera/configuration/UserSettingKey;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mKey:Lcom/sonyericsson/android/camera/configuration/UserSettingKey;

    return-object p0
.end method

.method setValueText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingKeyItemBuilder;->mValueText:Ljava/lang/String;

    return-object p0
.end method
