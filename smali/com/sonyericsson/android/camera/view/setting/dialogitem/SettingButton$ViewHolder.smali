.class Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;
.super Ljava/lang/Object;
.source "SettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mBackground:Lcom/sonyericsson/cameracommon/widget/CategorySwitch;

.field mContainer:Landroid/view/View;

.field mImage:Landroid/widget/ImageView;

.field mSwitch:Landroid/widget/FrameLayout;

.field mText:Landroid/widget/TextView;

.field mValue:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$1;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/setting/dialogitem/SettingButton$ViewHolder;-><init>()V

    return-void
.end method
