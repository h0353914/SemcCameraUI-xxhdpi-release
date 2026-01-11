.class public Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;
.super Ljava/lang/Object;
.source "CameraSettingItem.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraSettingValueItem"
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
.method constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;ILjava/lang/String;Ljava/lang/String;ZZZZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZ",
            "Ljava/util/ArrayList<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;)V"
        }
    .end annotation

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 234
    iput p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mNameResId:I

    .line 235
    iput-object p3, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mSubDescriptionText:Ljava/lang/String;

    .line 236
    iput-object p4, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    .line 237
    iput-boolean p5, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsSelected:Z

    .line 238
    iput-boolean p6, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsSelectable:Z

    .line 239
    iput-boolean p7, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsEnable:Z

    .line 240
    iput-boolean p8, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsOffValue:Z

    .line 241
    iput-object p9, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mDependencyGuideList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getAdditionalTextForAccessibility()Ljava/lang/String;
    .locals 0

    .line 277
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mAdditionalTextForAccessibility:Ljava/lang/String;

    return-object p0
.end method

.method public getDependencyGuideList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/parameter/dependency/DependencyGuide;",
            ">;"
        }
    .end annotation

    .line 322
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mDependencyGuideList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getNameResId()I
    .locals 0

    .line 259
    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mNameResId:I

    return p0
.end method

.method public getSubDescriptionText()Ljava/lang/String;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mSubDescriptionText:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method

.method public isEnable()Z
    .locals 0

    .line 304
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsEnable:Z

    return p0
.end method

.method public isOffValue()Z
    .locals 0

    .line 313
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsOffValue:Z

    return p0
.end method

.method public isSelectable()Z
    .locals 0

    .line 295
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsSelectable:Z

    return p0
.end method

.method public isSelected()Z
    .locals 0

    .line 286
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem$CameraSettingValueItem;->mIsSelected:Z

    return p0
.end method
