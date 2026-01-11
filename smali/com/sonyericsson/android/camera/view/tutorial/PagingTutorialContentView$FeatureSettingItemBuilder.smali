.class Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;
.super Ljava/lang/Object;
.source "PagingTutorialContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeatureSettingItemBuilder"
.end annotation


# instance fields
.field private mIsSelected:Z

.field private mNameResId:I

.field private mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method build()Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;
    .locals 3

    .line 1223
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    iget v2, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mNameResId:I

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mIsSelected:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItem;-><init>(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;IZ)V

    return-object v0
.end method

.method setIsSelected(Z)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;
    .locals 0

    .line 1218
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mIsSelected:Z

    return-object p0
.end method

.method setNameResId(I)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;
    .locals 0

    .line 1213
    iput p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mNameResId:I

    return-object p0
.end method

.method setUserSettingValue(Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;)Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;
    .locals 0

    .line 1208
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/tutorial/PagingTutorialContentView$FeatureSettingItemBuilder;->mValue:Lcom/sonyericsson/android/camera/configuration/parameters/UserSettingValue;

    return-object p0
.end method
