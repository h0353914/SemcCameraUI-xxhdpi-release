.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureSettingItem"
.end annotation


# instance fields
.field private mIsSelected:Z

.field private mNameResId:I

.field private mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;IZ)V
    .locals 0

    .line 1180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1181
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    .line 1182
    iput p2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mNameResId:I

    .line 1183
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mIsSelected:Z

    return-void
.end method


# virtual methods
.method public getNameResId()I
    .locals 0

    .line 1191
    iget p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mNameResId:I

    return p0
.end method

.method public getValue()Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;
    .locals 0

    .line 1187
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method

.method public isSelected()Z
    .locals 0

    .line 1195
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;->mIsSelected:Z

    return p0
.end method
