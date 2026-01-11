.class public Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;
.super Ljava/lang/Object;
.source "BaseLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;,
        Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    }
.end annotation


# static fields
.field public static final EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

.field private static final TAG:Ljava/lang/String; = "BaseLayout"

.field private static mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;


# instance fields
.field private final mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

.field private mAutoHdrIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

.field private mCapturingButtonLayout:Landroid/widget/FrameLayout;

.field private mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

.field private mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

.field private mCurrentOrientation:I

.field private mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

.field private mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

.field private mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

.field private mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

.field private mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

.field private mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

.field private mHeadUpDisplay:Landroid/view/ViewGroup;

.field private mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

.field private mHintTextViewContainer:Landroid/widget/FrameLayout;

.field private mIsBlackScreenShowing:Z

.field private mIsCameraSwitching:Z

.field private mIsFirstDrawn:Z

.field private mIsNewIntentFromSecurity:Z

.field private final mIsOneShot:Z

.field private mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

.field private mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

.field private final mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

.field private final mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

.field private final mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

.field private mMainButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

.field private mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation
.end field

.field private mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

.field private mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

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

.field private mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
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

.field private mViewFinderDebugIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

.field private mViewFinderRect:Landroid/graphics/Rect;

.field private mWindowCover:Landroid/view/View;

.field private mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

.field private mZoomDialGroup:Landroid/widget/FrameLayout;

.field private mZoomDialViewContainer:Landroid/widget/FrameLayout;

.field private mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

.field private mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

.field private mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

