.class public Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;
.super Ljava/lang/Object;
.source "CameraSettingCategoryItem.java"


# instance fields
.field private mCameraSettingItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryNameResId:I


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->mCategoryNameResId:I

    .line 25
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->mCameraSettingItems:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCameraSettingItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingItem;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->mCameraSettingItems:Ljava/util/List;

    return-object p0
.end method

.method public getCategoryNameResId()I
    .locals 0

    .line 34
    iget p0, p0, Lcom/sonyericsson/android/camera/view/setting/settingitem/CameraSettingCategoryItem;->mCategoryNameResId:I

    return p0
.end method
