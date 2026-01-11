.class public abstract Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;
.super Landroid/widget/FrameLayout;
.source "AbsPanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;
    }
.end annotation


# static fields
.field public static final REGULAR_ROBOTO:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    sget-object v0, Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;->REGULAR:Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;

    invoke-static {v0}, Lcom/sonymobile/cameracommon/font/FontUtil;->createTypeface(Lcom/sonymobile/cameracommon/font/FontUtil$RobotoFontType;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView;->REGULAR_ROBOTO:Landroid/graphics/Typeface;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAppIconHeight()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAppIconView()Landroid/widget/ImageView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getAppIconWidth()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setItem(Lcom/sonyericsson/android/camera/view/modeselector/view/AbsPanelView$PanelAttributes;)V
    .locals 0

    return-void
.end method

.method public setUiOrientation(I)V
    .locals 0

    return-void
.end method