.field private mZoombarGroup:Landroid/widget/FrameLayout;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActivity(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/CameraActivity;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGestureDetector(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFirstDrawn(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRootView(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/view/ViewGroup;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenAspect(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewFinderRect(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsFirstDrawn(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmIsTalkbackEffective()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;
    .locals 1

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsTalkbackEffective(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;)V
    .locals 0

    sput-object p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 260
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$1;

    invoke-direct {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$1;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    .line 268
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->UNKNOWN:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    return-void
.end method

.method public constructor <init>(Lcom/sonyericsson/android/camera/CameraActivity;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Z)V
    .locals 3

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 141
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 175
    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->EMPTY_LAZY_INITIALIZER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    .line 176
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    const/4 v1, 0x0

    .line 179
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 180
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsNewIntentFromSecurity:Z

    .line 198
    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    .line 201
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 203
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    .line 205
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    .line 207
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    .line 208
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    .line 272
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 273
    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 274
    iput-boolean p3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsOneShot:Z

    .line 277
    sget-boolean p2, Lcom/sonyericsson/android/camera/util/PerfLog;->IS_ENABLE:Z

    if-eqz p2, :cond_0

    .line 278
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootViewForRefLogEnabled;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    goto :goto_0

    .line 280
    :cond_0
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;

    invoke-direct {p2, p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$RootView;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    .line 283
    :goto_0
    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 284
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->createContainer(Landroid/content/Context;)[Landroid/view/View;

    move-result-object p2

    array-length p3, p2

    :goto_1
    if-ge v1, p3, :cond_1

    aget-object v0, p2, v1

    .line 285
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPreferredFocusView()V

    .line 301
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPreviewContainer()V

    .line 302
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSwitchAnimationContainer()V

    .line 303
    new-instance p2, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    const-string p3, "low-battery"

    invoke-direct {p2, p1, p3}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    .line 304
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "low-internal-storage"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 305
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "low-sd-card"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 306
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string p2, "photo-smile-capture"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 307
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    const-string/jumbo p2, "video-smile-capture"

    invoke-direct {p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    .line 311
    new-instance p1, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    invoke-direct {p1}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;-><init>()V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    return-void
.end method

.method private adaptPreviewLayoutMargin(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 1970
    instance-of p0, p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    .line 1971
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1972
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 1975
    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1978
    :cond_0
    iget p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr p0, p2

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 1981
    :cond_1
    instance-of p0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p0, :cond_3

    .line 1982
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1983
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result p0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_2

    .line 1986
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1987
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 1990
    :cond_2
    iput v1, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1991
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_3
    :goto_0
    return-object p1
.end method

.method private adjustmentWithSystemLayout()V
    .locals 6

    .line 624
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f09005d

    const v2, 0x7f0900ff

    const v3, 0x7f0900ee

    const v4, 0x7f0901b5

    .line 628
    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1

    .line 635
    aget v4, v1, v3

    .line 636
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 637
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v4, v2, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createContainer(Landroid/content/Context;)[Landroid/view/View;
    .locals 4

    .line 457
    invoke-static {}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->values()[Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Landroid/view/View;

    .line 459
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    .line 460
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    .line 461
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    .line 462
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c002f

    const/4 v3, 0x0

    .line 463
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    .line 464
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    .line 465
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    .line 467
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREFERRED_FOCUS:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    aput-object v1, v0, p1

    .line 468
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->SWITCH_ANIMATION_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 469
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->CAPTURE_BUTTON_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 470
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->HEAD_UP_DISPLAY_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 471
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREDICTIVE_LAUNCH_COVER_CONTAINER:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    aput-object v1, v0, p1

    .line 473
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->PREVIEW_CONTAINER_LAYOUT:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$ViewRootChild;->getIndex()I

    move-result p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    aput-object p0, v0, p1

    return-object v0
.end method

.method private inflate()V
    .locals 3

    .line 1500
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1501
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1502
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "HeadUpDisplay is already inflated."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1503
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 1504
    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    goto :goto_0

    .line 1506
    :cond_1
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2

    const-string v1, "HeadUpDisplay is not inflated."

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const v1, 0x7f0c0026

    .line 1507
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 1511
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1512
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1513
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1515
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900ff

    .line 1516
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 1518
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090102

    .line 1519
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    return-void
.end method

.method private repositionZoomDial()V
    .locals 6

    .line 1300
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1304
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v1, :cond_1

    .line 1309
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1310
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f07011a

    invoke-static {v1, v2, v3}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    .line 1309
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1316
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    .line 1317
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1319
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 1320
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1322
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1323
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1325
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1327
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v4, v5, :cond_2

    .line 1329
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1330
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1331
    invoke-static {v5}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    .line 1333
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1334
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move v1, v4

    :goto_0
    if-eq v1, v3, :cond_3

    .line 1338
    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginStart()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1339
    invoke-virtual {v2}, Landroid/widget/FrameLayout$LayoutParams;->getMarginEnd()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/16 v1, 0x55

    .line 1340
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1341
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private setupAutoHdrIndicators()V
    .locals 3

    .line 1207
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f090048

    .line 1208
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoHdrIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 1209
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupCaptureButtonGroup()V
    .locals 2

    .line 964
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090079

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 965
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup(Landroid/view/View;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 966
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 967
    const-string/jumbo p0, "setupCaptureButtonGroup: fails to setup"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->w([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setupCaptureButtonGroup(Landroid/view/View;)Z
    .locals 2

    .line 1003
    instance-of v0, p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-eqz v0, :cond_2

    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-nez v0, :cond_0

    .line 1005
    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    .line 1008
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v0, 0x7f090117

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMainButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 1009
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v1, 0x7f0901d3

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 1010
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    const v1, 0x7f0900cd

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    .line 1012
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-eqz v1, :cond_1

    .line 1013
    invoke-virtual {v1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    .line 1014
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    invoke-virtual {p1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    .line 1015
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

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

    .line 1102
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->isDeviceInSecurityLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NEWLY_ADDED_CONTENT_ONLY:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    goto :goto_0

    .line 1105
    :cond_0
    sget-object v0, Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;->NORMAL:Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;

    .line 1109
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isCameraSwitching()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1110
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_1

    .line 1111
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 1112
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getLocalContentInfo()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1113
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1116
    :goto_1
    new-instance v2, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1118
    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getStorage()Lcom/sonyericsson/cameracommon/storage/Storage;

    move-result-object v4

    invoke-direct {v2, v3, v4, v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/storage/Storage;Lcom/sonyericsson/cameracommon/contentsview/ContentLoader$SecurityLevel;Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v1, :cond_2

    .line 1123
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getLocalContentInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1126
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 1127
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsNewIntentFromSecurity:Z

    if-eqz p1, :cond_3

    .line 1128
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setNewIntentFromActivity()V

    .line 1129
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->getLocalContentInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 1130
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsNewIntentFromSecurity:Z

    .line 1132
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    .line 1133
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f0900ad

    .line 1134
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/cameracommon/contentsview/ContentsContainer;

    .line 1135
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method private setupFacingShortcut()V
    .locals 3

    .line 1159
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    .line 1162
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1163
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1164
    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1165
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupFrontAngleSwitchButton()V
    .locals 2

    .line 1060
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    if-nez v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->FRONT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 1061
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isSuperWideSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1062
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900db

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    .line 1064
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1065
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1066
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setupGridLineView()V
    .locals 2

    .line 1675
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-nez v0, :cond_0

    .line 1676
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    const/4 v1, 0x4

    .line 1677
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setVisibility(I)V

    .line 1679
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 1680
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1681
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateGridLine(II)V

    .line 1682
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setupModeShortcut(Z)V
    .locals 2

    .line 1149
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f09011f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    .line 1151
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->update(Z)V

    .line 1152
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f090126

    .line 1153
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    .line 1154
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getStoredSettings()Lcom/sonyericsson/android/camera/setting/StoredSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonyericsson/android/camera/setting/StoredSettings;->getMruSettings()Lcom/sonyericsson/android/camera/setting/MruSettings;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setMruSettings(Lcom/sonyericsson/android/camera/setting/MruSettings;)V

    .line 1155
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    return-void
.end method

.method private setupPreferredFocusView()V
    .locals 3

    .line 1073
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1074
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1075
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1076
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 1077
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 1078
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreferredFocusView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void
.end method

.method private setupPreviewContainer()V
    .locals 3

    .line 484
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 487
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setLayoutDirection(I)V

    .line 489
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    .line 490
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 491
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 492
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x50

    .line 493
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 494
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 496
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method private setupPrimaryShortcut()V
    .locals 2

    .line 1687
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f09014c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    return-void
.end method

.method private setupRecordingIndicator()V
    .locals 2

    .line 1350
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    if-nez v0, :cond_0

    .line 1351
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    .line 1353
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setScreenAspect(Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    .line 1354
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 1355
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 1356
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(I)V

    :cond_0
    return-void
.end method

.method private setupSceneIndicators()V
    .locals 4

    .line 1190
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f09017b

    .line 1191
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v3, 0x7f09017c

    .line 1192
    invoke-virtual {v2, v3}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    .line 1193
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->setSensorOrientation(I)V

    .line 1195
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f09017a

    .line 1196
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 1197
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupSettingIndicators()V
    .locals 3

    .line 1183
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f0900dd

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    .line 1184
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 1185
    new-instance v0, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f0901fa

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    .line 1186
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupSwitchAnimationContainer()V
    .locals 2

    .line 502
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 505
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setupSwitchAnimationView()V
    .locals 2

    .line 1865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    if-nez v0, :cond_0

    .line 1866
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    .line 1868
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setupTopIndicators()V
    .locals 3

    .line 1169
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    .line 1170
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    const v2, 0x7f090112

    .line 1171
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1170
    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f090114

    .line 1173
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1172
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1174
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f090116

    .line 1175
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1174
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1176
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v2, 0x7f09013c

    .line 1177
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    .line 1176
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    .line 1178
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    const v1, 0x7f090223

    .line 1179
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 1178
    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setup(Landroid/view/ViewStub;)V

    return-void
.end method

.method private setupTutorial()V
    .locals 3

    .line 1039
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    if-nez v0, :cond_0

    .line 1040
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

.method private setupViewFinderDebugInfoIndicators()V
    .locals 3

    .line 1201
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f0900b7

    .line 1202
    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderDebugIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    .line 1203
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->setSensorOrientation(I)V

    return-void
.end method

.method private setupZoomLineView()V
    .locals 2

    .line 2137
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    if-nez v0, :cond_0

    .line 2138
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    .line 2139
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2140
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->hide()V

    .line 2141
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    :cond_0
    return-void
.end method

.method private setupZoomSwitchButton()V
    .locals 4

    .line 1045
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    if-nez v0, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090245

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    .line 1048
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1049
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070139

    .line 1050
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1051
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0702a9

    .line 1052
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1054
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v3, v2

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1055
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setupZoombar()V
    .locals 3

    .line 1216
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00bc

    const/4 v2, 0x0

    .line 1218
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    const v1, 0x7f090246

    .line 1219
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    .line 1220
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setSensorOrientation(I)V

    .line 1221
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->hideImmediately()V

    .line 1223
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1225
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setZoomValueClickable(Z)V

    .line 1227
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->repositionZoombar()V

    return-void
.end method

.method private switchCaptureButtonGroupContainer()V
    .locals 3

    .line 1888
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1889
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    if-eqz v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    const v1, 0x7f090078

    .line 1891
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1893
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f090142

    .line 1894
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1896
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1897
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1900
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1901
    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    .line 1902
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-nez v1, :cond_0

    .line 1903
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private updateLayout()V
    .locals 6

    .line 545
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "updateLayout() is called."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 547
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 556
    :cond_1
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_3

    .line 559
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_2

    const-string v0, "ActivityInfo.SCREEN_ORIENTATION_PORTRAIT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 562
    :cond_2
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

    .line 563
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v1

    const/16 v1, 0x5a

    goto :goto_0

    .line 566
    :cond_3
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_4

    const-string v0, "ActivityInfo.SCREEN_ORIENTATION_LANDSCAPE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 573
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->updatePreviewContainerLayout(Landroid/graphics/Rect;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    .line 577
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    int-to-float v1, v1

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setRotation(F)V

    .line 578
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 579
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 581
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateOnScreenButtonLayout()V

    .line 582
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adjustmentWithSystemLayout()V

    return-void
.end method

.method private updateOnScreenButtonLayout()V
    .locals 5

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 587
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz p0, :cond_0

    .line 588
    const-string/jumbo p0, "updateOnScreenButtonLayout: pre-loaded layout is null"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    return-void

    .line 599
    :cond_1
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v0

    .line 600
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v1, :cond_2

    .line 601
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateOnScreenButtonLayout: orientation = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 608
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 609
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 612
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 613
    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    const/16 v4, 0x5a

    if-ne v2, v1, :cond_4

    const/high16 v1, -0x40800000    # -1.0f

    mul-float/2addr v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    move v3, v0

    .line 618
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    int-to-float v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 619
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 620
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method public adaptLayoutParam(Landroid/graphics/Rect;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 2008
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getHeightMargin(Landroid/graphics/Rect;)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adaptPreviewLayoutMargin(Landroid/view/ViewGroup$LayoutParams;I)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V
    .locals 2

    .line 440
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 443
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->addExclusiveView(Landroid/view/View;)V

    return-void
.end method

.method public addZoomDial()V
    .locals 2

    .line 1285
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f09023f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1286
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1287
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1288
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->repositionZoomDial()V

    :cond_0
    return-void
.end method

.method public attachToWindow()V
    .locals 3

    .line 511
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

    .line 975
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 976
    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    sget v1, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 978
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v1

    .line 979
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 980
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    mul-int/lit8 v0, v0, 0x4

    .line 981
    div-int/lit8 v1, v0, 0x3

    .line 982
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07011a

    .line 983
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 984
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070139

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 986
    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v6, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v5, v6, :cond_0

    .line 988
    div-int/lit8 v3, v0, 0x9

    goto :goto_0

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v5, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v5, :cond_1

    const/4 v3, 0x0

    move v4, v3

    :cond_1
    :goto_0
    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    .line 994
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 999
    invoke-static {p0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result p0

    sub-int/2addr v2, p0

    return v2
.end method

.method public compareViewFinderRatio(IIF)Z
    .locals 1

    .line 2085
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p0, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    sub-float/2addr p0, p3

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3d4ccccd    # 0.05f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public computeRadiusOfAnimation()V
    .locals 1

    .line 1873
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    if-nez v0, :cond_0

    return-void

    .line 1877
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;->setMaxRadius(Landroid/graphics/Rect;)V

    return-void
.end method

.method public disableGridLineView()V
    .locals 0

    .line 1659
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz p0, :cond_0

    .line 1660
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->disable()V

    :cond_0
    return-void
.end method

.method public disableZoomLineView()V
    .locals 0

    .line 2108
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    if-eqz p0, :cond_0

    .line 2109
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->disable()V

    :cond_0
    return-void
.end method

.method public enableGridLineView()V
    .locals 0

    .line 1653
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz p0, :cond_0

    .line 1654
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->enable()V

    :cond_0
    return-void
.end method

.method public enableZoomLineView(Z)V
    .locals 0

    .line 2097
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 2101
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->enable()V

    goto :goto_0

    .line 2103
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->disable()V

    :goto_0
    return-void
.end method

.method public getActivity()Lcom/sonyericsson/android/camera/CameraActivity;
    .locals 0

    .line 1574
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    return-object p0
.end method

.method public getAllPrimaryShortcutView()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1710
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->getAllPrimaryShortcutView()Ljava/util/List;

    move-result-object v0

    .line 1711
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAutoHdrIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .locals 0

    .line 815
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoHdrIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object p0
.end method

.method public getAutoReview()Lcom/sonyericsson/android/camera/view/AutoReviewController;
    .locals 0

    .line 1097
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    return-object p0
.end method

.method public getBatteryIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;
    .locals 0

    .line 775
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    return-object p0
.end method

.method public getBlurViewController()Lcom/sonyericsson/android/camera/view/blur/BlurViewController;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBurstCountView()Lcom/sonyericsson/android/camera/view/BurstCountView;
    .locals 3

    .line 1578
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getCenterContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const v1, 0x7f090067

    .line 1579
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1582
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v2, 0x7f0c00a7

    invoke-static {p0, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1584
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1587
    :cond_0
    check-cast v2, Lcom/sonyericsson/android/camera/view/BurstCountView;

    return-object v2
.end method

.method public getBurstCountViewMargin(Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 6

    .line 1592
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getBurstCountView()Lcom/sonyericsson/android/camera/view/BurstCountView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/BurstCountView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1593
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v1}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    .line 1595
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 1596
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviewSize()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1598
    sget-object v4, Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;->NORMAL:Lcom/sonyericsson/android/camera/configuration/parameters/CapturingMode;

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne p1, v4, :cond_1

    .line 1599
    invoke-virtual {p0, v2, v3, v5}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1600
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isDisplaySizeBiggerThanDefault()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1601
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr p0, v1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 1604
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getManualIqControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/ManualIqControl;->getView()Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView;->getX()F

    move-result p0

    float-to-int p0, p0

    sub-int/2addr p0, v1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 1608
    :cond_1
    invoke-virtual {p0, v2, v3, v5}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result p1

    if-nez p1, :cond_3

    const p1, 0x3faaaaab

    .line 1609
    invoke-virtual {p0, v2, v3, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 1612
    :cond_2
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1613
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getX()F

    move-result p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    sub-int/2addr p0, v1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 1610
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    sub-int/2addr p0, v1

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :goto_1
    return-object v0
.end method

.method public getCenterContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 1531
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f090089

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getConditionIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .locals 0

    .line 811
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object p0
.end method

.method public getContentsViewController()Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;
    .locals 0

    .line 1144
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    return-object p0
.end method

.method public getCurrentOrientation()I
    .locals 0

    .line 1140
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    return p0
.end method

.method public getFacingShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;
    .locals 0

    .line 1702
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    return-object p0
.end method

.method public getFrontAngleSwitchButton()Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;
    .locals 0

    .line 1083
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    return-object p0
.end method

.method public getGeoTagIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;
    .locals 0

    .line 770
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    return-object p0
.end method

.method public getGridLineView()Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;
    .locals 0

    .line 1706
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    return-object p0
.end method

.method public getHeightMargin(Landroid/graphics/Rect;)I
    .locals 6

    .line 2026
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_0

    .line 2028
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p1

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 2029
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 2030
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2029
    invoke-virtual {p1, v1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2028
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 2032
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    .line 2033
    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2032
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2036
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getViewFinderSize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2038
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2039
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 2042
    invoke-virtual {p0, v1, v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2059
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p0, v0, :cond_1

    .line 2060
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x40600000    # 3.5f

    mul-float/2addr p0, p1

    const/high16 p1, 0x41100000    # 9.0f

    div-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_1

    .line 2062
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    div-int/lit8 p0, p0, 0x3

    goto :goto_1

    :cond_2
    const p1, 0x3faaaaab

    .line 2064
    invoke-virtual {p0, v1, v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->MMS:Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;

    .line 2065
    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/configuration/parameters/VideoSize;->getAspect()F

    move-result p1

    invoke-virtual {p0, v1, v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->compareViewFinderRatio(IIF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2067
    :cond_3
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->TWENTYONE_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne p1, v0, :cond_4

    .line 2068
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f07011a

    .line 2069
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public getHintTextViewContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 1543
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    return-object v0

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f0900e7

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHintTextViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLazyInflatedUiComponentContainerBack()Landroid/widget/FrameLayout;
    .locals 3

    .line 1559
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090101

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1561
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v2, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v1, v2, :cond_0

    .line 1566
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    .line 1567
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f07011a

    invoke-static {p0, v1, v2}, Lcom/sonyericsson/cameracommon/utility/ResourceUtil;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x0

    .line 1566
    invoke-virtual {v0, p0, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    :cond_0
    return-object v0
.end method

.method public getLowMemoryInternalIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .locals 0

    .line 779
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object p0
.end method

.method public getLowMemorySdIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .locals 0

    .line 783
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object p0
.end method

.method public getManualIqControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation

    .line 831
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-object p0
.end method

.method public getModeButtonShortcut()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;
    .locals 0

    .line 819
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    return-object p0
.end method

.method public getMruButtonContainer()Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;
    .locals 0

    .line 823
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    return-object p0
.end method

.method public getOnScreenButtonGroup()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;
    .locals 0

    .line 1023
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    return-object p0
.end method

.method public getOnScreenExtraButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .locals 0

    .line 1035
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mExtraButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object p0
.end method

.method public getOnScreenMainButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .locals 0

    .line 1027
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMainButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object p0
.end method

.method public getOnScreenSubButton()Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;
    .locals 0

    .line 1031
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSubButton:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButton;

    return-object p0
.end method

.method public getPhotoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .locals 0

    .line 791
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object p0
.end method

.method public getPredictiveCaptureIndicatorController()Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;
    .locals 0

    .line 799
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    return-object p0
.end method

.method public getPredictiveLaunchCoverView()Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;
    .locals 0

    .line 1950
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    return-object p0
.end method

.method public getPreview()Landroid/view/View;
    .locals 0

    .line 893
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    return-object p0
.end method

.method public getPreviewContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 897
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPreviewContainerRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 1555
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    return-object p0
.end method

.method public getPreviewOverlayContainer()Landroid/widget/FrameLayout;
    .locals 0

    .line 1551
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewOverlayContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPreviewSize()Landroid/graphics/Rect;
    .locals 6

    .line 2012
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2013
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v1

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 2014
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 2015
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v5

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-direct {v2, v3, v4, v5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2014
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getRectAccordingToLayoutOrientation(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 2013
    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getPrimaryShortcut()Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;
    .locals 0

    .line 1695
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    return-object p0
.end method

.method public getRecordingIndicator()Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;
    .locals 0

    .line 1093
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    return-object p0
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 0

    .line 1527
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getSceneIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    return-object p0
.end method

.method public getSimpleIqControl()Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer<",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;",
            ">;"
        }
    .end annotation

    .line 827
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-object p0
.end method

.method public getSuperSlowMotionTriggerAnimation()Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;
    .locals 0

    .line 766
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    return-object p0
.end method

.method public getSwitchAnimationView()Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;
    .locals 0

    .line 1881
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSwitchAnimationView:Lcom/sonyericsson/android/camera/view/baselayout/SwitchAnimationView;

    return-object p0
.end method

.method public getThermalIndicator()Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    return-object p0
.end method

.method public getTopIndicator()Landroid/view/View;
    .locals 0

    .line 1346
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTopIndicatorsContainer:Landroid/view/View;

    return-object p0
.end method

.method public getTutorial()Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;
    .locals 0

    .line 1090
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    return-object p0
.end method

.method public getVideoSmileCaptureIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;
    .locals 0

    .line 795
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    return-object p0
.end method

.method public getViewFinderDebugInfoIndicator()Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;
    .locals 0

    .line 807
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderDebugIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    return-object p0
.end method

.method public getViewFinderRect()Landroid/graphics/Rect;
    .locals 0

    .line 901
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getZoomBar()Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;
    .locals 0

    .line 1492
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    return-object p0
.end method

.method public getZoomDial()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
    .locals 0

    .line 1496
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    return-object p0
.end method

.method public getZoomDialViewContainer()Landroid/widget/FrameLayout;
    .locals 2

    .line 1535
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialViewContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1536
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090240

    .line 1537
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialViewContainer:Landroid/widget/FrameLayout;

    .line 1539
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialViewContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getZoomLineView()Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;
    .locals 0

    .line 2090
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getZoomSwitchButton()Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;
    .locals 0

    .line 1087
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    return-object p0
.end method

.method public grayOutContentsViewController()V
    .locals 0

    .line 1438
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz p0, :cond_0

    .line 1439
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->grayOut()V

    :cond_0
    return-void
.end method

.method public hideAutoReview()V
    .locals 0

    .line 1633
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-eqz p0, :cond_0

    .line 1634
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->hide()V

    :cond_0
    return-void
.end method

.method public hideBlackScreen()V
    .locals 1

    .line 1457
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-eqz v0, :cond_1

    .line 1458
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1459
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 1460
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method public hideContentsViewController()V
    .locals 0

    .line 1377
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz p0, :cond_0

    .line 1378
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->hide()V

    :cond_0
    return-void
.end method

.method public hideLeftIconContainer()V
    .locals 1

    .line 1625
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f090104

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x4

    .line 1626
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hidePredictiveLaunchCover(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V
    .locals 0

    .line 1963
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz p0, :cond_0

    .line 1964
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->hide(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_0
    return-void
.end method

.method public isAutoReviewShowing()Z
    .locals 0

    .line 1912
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-eqz p0, :cond_0

    .line 1913
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->isShowing()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isBlackScreenShowing()Z
    .locals 0

    .line 1465
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    return p0
.end method

.method public isCameraSwitching()Z
    .locals 0

    .line 1923
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    return p0
.end method

.method public isDisplaySizeBiggerThanDefault()Z
    .locals 1

    .line 449
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    sget v0, Landroid/util/DisplayMetrics;->DENSITY_DEVICE_STABLE:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHeadUpDisplayReady()Z
    .locals 0

    .line 1369
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isZoomLineShow()Z
    .locals 0

    .line 2126
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    if-eqz p0, :cond_0

    .line 2127
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->isVisible()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public pause()V
    .locals 3

    .line 1405
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_0

    .line 1406
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->pause()V

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1409
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setConstraint(Z)V

    .line 1410
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->prepareBeforeRecording(I)V

    .line 1411
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setVisibility(I)V

    .line 1413
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 1414
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1416
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz v0, :cond_4

    .line 1417
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsOneShot:Z

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 1418
    invoke-virtual {v0, v2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setAlpha(F)V

    .line 1420
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->disable()V

    .line 1422
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    const/4 v2, 0x4

    .line 1424
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1426
    :cond_5
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    if-eqz p0, :cond_6

    .line 1427
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setAvailability(Z)V

    :cond_6
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 1444
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1445
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public release()V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    if-eqz v0, :cond_0

    .line 741
    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->release()V

    .line 744
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz v0, :cond_1

    .line 745
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->release()V

    .line 748
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 749
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 752
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 753
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 756
    :cond_3
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    .line 757
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFront:Landroid/widget/FrameLayout;

    .line 758
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLazyInflatedUiComponentContainerFullScreen:Landroid/widget/FrameLayout;

    .line 759
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    .line 760
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    .line 761
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplayContainer:Landroid/widget/FrameLayout;

    .line 762
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    return-void
.end method

.method public releasePredictiveLaunchCover()V
    .locals 3

    .line 1954
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1955
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1956
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->setVisibility(I)V

    .line 1957
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1958
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    :cond_0
    return-void
.end method

.method public reloadContentsViewController(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-nez v0, :cond_0

    .line 1384
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    goto :goto_0

    .line 1386
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->reload()V

    :goto_0
    return-void
.end method

.method public removeZoomDial()V
    .locals 1

    .line 1296
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getZoomDialViewContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public repositionZoombar()V
    .locals 6

    .line 1231
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->EIGHTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-ne v0, v1, :cond_1

    .line 1236
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07011a

    .line 1237
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1241
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    .line 1242
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1244
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    .line 1245
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1247
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1249
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v4

    sget-object v5, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v4, v5, :cond_2

    .line 1251
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1252
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 1254
    :cond_2
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 1255
    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :goto_1
    if-eq v4, v3, :cond_3

    .line 1258
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1259
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombarGroup:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_3
    return-void
.end method

.method public resume()V
    .locals 1

    const/4 v0, 0x0

    .line 1396
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsFirstDrawn:Z

    .line 1397
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateLayout()V

    .line 1398
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 1400
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setGridLineViewEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1640
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->enableGridLineView()V

    goto :goto_0

    .line 1642
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->disableGridLineView()V

    :goto_0
    return-void
.end method

.method public setGridLineViewType(Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;Lcom/sonyericsson/android/camera/configuration/parameters/FrameLines;)V
    .locals 0

    .line 1647
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz p0, :cond_0

    .line 1648
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setType(Lcom/sonyericsson/android/camera/configuration/parameters/GridLine;Lcom/sonyericsson/android/camera/configuration/parameters/FrameLines;)V

    :cond_0
    return-void
.end method

.method public setIsCameraSwitching(Z)V
    .locals 0

    .line 1919
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsCameraSwitching:Z

    return-void
.end method

.method public setIsNewIntentFromSecurity(Z)V
    .locals 0

    .line 1469
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsNewIntentFromSecurity:Z

    return-void
.end method

.method public setLayoutMarginAsPreview(Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3

    .line 1835
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreview()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1841
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreview()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1842
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getConfigurationOrientation()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 1844
    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1845
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 1847
    :cond_1
    iput v2, p1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1848
    iget p0, p0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_0
    return-void
.end method

.method public setOnViewFinderGestureDetector(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;)V
    .locals 2

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_0

    .line 388
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 390
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setOnGestureDetectorListener(Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$OnViewFinderGestureDetectorListener;)V

    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .line 835
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "setOrientation: "

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 836
    :cond_0
    invoke-virtual {p0, p1, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setOrientation(II)V

    return-void
.end method

.method public setOrientation(II)V
    .locals 1

    .line 840
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    .line 842
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-eqz v0, :cond_0

    .line 843
    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout(I)V

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 847
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 850
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 851
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mTutorial:Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/tutorial/TutorialController;->setUiOrientation(I)V

    .line 852
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mOnScreenButtonGroup:Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/onscreenbutton/OnScreenButtonGroup;->setUiOrientation(I)V

    .line 853
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->setSensorOrientation(I)V

    .line 854
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGeoTag:Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/GeotagIndicator;->setSensorOrientation(I)V

    .line 855
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mThermal:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 856
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSceneIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconTextIndicator;->setSensorOrientation(I)V

    .line 857
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderDebugIndicator:Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/TextIndicator;->setSensorOrientation(I)V

    .line 858
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mConditionIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 859
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoHdrIndicator:Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/indicators/Indicator;->setSensorOrientation(I)V

    .line 860
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoombar:Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;

    if-eqz v0, :cond_2

    .line 861
    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/Zoombar;->setSensorOrientation(I)V

    .line 863
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setSensorOrientation(I)V

    .line 864
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setOrientation(I)V

    .line 865
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRecordingIndicator:Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;

    invoke-virtual {v0, p2}, Lcom/sonyericsson/cameracommon/viewfinder/recordingindicator/RecordingIndicator;->setOrientation(I)V

    .line 866
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPrimaryShortcut:Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/PrimaryShortcutGroup;->setUiOrientation(I)V

    .line 867
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFacingShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ShortcutButton;->setUiOrientation(I)V

    .line 868
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->setOrientation(I)V

    .line 869
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowBattery:Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/LowBatteryIndicator;->setSensorOrientation(I)V

    .line 870
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowInternalStorage:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 871
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mLowSdCard:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 872
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPhotoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 873
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mVideoSmileCapture:Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/indicators/IconIndicator;->setSensorOrientation(I)V

    .line 874
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mModeButtonShortcut:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/ModeSelectorButton;->setUiOrientation(I)V

    .line 875
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mMruButtonContainer:Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;

    invoke-static {p1}, Lcom/sonyericsson/cameracommon/utility/RotationUtil;->getAngle(I)F

    move-result v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/android/camera/view/baselayout/settingshortcut/MruButtonContainer;->setRotation(F)V

    .line 877
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mFrontAngleSwitchButton:Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;

    if-eqz p2, :cond_3

    .line 878
    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/FrontAngleSwitchButton;->setUiOrientation(I)V

    .line 880
    :cond_3
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomSwitchButton:Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;

    if-eqz p2, :cond_4

    .line 881
    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/ZoomSwitchButton;->setUiOrientation(I)V

    .line 883
    :cond_4
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 884
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p2, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->setOrientation(I)V

    .line 886
    :cond_5
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 887
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->setOrientation(I)V

    :cond_6
    return-void
.end method

.method public setPreInflatedHeadUpDisplay(Landroid/view/View;)V
    .locals 0

    .line 1523
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreInflatedHeadUpDisplay:Landroid/view/View;

    return-void
.end method

.method public setPreviewSurface(Landroid/view/View;)V
    .locals 0

    .line 519
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    return-void
.end method

.method public setStartDraggingSlopEnabled(Z)V
    .locals 2

    .line 433
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_0

    .line 434
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 436
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setStartDraggingSlopEnabled(Z)V

    return-void
.end method

.method public setViewFinderGestureDetectorEnabled(ZZ)V
    .locals 3

    .line 400
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v0, v1, :cond_0

    move v2, p2

    move p2, p1

    move p1, v2

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v0, :cond_1

    .line 411
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 415
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    filled-new-array {p1, p2}, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_0

    .line 419
    :cond_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->HORIZONTAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    filled-new-array {p1}, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 424
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->VERTICAL:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    filled-new-array {p1}, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    goto :goto_0

    .line 427
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;->NONE:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    filled-new-array {p1}, [Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;->setAcceptDragDirection([Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector$Direction;)V

    :goto_0
    return-void
.end method

.method public setup(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;Z)V
    .locals 4

    .line 677
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 679
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const-string v0, "INFLATE LAYOUT IN COMMON"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 680
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->inflate()V

    .line 682
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateLayout()V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 685
    :goto_0
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    invoke-static {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->resolveLayoutDependencyOnDevice(Landroid/app/Activity;Landroid/view/View;)V

    .line 687
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    if-nez v2, :cond_2

    .line 688
    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v2, v3}, Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGestureDetector:Lcom/sonyericsson/android/camera/view/baselayout/ViewFinderGestureDetector;

    .line 689
    invoke-virtual {p0, v1, v1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setViewFinderGestureDetectorEnabled(ZZ)V

    .line 693
    :cond_2
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupTutorial()V

    .line 695
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->switchCaptureButtonGroupContainer()V

    .line 696
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup()V

    if-nez v0, :cond_3

    .line 697
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_4

    .line 698
    :cond_3
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupContentsView(Lcom/sonyericsson/cameracommon/contentsview/ContentPallet$ThumbnailStateListener;)V

    .line 700
    :cond_4
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSettingIndicators()V

    .line 701
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupTopIndicators()V

    .line 702
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupZoombar()V

    .line 703
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupZoomDial()V

    .line 704
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupRecordingIndicator()V

    .line 705
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupGridLineView()V

    .line 706
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPrimaryShortcut()V

    .line 707
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupFacingShortcut()V

    .line 708
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupModeShortcut(Z)V

    .line 709
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSceneIndicators()V

    .line 710
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupViewFinderDebugInfoIndicators()V

    .line 711
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupAutoHdrIndicators()V

    .line 712
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupPredictiveCaptureIndicator()V

    .line 713
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupFrontAngleSwitchButton()V

    .line 714
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupZoomSwitchButton()V

    .line 715
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupZoomLineView()V

    .line 717
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setOrientation(I)V

    .line 718
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateAppsUiMarginsForTalkBack()V

    .line 719
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupSwitchAnimationView()V

    .line 723
    sget-object p1, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->INSTANCE:Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {p1, p2}, Lcom/sonyericsson/android/camera/debug/DebugParameterUtils;->isEmulateSideTouchEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 724
    sget-object p1, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->INSTANCE:Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget-object v0, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->LEFT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {p1, p2, v0}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->create(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 727
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    .line 729
    :cond_5
    sget-object p2, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->INSTANCE:Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mHeadUpDisplay:Landroid/view/ViewGroup;

    sget-object v1, Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;->RIGHT:Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;

    invoke-virtual {p2, v0, v1}, Lcom/sonyericsson/android/camera/debug/SideTouchEmulateViewFactory;->create(Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/SideTouchEventDetector$SideTouchArea;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 732
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->addViewFinderGestureDetectorExclusiveView(Landroid/view/View;)V

    .line 736
    :cond_6
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSuperSlowMotionTriggerAnimation:Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/SuperSlowMotionTriggerAnimationController;->setup(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public setupAutoReview()V
    .locals 2

    .line 532
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Lcom/sonyericsson/android/camera/view/AutoReviewController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-direct {v0, v1, p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;-><init>(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    .line 535
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->isHeadUpDisplayReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mAutoReview:Lcom/sonyericsson/android/camera/view/AutoReviewController;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/AutoReviewController;->setup()V

    :cond_1
    return-void
.end method

.method public setupBlankScreen()V
    .locals 3

    .line 1473
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    if-nez v0, :cond_1

    .line 1474
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v1, 0x7f0c002d

    const/4 v2, 0x0

    .line 1478
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    .line 1479
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1480
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1481
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    invoke-virtual {v0, p0, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setupManualIqControl(Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/setting/UiControlSettings;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;",
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
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    move-object v13, p0

    .line 916
    iget-object v0, v13, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    iget-object v0, v13, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->release()V

    .line 921
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f090133

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/ViewGroup;

    .line 922
    new-instance v14, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    invoke-direct/range {v0 .. v12}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/setting/UiControlSettings;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/manualiqcontrol/ManualIqControlView$OnTabAvailableListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/EnumValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;)V

    iput-object v14, v13, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mManualIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-void
.end method

.method public setupPredictiveCaptureIndicator()V
    .locals 3

    .line 1361
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    if-nez v0, :cond_0

    .line 1362
    new-instance v0, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;-><init>(Landroid/app/Activity;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveCaptureIndicatorController:Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;

    .line 1364
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCurrentOrientation:I

    invoke-virtual {v0, p0}, Lcom/sonyericsson/android/camera/view/PredictiveCaptureIndicatorController;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public setupPredictiveLaunchCoverView(Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;Landroid/graphics/Rect;)V
    .locals 2

    .line 1936
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    if-nez v0, :cond_0

    .line 1938
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, p1, p2, v1, p3}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->inflate(Landroid/content/Context;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView$PredictiveLaunchCoverType;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;Landroid/graphics/Rect;)Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    .line 1939
    iget-object p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverContainer:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1940
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPredictiveLaunchCoverView:Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/PredictiveLaunchCoverView;->updateLayout(I)V

    :cond_0
    return-void
.end method

.method public setupPreferentialHeadUpDisplays()V
    .locals 5

    .line 643
    const-string v0, "[APP DETAIL] setup on-screen button : E"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v1, 0x7f090079

    .line 646
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 645
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setupCaptureButtonGroup(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 647
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 648
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 649
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mViewFinderRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 651
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mCapturingButtonLayout:Landroid/widget/FrameLayout;

    const v2, 0x7f090082

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v2

    .line 654
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    sget-object v4, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;->SIXTEEN_NINE:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    if-eq v3, v4, :cond_0

    .line 659
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 660
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v4

    sub-int/2addr v4, v2

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 662
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->calculateCaptureButtonAreaHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 664
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 665
    invoke-virtual {v0, v1, v1, v2, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 668
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->updateOnScreenButtonLayout()V

    goto :goto_1

    .line 670
    :cond_2
    const-string p0, "fail to setup"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 672
    :goto_1
    const-string p0, "[APP DETAIL] setup on-screen button : X"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    return-void
.end method

.method public setupPreviewView()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreviewContainerLayout:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;

    iget-object v0, v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$PreviewContainerLayout;->mPreviewContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mPreview:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public setupSimpleIqControl(Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 947
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl;->release()V

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getActivity()Lcom/sonyericsson/android/camera/CameraActivity;

    move-result-object v0

    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    .line 953
    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$3;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;Landroid/view/ViewGroup;Lcom/sonyericsson/android/camera/view/overlaycontrol/OverlayControl$StateListener;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Lcom/sonyericsson/android/camera/view/overlaycontrol/ValueAccessor;Z)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mSimpleIqControl:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$LazyInitializer;

    return-void
.end method

.method public setupZoomDial()V
    .locals 3

    .line 1269
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-virtual {v0}, Lcom/sonyericsson/android/camera/CameraActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00bd

    const/4 v2, 0x0

    .line 1271
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    const v1, 0x7f090184

    .line 1273
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    const/4 v1, 0x1

    .line 1274
    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->requestDisallowInterceptTouchEvent(Z)V

    .line 1275
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDialGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setParent(Landroid/view/View;)V

    .line 1276
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideImmediately()V

    :cond_0
    return-void
.end method

.method public showBlackScreen()V
    .locals 1

    .line 1449
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1450
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsBlackScreenShowing:Z

    .line 1451
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "invoke"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1452
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mRootView:Landroid/view/ViewGroup;

    const/high16 v0, -0x1000000

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method public showBlankScreen()V
    .locals 1

    .line 1486
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mWindowCover:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 1487
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public showContentsViewController()V
    .locals 0

    .line 1432
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mContentsViewController:Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;

    if-eqz p0, :cond_0

    .line 1433
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/contentsview/ContentsViewController;->show()V

    :cond_0
    return-void
.end method

.method public showLeftIconContainer()V
    .locals 1

    .line 1620
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v0, 0x7f090104

    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    .line 1621
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateAppsUiMarginsForTalkBack()V
    .locals 3

    .line 1854
    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mIsTalkbackEffective:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    sget-object v1, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;->TALKBACK_ON:Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout$IsTalkbackEffective;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getNavigationBarMargin(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1857
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mActivity:Lcom/sonyericsson/android/camera/CameraActivity;

    const v1, 0x7f090100

    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1859
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1860
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_1
    return-void
.end method

.method public updateGridLine(II)V
    .locals 1

    .line 1665
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mGridLineView:Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    if-le p2, v0, :cond_0

    .line 1666
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/cameracommon/viewfinder/GridLineView;->setViewSize(II)V

    :cond_0
    return-void
.end method

.method public updatePreviewContainer(Landroid/graphics/Rect;II)V
    .locals 1

    .line 1819
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1822
    invoke-virtual {p0, p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adaptLayoutParam(Landroid/graphics/Rect;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1824
    iput p2, p1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1825
    iput p3, p1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1827
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setLayoutMarginAsPreview(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 1828
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->getPreviewContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateZoomLine(II)V
    .locals 1

    .line 2120
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    if-le p2, v0, :cond_0

    .line 2121
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->setViewSize(II)V

    :cond_0
    return-void
.end method

.method public updateZoomLineView(F)V
    .locals 0

    .line 2114
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->mZoomLineView:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;

    if-eqz p0, :cond_0

    .line 2115
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomLineView;->update(F)V

    :cond_0
    return-void
.end method
