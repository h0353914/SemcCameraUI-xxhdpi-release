.class Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
.super Ljava/lang/Object;
.source "CameraSettingItemBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UserSettingValueItemBuilder"
.end annotation


# instance fields
.field private mAdditionalTextForAccessibility:Ljava/lang/String;

.field private mDependencyGuideList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEnable:Z

.field private mIsOffValue:Z

.field private mIsSelectable:Z

.field private mIsSelected:Z

.field private mNameResId:I

.field private mSubDescriptionText:Ljava/lang/String;

.field private mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;
    .locals 11

    .line 792
    new-instance v10, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mNameResId:I

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mSubDescriptionText:Ljava/lang/String;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mIsSelected:Z

    iget-boolean v6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mIsSelectable:Z

    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mIsEnable:Z

    iget-boolean v8, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mIsOffValue:Z

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mDependencyGuideList:Ljava/util/ArrayList;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/util/ArrayList;)V

    return-object v10
.end method

.method setAdditionalTextForAccessibility(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
    .locals 0

    .line 761
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object p0
.end method

.method setDependencyGuideList(Ljava/util/ArrayList;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;)",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;"
        }
    .end annotation

    .line 787
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mDependencyGuideList:Ljava/util/ArrayList;

    return-object p0
.end method

.method setIsEnable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
    .locals 0

    .line 776
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mIsEnable:Z

    return-object p0
.end method

.method setIsOffValue(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
    .locals 0

    .line 781
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mIsOffValue:Z

    return-object p0
.end method

.method setIsSelectable(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
    .locals 0

    .line 771
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mIsSelectable:Z

    return-object p0
.end method

.method setIsSelected(Z)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
    .locals 0

    .line 766
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mIsSelected:Z

    return-object p0
.end method

.method setNameResId(I)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
    .locals 0

    .line 750
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mNameResId:I

    return-object p0
.end method

.method setSubDescriptionText(Ljava/lang/String;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mSubDescriptionText:Ljava/lang/String;

    return-object p0
.end method

.method setUserSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;
    .locals 0

    .line 745
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItemBuilder$UserSettingValueItemBuilder;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method
