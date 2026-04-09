.class public Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.super Ljava/lang/Object;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;
    }
.end annotation


# static fields
.field public static final EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

.field private static final TAG:Ljava/lang/String; = "BaseLayout"

.field private static mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

.field private mCapturingButtonLayout:Landroid/widget/FrameLayout;

.field private mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mCurrentOrientation:I

.field private mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

.field private mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

.field private mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

.field private mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

.field private mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

.field private mHeadUpDisplay:Landroid/view/ViewGroup;

.field private mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

.field private mHintTextViewContainer:Landroid/widget/FrameLayout;

.field private mImageQualityControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBlackScreenShowing:Z

.field private mIsCameraSwitching:Z

.field private mIsFirstDrawn:Z

.field private mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

.field private mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

.field private final mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

.field private final mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

.field private final mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

.field private mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

.field private mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

.field private mNavigationBarVisibility:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

.field private mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

.field private final mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

.field private mPreInflatedHeadUpDisplay:Landroid/view/View;

.field private mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

.field private mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

.field private mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

.field private mPreferredFocusView:Landroid/view/View;

.field private mPreview:Landroid/view/View;

.field private mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

.field private mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

.field private mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

.field private final mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mSemiAutoControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation
.end field

.field private mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

.field private final mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

.field private mSwitchAnimationContainer:Landroid/widget/FrameLayout;

.field private mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

.field private mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mTopIndicatorsContainer:Landroid/view/View;

.field private mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

.field private final mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

.field private mViewFinderRect:Landroid/graphics/Rect;

.field private mWindowCover:Landroid/view/View;

.field private mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

.field private mZoombarGroup:Landroid/widget/FrameLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 241
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    .line 249
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 4

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 129
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 155
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSemiAutoControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    .line 156
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mImageQualityControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    const/4 v1, 0x0

    .line 159
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 177
    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    .line 180
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 182
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    .line 184
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    .line 186
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    .line 187
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    .line 195
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mNavigationBarVisibility:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    .line 252
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 253
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 256
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz p2, :cond_0

    .line 257
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    goto :goto_0

    .line 259
    :cond_0
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p2, p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    .line 262
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 263
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->createContainer(Landroid/content/Context;)[Landroid/view/View;

    move-result-object p2

    array-length v0, p2

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 264
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 277
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPreferredFocusView()V

    .line 280
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPreviewContainer()V

    .line 281
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSwitchAnimationContainer()V

    .line 282
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    const-string v0, "low-battery"

    invoke-direct {p2, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    .line 283
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "low-internal-storage"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 284
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "low-sd-card"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 285
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "photo-smile-capture"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 286
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "video-smile-capture"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 290
    new-instance p1, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    .line 293
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/view/ViewGroup;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    .locals 1

    .line 98
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;)Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    .locals 0

    .line 98
    sput-object p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/CameraActivity;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Z
    .locals 0

    .line 98
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    return p0
.end method

.method static synthetic access$402(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)Z
    .locals 0

    .line 98
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/graphics/Rect;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-object p0
.end method

.method private adjustmentWithSystemLayout()V
    .locals 7

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x4

    .line 620
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 627
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v1, v4

    .line 628
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 629
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v5, v3, v3, v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0900aa
        0x7f090163
        0x7f090039
        0x7f0900b6
    .end array-data
.end method

.method private createContainer(Landroid/content/Context;)[Landroid/view/View;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 448
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    .line 450
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    .line 451
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    .line 452
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    .line 453
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c002a

    const/4 v3, 0x0

    .line 454
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    .line 455
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    .line 456
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    .line 458
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREFERRED_FOCUS:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    aput-object v1, v0, p1

    .line 459
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREVIEW_CONTAINER_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    aput-object v1, v0, p1

    .line 460
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->SWITCH_ANIMATION_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 461
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->CAPTURE_BUTTON_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 462
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->HEAD_UP_DISPLAY_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 463
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREDICTIVE_LAUNCH_COVER_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    aput-object p0, v0, p1

    return-object v0
.end method

.method private getPreviousNavigationBarVisibility()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;
    .locals 0

    .line 1370
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mNavigationBarVisibility:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    return-object p0
.end method

.method private inflate()V
    .locals 3

    .line 1309
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1310
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1311
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "HeadUpDisplay is already inflated."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1312
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 1313
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    goto :goto_0

    .line 1315
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string v1, "HeadUpDisplay is not inflated."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const v1, 0x7f0c0023

    .line 1316
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 1320
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1321
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1322
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1324
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900b6

    .line 1325
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 1327
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900b9

    .line 1328
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    return-void
.end method

.method private setupCaptureButtonGroup()V
    .locals 2

    .line 923
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090056

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 924
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 925
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "setupCaptureButtonGroup: fails to setup"

    .line 926
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setupCaptureButtonGroup(Landroid/view/View;)Z
    .locals 1

    .line 964
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-eqz v0, :cond_2

    .line 965
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-nez v0, :cond_0

    .line 966
    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    .line 969
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v0, 0x7f090178

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 970
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v0, 0x7f09008c

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 972
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-eqz p1, :cond_1

    .line 973
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    .line 974
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    .line 975
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v0, 0x7f0900cc

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .locals 5

    .line 1040
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1041
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    goto :goto_0

    .line 1043
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NORMAL:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    :goto_0
    const/4 v1, 0x0

    .line 1047
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isCameraSwitching()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1048
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v2, :cond_1

    .line 1049
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1050
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getLocalContentInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1051
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 1054
    :cond_1
    new-instance v2, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1056
    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_2

    .line 1061
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getLocalContentInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1064
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 1065
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    .line 1066
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f090072

    .line 1067
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 1068
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private setupFrontAngleSwitchButton()V
    .locals 2

    .line 1001
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 1002
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090098

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    .line 1005
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1006
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1007
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setupGridLineView()V
    .locals 2

    .line 1479
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-nez v0, :cond_0

    .line 1480
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    .line 1481
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    .line 1483
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 1484
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1485
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateGridLine(II)V

    .line 1486
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setupModeShortcut()V
    .locals 3

    .line 1081
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f0900d3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    .line 1084
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLaunchCondition()Lcom/sonyericsson/android/camera/LaunchCondition;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/LaunchCondition;->getCapturingMode()Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    move-result-object v0

    .line 1083
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/modeselector/ModeSelectorInternalMode;->exists(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Z

    move-result v0

    .line 1085
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update(Z)V

    .line 1086
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v2, 0x7f0900da

    .line 1087
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    .line 1088
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    return-void
.end method

.method private setupPreferredFocusView()V
    .locals 3

    .line 1014
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1015
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1016
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1018
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1019
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private setupPreviewContainer()V
    .locals 3

    .line 476
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 479
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setLayoutDirection(I)V

    .line 481
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 482
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 483
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 484
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x50

    .line 485
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 486
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 488
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private setupPrimaryShortcut()V
    .locals 2

    .line 1491
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900fd

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    return-void
.end method

.method private setupRecordingIndicator()V
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    if-nez v0, :cond_0

    .line 1180
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f09010b

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    .line 1182
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setScreenAspect(Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    .line 1183
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 1184
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 1185
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(I)V

    :cond_0
    return-void
.end method

.method private setupSceneIndicators()V
    .locals 4

    .line 1113
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f090127

    .line 1114
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v3, 0x7f090128

    .line 1115
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    .line 1116
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->setSensorOrientation(I)V

    .line 1118
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f090126

    .line 1119
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 1120
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupSettingIndicators()V
    .locals 3

    .line 1106
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f09009a

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    .line 1107
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 1108
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f090192

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 1109
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupSwitchAnimationContainer()V
    .locals 2

    .line 494
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 497
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupSwitchAnimationView()V
    .locals 2

    .line 1658
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    if-nez v0, :cond_0

    .line 1659
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    .line 1661
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setupTopIndicators()V
    .locals 3

    .line 1092
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f09019c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    .line 1093
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0900c7

    .line 1094
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1093
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1095
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0900c9

    .line 1096
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1095
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1097
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0900cb

    .line 1098
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1097
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1099
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f0900ee

    .line 1100
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1099
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1101
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v1, 0x7f0901b7

    .line 1102
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 1101
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    return-void
.end method

.method private setupTutorial()V
    .locals 3

    .line 995
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    if-nez v0, :cond_0

    .line 996
    new-instance v0, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getRootView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;-><init>(Landroid/view/ViewGroup;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    :cond_0
    return-void
.end method

.method private setupZoombar()V
    .locals 3

    .line 1127
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00a6

    const/4 v2, 0x0

    .line 1129
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    .line 1130
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    const v1, 0x7f0901bc

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    .line 1131
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->setSensorOrientation(I)V

    .line 1132
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->hideImmediately()V

    .line 1134
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1137
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->repositionZoombar()V

    return-void
.end method

.method private switchCaptureButtonGroupContainer()V
    .locals 3

    .line 1681
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-eqz v0, :cond_0

    .line 1683
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f090055

    .line 1684
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1686
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f0900f4

    .line 1687
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1689
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1690
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1693
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1694
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    .line 1695
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-nez v1, :cond_0

    .line 1696
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 6

    .line 537
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "updateLayout() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 539
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 548
    :cond_1
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    .line 551
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityInfo.SCREEN_ORIENTATION_PORTRAIT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/16 v0, 0x5a

    .line 554
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 555
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float v2, v3, v2

    goto :goto_0

    .line 558
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    move v1, v2

    .line 565
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->updatePreviewContainerLayout(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    .line 569
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 570
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 573
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateOnScreenButtonLayout()V

    .line 574
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adjustmentWithSystemLayout()V

    return-void
.end method

.method private updateOnScreenButtonLayout()V
    .locals 6

    .line 578
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 579
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    const-string p0, "updateOnScreenButtonLayout: pre-loaded layout is null"

    .line 580
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 591
    :cond_1
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v0

    .line 592
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 593
    new-array v1, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOnScreenButtonLayout: orientation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    if-ne v0, v3, :cond_3

    const/16 v2, 0x5a

    .line 600
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 601
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float v1, v4, v1

    .line 604
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 605
    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v3, :cond_4

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v0, v3

    goto :goto_0

    :cond_3
    move v0, v1

    .line 610
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    int-to-float v2, v2

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 611
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 612
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_0

    .line 425
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 427
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    return-void
.end method

.method public attachToWindow()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public calculateCaptureButtonAreaHeight()I
    .locals 7

    .line 934
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 935
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 937
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 938
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 939
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x4

    .line 940
    div-int/lit8 v1, v1, 0x3

    .line 941
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 942
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    .line 943
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-int v0, v5

    .line 946
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v6, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-eq v5, v6, :cond_0

    .line 947
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070110

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ne v0, v4, :cond_1

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    :cond_1
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    .line 955
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 960
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v2, p0

    return v2
.end method

.method public computeRadiusOfAnimation()V
    .locals 1

    .line 1666
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    if-nez v0, :cond_0

    return-void

    .line 1670
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setMaxRadius(Landroid/graphics/Rect;)V

    return-void
.end method

.method public disableGridLineView()V
    .locals 1

    .line 1463
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_0

    .line 1464
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->disable()V

    :cond_0
    return-void
.end method

.method public enableGridLineView()V
    .locals 1

    .line 1457
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_0

    .line 1458
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->enable()V

    :cond_0
    return-void
.end method

.method public getActivity()Lcom/sonyericsson/android/camera/CameraActivity;
    .locals 0

    .line 1413
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method public getAutoReview()Lcom/sonyericsson/android/camera/view/AutoReviewController;
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    return-object p0
.end method

.method public getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;
    .locals 0

    .line 757
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    return-object p0
.end method

.method public getBurstCountView()Lcom/sonyericsson/android/camera/view/BurstCountView;
    .locals 3

    .line 1417
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getCenterContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f090042

    .line 1418
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1421
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f0c0092

    invoke-static {p0, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1423
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1426
    :cond_0
    check-cast v2, Lcom/sonyericsson/android/camera/view/BurstCountView;

    return-object v2
.end method

.method public getCenterContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1378
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f09005c

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .locals 0

    .line 789
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object p0
.end method

.method public getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .locals 0

    .line 1077
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object p0
.end method

.method public getCurrentOrientation()I
    .locals 0

    .line 1073
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    return p0
.end method

.method public getDisplaySizeDensity()F
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    return p0
.end method

.method public getFrontAngleSwitchButton()Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;
    .locals 0

    .line 1024
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    return-object p0
.end method

.method public getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    return-object p0
.end method

.method public getGridLineView()Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;
    .locals 0

    .line 1503
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    return-object p0
.end method

.method public getHintTextViewContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 1382
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1383
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    return-object p0

    .line 1385
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900a3

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    .line 1386
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getImageQualityControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation

    .line 805
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mImageQualityControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-object p0
.end method

.method public getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;
    .locals 3

    .line 1398
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1400
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_0

    .line 1405
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1406
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const v2, 0x7f0700f4

    invoke-static {v1, p0, v2}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x0

    .line 1405
    invoke-virtual {v0, p0, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    return-object v0
.end method

.method public getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .locals 0

    .line 761
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object p0
.end method

.method public getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .locals 0

    .line 765
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object p0
.end method

.method public getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;
    .locals 0

    .line 793
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    return-object p0
.end method

.method public getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;
    .locals 0

    .line 797
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    return-object p0
.end method

.method public getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;
    .locals 0

    .line 983
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    return-object p0
.end method

.method public getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .locals 0

    .line 991
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object p0
.end method

.method public getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .locals 0

    .line 987
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object p0
.end method

.method public getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .locals 0

    .line 773
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object p0
.end method

.method public getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    return-object p0
.end method

.method public getPredictiveLaunchCoverView()Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;
    .locals 0

    .line 1739
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    return-object p0
.end method

.method public getPreview()Landroid/view/View;
    .locals 0

    .line 857
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    return-object p0
.end method

.method public getPreviewContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 861
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPreviewContainerRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 1394
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    return-object p0
.end method

.method public getPreviewOverlayContainer()Landroid/widget/FrameLayout;
    .locals 0

    .line 1390
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;
    .locals 0

    .line 1499
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    return-object p0
.end method

.method public getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
    .locals 0

    .line 1031
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    return-object p0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 1374
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;
    .locals 0

    .line 785
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    return-object p0
.end method

.method public getSemiAutoControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation

    .line 801
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSemiAutoControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-object p0
.end method

.method public getSuperSlowMotionTriggerAnimation()Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    return-object p0
.end method

.method public getSwitchAnimationView()Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;
    .locals 0

    .line 1674
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    return-object p0
.end method

.method public getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .locals 0

    .line 769
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object p0
.end method

.method public getTopIndicator()Landroid/view/View;
    .locals 0

    .line 1175
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    return-object p0
.end method

.method public getTutorial()Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    .locals 0

    .line 1028
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    return-object p0
.end method

.method public getVideoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object p0
.end method

.method public getViewFinderRect()Landroid/graphics/Rect;
    .locals 0

    .line 865
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;
    .locals 0

    .line 1305
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    return-object p0
.end method

.method public hideAutoReview()V
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-eqz v0, :cond_0

    .line 1444
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->hide()V

    :cond_0
    return-void
.end method

.method public hideBlackScreen()V
    .locals 1

    .line 1279
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1280
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 1281
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public hideContentsViewController()V
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 1207
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    :cond_0
    return-void
.end method

.method public hideLeftIconContainer()V
    .locals 1

    .line 1435
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    .line 1436
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hidePredictiveLaunchCover(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 1

    .line 1752
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_0

    .line 1753
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->hide(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_0
    return-void
.end method

.method public isAutoReviewShowing()Z
    .locals 1

    .line 1705
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-eqz v0, :cond_0

    .line 1706
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isCameraSwitching()Z
    .locals 0

    .line 1716
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    return p0
.end method

.method public isHeadUpDisplayReady()Z
    .locals 0

    .line 1198
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isInDefaultDisplaySize()Z
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getDisplaySizeDensity()F

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInLargerOrMoreDisplaySize()Z
    .locals 1

    .line 436
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getDisplaySizeDensity()F

    move-result p0

    const/high16 v0, 0x40800000    # 4.0f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pause()V
    .locals 3

    .line 1234
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1238
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 1239
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(I)V

    .line 1240
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 1242
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 1243
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1245
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_4

    .line 1246
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1247
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setAlpha(F)V

    .line 1249
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->disable()V

    .line 1251
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1253
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1255
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    if-eqz v0, :cond_6

    .line 1256
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    :cond_6
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 1267
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1268
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 734
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 735
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 738
    :cond_2
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 739
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 740
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 741
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    .line 742
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 743
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    .line 744
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public releasePredictiveLaunchCover()V
    .locals 3

    .line 1743
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_0

    .line 1744
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1745
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->setVisibility(I)V

    .line 1746
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1747
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    :cond_0
    return-void
.end method

.method public reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .locals 1

    .line 1212
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-nez v0, :cond_0

    .line 1213
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    goto :goto_0

    .line 1215
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    :goto_0
    return-void
.end method

.method public repositionZoombar()V
    .locals 4

    .line 1141
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    .line 1148
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1150
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1154
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 1155
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 1157
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1160
    :goto_0
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1162
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v2, v3, :cond_2

    .line 1164
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    goto :goto_1

    .line 1166
    :cond_2
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_1
    if-eq v2, v1, :cond_3

    .line 1169
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1170
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_3
    return-void
.end method

.method public requestToDimSystemUi()V
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->requestToDimSystemUi(Landroid/view/View;)V

    .line 1337
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->LOW_PROFILE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setCurrentNavigationBarVisibility(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;)V

    return-void
.end method

.method public requestToRecoverSystemUi()V
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->requestToRecoverSystemUi(Landroid/view/View;)V

    .line 1342
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->VISIBLE:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setCurrentNavigationBarVisibility(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;)V

    return-void
.end method

.method public requestToRestoreSystemUi()V
    .locals 2

    .line 1347
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mNavigationBarVisibility:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    if-nez v0, :cond_0

    return-void

    .line 1350
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$4;->$SwitchMap$com$sonyericsson$android$camera$view$baselayout$BaseLayout$NavigationBarVisibility:[I

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviousNavigationBarVisibility()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1356
    :pswitch_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->requestToDimSystemUi()V

    goto :goto_0

    .line 1352
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->requestToRecoverSystemUi()V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public resume()V
    .locals 2

    const/4 v0, 0x0

    .line 1225
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    .line 1226
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateLayout()V

    .line 1227
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1229
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method setCurrentNavigationBarVisibility(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;)V
    .locals 0

    .line 1366
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mNavigationBarVisibility:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$NavigationBarVisibility;

    return-void
.end method

.method public setGridLineViewEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1450
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->enableGridLineView()V

    goto :goto_0

    .line 1452
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->disableGridLineView()V

    :goto_0
    return-void
.end method

.method public setIsCameraSwitching(Z)V
    .locals 0

    .line 1712
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    return-void
.end method

.method public setOnViewFinderGestureDetector(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;)V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 374
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setOnGestureDetectorListener(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 809
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "setOrientation: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 810
    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setOrientation(II)V

    return-void
.end method

.method public setOrientation(II)V
    .locals 1

    .line 814
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    .line 816
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_0

    .line 817
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout(I)V

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 821
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 824
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 825
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 826
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 827
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 828
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 829
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 830
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->setSensorOrientation(I)V

    .line 831
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 832
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoombar/Zoombar;->setSensorOrientation(I)V

    .line 833
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 834
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setUiOrientation(I)V

    .line 835
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->setOrientation(I)V

    .line 836
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->setSensorOrientation(I)V

    .line 837
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 838
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 839
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 840
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 841
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setUiOrientation(I)V

    .line 842
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setRotation(F)V

    .line 844
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    if-eqz p2, :cond_2

    .line 845
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setUiOrientation(I)V

    .line 847
    :cond_2
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSemiAutoControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 848
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSemiAutoControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->setOrientation(I)V

    .line 850
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mImageQualityControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 851
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mImageQualityControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->setOrientation(I)V

    :cond_4
    return-void
.end method

.method public setPreInflatedHeadUpDisplay(Landroid/view/View;)V
    .locals 0

    .line 1332
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    return-void
.end method

.method public setPreviewSurface(Landroid/view/View;)V
    .locals 0

    .line 511
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    return-void
.end method

.method public setStartDraggingSlopEnabled(Z)V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 420
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setStartDraggingSlopEnabled(Z)V

    return-void
.end method

.method public setViewFinderGestureDetectorEnabled(ZZ)V
    .locals 3

    .line 384
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_0

    move v2, p2

    move p2, p1

    move p1, v2

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_1

    .line 395
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 399
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object p2, p1, v1

    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object p2, p1, v0

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_0

    .line 403
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    new-array p1, v0, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 408
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    new-array p1, v0, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_0

    .line 411
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    new-array p1, v0, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    aput-object p2, p1, v1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    :goto_0
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .locals 4

    .line 669
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 671
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "INFLATE LAYOUT IN COMMON"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 672
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->inflate()V

    .line 674
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateLayout()V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 677
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V

    .line 679
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v2, :cond_2

    .line 680
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 681
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setViewFinderGestureDetectorEnabled(ZZ)V

    .line 685
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupTutorial()V

    .line 687
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->switchCaptureButtonGroupContainer()V

    .line 688
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup()V

    if-nez v0, :cond_3

    .line 689
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_4

    .line 690
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    .line 692
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSettingIndicators()V

    .line 693
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupTopIndicators()V

    .line 694
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupZoombar()V

    .line 695
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupRecordingIndicator()V

    .line 696
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupGridLineView()V

    .line 697
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPrimaryShortcut()V

    .line 698
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupModeShortcut()V

    .line 699
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSceneIndicators()V

    .line 700
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPredictiveCaptureIndicator()V

    .line 701
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupFrontAngleSwitchButton()V

    .line 703
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setOrientation(I)V

    .line 704
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateAppsUiMarginsForTalkBack()V

    .line 705
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSwitchAnimationView()V

    .line 709
    sget-object p1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isEmulateSideTouchEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 710
    sget-object p1, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->INSTANCE:Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {p1, v0, v1}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->create(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 713
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    .line 715
    :cond_5
    sget-object v0, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->INSTANCE:Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget-object v2, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {v0, v1, v2}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->create(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 718
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    .line 722
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->setup(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setupAutoReview()V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-nez v0, :cond_0

    .line 525
    new-instance v0, Lcom/sonyericsson/android/camera/view/AutoReviewController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    .line 527
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->setup()V

    :cond_1
    return-void
.end method

.method public setupBlankScreen()V
    .locals 3

    .line 1286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1287
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0c0029

    const/4 v2, 0x0

    .line 1291
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    .line 1292
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1293
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1294
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setupImageQualityControl(Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UiControlSettings;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/FocusRange;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/ShutterSpeed;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Iso;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/Ev;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor<",
            "Lcom/sonyericsson/android/camera/configuration/parameters/WhiteBalance;",
            ">;)V"
        }
    .end annotation

    move-object v11, p0

    .line 878
    iget-object v0, v11, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mImageQualityControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    iget-object v0, v11, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mImageQualityControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->release()V

    .line 883
    :cond_0
    invoke-virtual {v11}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0900e6

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 884
    new-instance v12, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;

    move-object v0, v12

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;)V

    iput-object v12, v11, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mImageQualityControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-void
.end method

.method public setupPredictiveCaptureIndicator()V
    .locals 3

    .line 1190
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    if-nez v0, :cond_0

    .line 1191
    new-instance v0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    .line 1193
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public setupPredictiveLaunchCoverView(Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;)V
    .locals 1

    .line 1725
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-nez v0, :cond_0

    .line 1727
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->inflate(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;)Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    .line 1728
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1729
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout(I)V

    :cond_0
    return-void
.end method

.method public setupPreferentialHeadUpDisplays()V
    .locals 5

    const-string v0, "[APP DETAIL] setup on-screen button : E"

    .line 635
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f090056

    .line 638
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 637
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 640
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 641
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 643
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f090058

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 645
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    .line 646
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v4, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-eq v3, v4, :cond_0

    .line 651
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 652
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 654
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 656
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 657
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 660
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateOnScreenButtonLayout()V

    goto :goto_1

    :cond_2
    const-string p0, "fail to setup"

    .line 662
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :goto_1
    const-string p0, "[APP DETAIL] setup on-screen button : X"

    .line 664
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method public setupPreviewView()V
    .locals 2

    .line 515
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setupSemiAutoControl(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 906
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSemiAutoControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSemiAutoControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->release()V

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 912
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSemiAutoControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-void
.end method

.method public showBlackScreen()V
    .locals 1

    .line 1272
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1273
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 1274
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method public showBlankScreen()V
    .locals 1

    .line 1299
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1300
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showContentsViewController()V
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 1262
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    :cond_0
    return-void
.end method

.method public showLeftIconContainer()V
    .locals 1

    .line 1430
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f0900bb

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    .line 1431
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateAppsUiMarginsForTalkBack()V
    .locals 3

    .line 1647
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_ON:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1648
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1650
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900b7

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1652
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1653
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public updateGridLine(II)V
    .locals 1

    .line 1469
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    if-le p2, v0, :cond_0

    .line 1470
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setViewSize(II)V

    :cond_0
    return-void
.end method

.method public updatePreviewContainer(II)V
    .locals 5

    .line 1611
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p2, :cond_1

    .line 1617
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1618
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v4

    if-ne v4, v1, :cond_0

    .line 1621
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1622
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1625
    :cond_0
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1626
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 1629
    :cond_1
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 1632
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1635
    :cond_2
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1639
    :goto_0
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1640
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1642
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviewContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
