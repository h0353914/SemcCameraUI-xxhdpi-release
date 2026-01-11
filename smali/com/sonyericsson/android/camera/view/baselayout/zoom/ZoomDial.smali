.class public Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;
.super Landroid/widget/FrameLayout;
.source "ZoomDial.java"


# static fields
.field private static BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal; = null

.field public static final BOKEH_MAX_ZOOM_RATIO:F = 5.0f

.field private static final BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

.field public static final DELAY_ZOOM_DIAL_BAR_HIDE_MILLIS:I = 0xfa0

.field public static final DELAY_ZOOM_DIAL_HIDE_MILLIS:I = 0x1f4

.field private static final DIAL_BAR_MEASURED_HEIGHT:I = 0x7e

.field private static final DIAL_BAR_MEASURED_WIDTH:I = 0x654

.field private static final GRAY_OUT_ALPHA:F = 0.4f

.field private static final IMMEDIATE_ANIMATION_DURATION_IN_MILLIS:J = 0x0L

.field private static final INVISIBLE_ALPHA:F = 0.0f

.field private static final INVISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final SWITCH_POINT_MAIN_ZOOM_VALUE:F = 1.0f

.field private static final SWITCH_POINT_NINE_THRESHOLD_VALUE:F = 1.0f

.field public static final SWITCH_POINT_ZOOM_VALUE:F = 2.0f

.field public static final SWITCH_POINT_ZOOM_VALUE_MAX:F = 10.0f

.field public static final TRANSFER_CONSTANT:F = 20.0f

.field private static final UNREACHABLE_ZOOM_VALUES:[F

.field private static final VISIBLE_ALPHA:F = 1.0f

.field private static final VISIBLE_ANIMATION_DURATION_IN_MILLIS:J = 0x64L

.field public static final WIDE_ZOOM_MAX_RATIO:F = 0.6f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_DX:F = 0.0f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_DY:F = 1.0f

.field private static final ZOOM_DIAL_BUTTON_TEXT_SHADOW_RADIUS:F = 4.0f

.field private static final ZOOM_DIAL_MAX_ALPHA:F = 255.0f

.field public static final ZOOM_MAGNIFICATION_COEFFICIENT:F

.field public static final mZoomPoint0Step:I = 0x0

.field public static final mZoomPoint1Step:I = 0xa8

.field public static final mZoomPoint2Step:I = 0x198

.field public static final mZoomPoint3Step:I = 0x3c6


# instance fields
.field private bt:I

.field changed:Z

.field private circle_zoom1:Landroid/widget/ImageView;

.field public eventEnable:Z

.field private event_handler:Landroid/view/View;

.field private fPointText:Ljava/lang/String;

.field private firstPointText:Ljava/lang/String;

.field private firstPointTextDescription:Ljava/lang/String;

.field private m0dot7ToFirstPointWidth:I

.field private mClickable:Z

.field private mCurrentStep:I

.field private mCurrentZoomMagnification:F

.field private mDelayZoomDialHideMillis:I

.field private mDialbarArea:Landroid/widget/FrameLayout;

.field private final mDialbarAreaHideEvent:Ljava/lang/Runnable;

.field private mDialbarHideStart:J

.field private mFirstToSecondPointWidth:I

.field private final mHideDelyedTask:Ljava/lang/Runnable;

.field private final mHideEvent:Ljava/lang/Runnable;

.field private mIsBokehMode:Z

.field private mIsDirectionRtl:Z

.field private mIsGray:Z

.field private mIsNonLogicCameraVideo:Z

.field private mIsRecording:Z

.field private mIsShown:Z

.field private mIsWideCameraSupported:Z

.field private mIsWideMode:Z

.field private mIsZooming:Z

.field private mLatestZoomRatio:I

.field private mLeftImageLayout:Landroid/widget/LinearLayout;

.field private mMagnificationBaseRatio:F

.field private mMaxZoomStep:I

.field private mMovedX:F

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPrevX:F

.field private mRunAfterHide:Ljava/lang/Runnable;

.field private mSCaleDot0Layout:Landroid/widget/LinearLayout;

.field private mSCaleDot1Layout:Landroid/widget/LinearLayout;

.field private mSCaleDot2Layout:Landroid/widget/LinearLayout;

.field private mSecondToThirdPointWidth:I

.field private mSliderView:Landroid/widget/FrameLayout;

.field private mSliderViewBase:Landroid/widget/FrameLayout;

.field private mSliderViewWidth:I

.field private mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;

.field private mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

.field private mWideTextLayout:Landroid/widget/FrameLayout;

.field private mWideTextView:Landroid/widget/TextView;

.field private mZoomButtonGestureDetector:Landroid/view/GestureDetector;

.field private mZoomCenterLayout:Landroid/widget/LinearLayout;

.field private mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

.field private mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

.field private mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

.field private mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

.field private mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

.field private mZoomDialButtonTextView:Landroid/widget/TextView;

.field private mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

.field private mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

.field private mZoomDialButtonTextViewRight:Landroid/widget/TextView;

.field private mZoomDialCenterArea:Landroid/widget/ImageView;

.field private mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

.field private mZoomDialImageLayout:Landroid/widget/LinearLayout;

.field private mZoomDialLeftBlurArea:Landroid/widget/ImageView;

.field private mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

.field private mZoomDialRightBlurArea:Landroid/widget/ImageView;

.field private mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

.field private mZoomDialScale0DOT7to1MarginView:Landroid/view/View;

.field private mZoomDialScale1to2MarginView:Landroid/view/View;

.field private mZoomDialScale2to3MarginView:Landroid/view/View;

.field private mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

.field private mZoomFirstPointRatioMax:F

.field private mZoomLineSetRatio:F

.field private mZoomPoint0TextView:Landroid/widget/TextView;

.field private mZoomPoint1TextView:Landroid/widget/TextView;

.field private mZoomPoint2TextView:Landroid/widget/TextView;

.field private mZoomPoint3TextView:Landroid/widget/TextView;

.field private mZoomRatioMax:F

.field private mZoomRatios:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

.field private mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

.field private mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

.field private mZoomScaleBackgroundLayout3:Landroid/widget/FrameLayout;

.field private mZoomSecondPointRatioMax:F

.field private mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

.field private mZoomWidePointRatioMax:F

.field private parent:Landroid/view/View;

.field recordingOrientation:I

.field private sPointText:Ljava/lang/String;

.field private tPointText:Ljava/lang/String;

.field private wideButtonText:Ljava/lang/String;

.field private wideButtonTextDescription:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetbt(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetfirstPointText(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentStep(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayZoomDialHideMillis(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialbarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDialbarHideStart(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)J
    .locals 2

    iget-wide v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmIsBokehMode(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDirectionRtl(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGray(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsRecording(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWideMode(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsZooming(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLeftImageLayout(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLeftImageLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMaxZoomStep(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMovedX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSliderView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSliderViewBase(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSliderViewWidth(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)I
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewFinderAccessor(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideTextLayout(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWideTextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomButtonGestureDetector(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/GestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomCenterLayout(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomCenterLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDialButtonCircleCenter(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDialButtonCircleLeft(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDialButtonCircleRight(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDialButtonTextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDialButtonTextViewCenter(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDialButtonTextViewLeft(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDialButtonTextViewRight(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDialScale0DOT7to1MarginView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale0DOT7to1MarginView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDialScale1to2MarginView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomDialScale2to3MarginView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale2to3MarginView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomPoint0TextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomPoint1TextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomPoint2TextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomPoint3TextView(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomRatioMax(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomRatios(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomScaleBackgroundLayout0(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomScaleBackgroundLayout1(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomScaleBackgroundLayout2(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomScaleBackgroundLayout3(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout3:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomSecondPointRatioMax(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZoomWidePointRatioMax(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)F
    .locals 0

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetwideButtonText(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputbt(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm0dot7ToFirstPointWidth(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFirstToSecondPointWidth(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsZooming(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMovedX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPrevX(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;F)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSecondToThirdPointWidth(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSliderViewWidth(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;I)V
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcircleSwitch(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcircleSwitchCenter(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcircleSwitchLeft(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcircleSwitchRight(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleWideButtonClick(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->handleWideButtonClick()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideWithAnimation(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideWithAnimation(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideZoomBarArea(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDrawDotLayout(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setDrawDotLayout()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 62
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43700000    # 240.0f

    div-float/2addr v0, v1

    sput v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->ZOOM_MAGNIFICATION_COEFFICIENT:F

    .line 84
    new-instance v0, Ljava/math/BigDecimal;

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal;

    const/16 v0, 0xb

    .line 87
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->UNREACHABLE_ZOOM_VALUES:[F

    .line 264
    sget-object v0, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    .line 265
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result v0

    .line 264
    invoke-static {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 266
    invoke-static {v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    add-int/lit8 v2, v0, 0x1

    .line 267
    new-array v2, v2, [I

    sput-object v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_0

    .line 270
    sget-object v3, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    int-to-float v4, v2

    int-to-float v5, v1

    mul-float/2addr v4, v5

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x40bccccd    # 5.9f
        0x40dccccd    # 6.9f
        0x40eccccd    # 7.4f
        0x40f9999a    # 7.8f
        0x41033333    # 8.2f
        0x41080000    # 8.5f
        0x410ccccd    # 8.8f
        0x4111999a    # 9.1f
        0x41166666    # 9.4f
        0x4119999a    # 9.6f
        0x411e6666    # 9.9f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 591
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 95
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    const/4 p2, 0x0

    .line 96
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 100
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 102
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    .line 106
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomFirstPointRatioMax:F

    .line 107
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    const/4 v0, 0x1

    .line 117
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->recordingOrientation:I

    .line 177
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 178
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    .line 184
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    .line 185
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    .line 186
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    .line 189
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    .line 190
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    const-wide/16 v1, 0x0

    .line 191
    iput-wide v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    .line 194
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$1;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarAreaHideEvent:Ljava/lang/Runnable;

    .line 213
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$2;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$2;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    .line 219
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$3;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    .line 246
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 248
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    .line 252
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    .line 253
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 256
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    .line 257
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    const/4 v1, 0x0

    .line 259
    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    .line 283
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I

    .line 284
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->eventEnable:Z

    .line 299
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F

    .line 317
    new-instance p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;

    invoke-direct {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$5;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 741
    iput-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->changed:Z

    .line 593
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 594
    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    invoke-static {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->calcZoomStep(F)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    invoke-direct {p0, p2, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchMagnification(ZI)V

    const/16 p1, 0xfa0

    .line 596
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 598
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->BACK:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isOpticalZoomSupported(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x3f19999a    # 0.6f

    .line 599
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 601
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 602
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomFirstPointRatioMax:F

    .line 609
    const-string/jumbo p1, "x1"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    .line 610
    const-string/jumbo p1, "x0.6"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->sPointText:Ljava/lang/String;

    .line 611
    const-string/jumbo p1, "x2"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->tPointText:Ljava/lang/String;

    .line 612
    const-string/jumbo p1, "x10"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->fPointText:Ljava/lang/String;

    .line 613
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0f009e

    .line 614
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 613
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointTextDescription:Ljava/lang/String;

    .line 615
    const-string p1, "W"

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    .line 616
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 617
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0.6"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 616
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonTextDescription:Ljava/lang/String;

    .line 619
    invoke-static {}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->isUltraWideCameraSupport()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    .line 620
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 621
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "IsWideCameraSupported , "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 623
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 624
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    :cond_1
    return-void
.end method

.method public static calcZoomStep(F)D
    .locals 4

    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const v0, 0x3f1d70a4    # 0.615f

    div-float/2addr p0, v0

    float-to-double v0, p0

    .line 1220
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    mul-double/2addr v0, v2

    sget p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->ZOOM_MAGNIFICATION_COEFFICIENT:F

    float-to-double v2, p0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private centerDipsZoomMagnification(F)Ljava/lang/String;
    .locals 2

    .line 1275
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "x"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p1

    const-string v0, ".0"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private circleSwitch(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 1862
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 1863
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1862
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1864
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 1866
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 1867
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1866
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1868
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method

.method private circleSwitchCenter(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1874
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    .line 1875
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1874
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1876
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 1878
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    .line 1879
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1878
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1880
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method

.method private circleSwitchLeft(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1886
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    .line 1887
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1886
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1888
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 1890
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    .line 1891
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1890
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1892
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method

.method private circleSwitchRight(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1898
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    .line 1899
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1898
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1900
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 1902
    :cond_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    .line 1903
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 1902
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1905
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setCircleStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method

.method private convertCurrentStep(IZ)I
    .locals 0

    if-eqz p2, :cond_0

    .line 1192
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    aget p0, p0, p1

    goto :goto_1

    .line 1195
    :cond_0
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    :goto_0
    if-lez p0, :cond_2

    .line 1196
    sget-object p2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BOKEH_OFF_TO_ON_STEP_CONVERSION_TABLE:[I

    aget p2, p2, p0

    if-ne p2, p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private createDialbarBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 p0, 0x0

    .line 1910
    invoke-virtual {p1, p0, p0}, Landroid/view/View;->measure(II)V

    .line 1912
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    if-eqz p0, :cond_0

    .line 1913
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x7e

    .line 1916
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v1, 0x654

    invoke-static {v1, p0, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1919
    :goto_0
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1920
    invoke-virtual {p1, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    return-object p0
.end method

.method private getDotImage(FF)Landroid/widget/ImageView;
    .locals 1

    .line 1549
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const p0, 0x7f08031c

    .line 1550
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1551
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private grayOutWithoutAnimation()V
    .locals 2

    .line 1806
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 1807
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    .line 1808
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const v0, 0x3ecccccd    # 0.4f

    .line 1809
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 v0, 0x0

    .line 1810
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1811
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private handleWideButtonClick()V
    .locals 2

    .line 1556
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    if-nez v0, :cond_0

    return-void

    .line 1559
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->getInstance()Lcom/sonyericsson/android/camera/research/LocalResearchUtil;

    move-result-object v0

    sget-object v1, Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;->WIDE_ICON_TOUCH:Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/research/LocalResearchUtil;->setModeChangeMethod(Lcom/sonyericsson/android/camera/research/LocalResearchUtil$ModeChangeMethod;)V

    .line 1561
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onChangeModeRequested()V

    const/4 v0, 0x1

    .line 1562
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 1563
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1564
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->wideButtonTextDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1565
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayedImmediately()V

    return-void
.end method

.method private hideDialbarDelayedImmediately()V
    .locals 1

    .line 1623
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1627
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    .line 1628
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1629
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    :cond_1
    return-void
.end method

.method private hideWithAnimation(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1785
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    .line 1787
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 1788
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz p1, :cond_0

    const-wide/16 v1, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 1789
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 1792
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1794
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    .line 1795
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p1, 0x0

    .line 1796
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    .line 1799
    :cond_1
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz p0, :cond_2

    .line 1800
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onHiddenZoom()V

    :cond_2
    return-void
.end method

.method private hideZoomBarArea()V
    .locals 2

    .line 1816
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 1817
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->releaseDialbarBitmap()V

    .line 1818
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1819
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v0, :cond_0

    .line 1820
    invoke-interface {v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowSimpleView()V

    :cond_0
    const/4 v0, 0x1

    .line 1823
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showButtons(Z)V

    .line 1824
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method private normalizeAngle(I)F
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    return p0
.end method

.method private relayoutBlurArea(I)V
    .locals 4

    .line 756
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 757
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 759
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v1, :cond_0

    .line 760
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, p1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 762
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 764
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 766
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 768
    :goto_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setDrawDotLayout()V

    .line 769
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private releaseDialbarBitmap()V
    .locals 2

    .line 1926
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1927
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1929
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 1930
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1932
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 1933
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1935
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1936
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1938
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    .line 1939
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 1941
    :cond_4
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz p0, :cond_5

    .line 1942
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-void
.end method

.method private setBokehSwitchLayout(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1142
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1143
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1144
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circle_zoom1:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1145
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 1147
    :cond_0
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    if-nez p1, :cond_1

    .line 1148
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    .line 1150
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->tPointText:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circle_zoom1:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1153
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1156
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    .line 1157
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1159
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07029d

    .line 1160
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 1161
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070286

    .line 1162
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1164
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 1165
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 1166
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v3

    add-int/2addr p1, v1

    sub-int/2addr v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1168
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    goto :goto_1

    .line 1170
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    .line 1171
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1172
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1173
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1174
    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, v1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const p1, 0x7f070287

    .line 1176
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    .line 1179
    :goto_1
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%,d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setBokehSwitchMagnification(ZI)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x40a00000    # 5.0f

    .line 1132
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    goto :goto_0

    .line 1134
    :cond_0
    sget-object p1, Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;->SAT:Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/capability/PlatformCapability;->getMaxZoomRatio(Lcom/sonyericsson/android/camera/device/CameraInfo$CameraId;)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    .line 1136
    :goto_0
    iput p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    int-to-float p1, p2

    .line 1137
    iget p2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    sub-float/2addr p2, v0

    div-float/2addr p1, p2

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    return-void
.end method

.method private setDrawDotLayout()V
    .locals 13

    .line 1516
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070284

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 1517
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070285

    .line 1518
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 1519
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07028f

    .line 1520
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1521
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070290

    .line 1522
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1523
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070291

    .line 1524
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v2, v2

    add-float v5, v0, v1

    div-float/2addr v2, v5

    float-to-double v6, v2

    .line 1526
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v2, :cond_0

    .line 1528
    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    new-instance v10, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v12, v1

    invoke-direct {v11, v12, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1530
    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getDotImage(FF)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    int-to-float v2, v3

    div-float/2addr v2, v5

    float-to-double v2, v2

    .line 1533
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_1

    .line 1535
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    new-instance v9, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v11, v1

    invoke-direct {v10, v11, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1537
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getDotImage(FF)Landroid/widget/ImageView;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    int-to-float v2, v4

    div-float/2addr v2, v5

    float-to-double v2, v2

    .line 1540
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    :goto_2
    if-ge v6, v2, :cond_2

    .line 1542
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/Space;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v7, v1

    invoke-direct {v5, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1544
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getDotImage(FF)Landroid/widget/ImageView;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private setZoomDialImageView()V
    .locals 14

    .line 1004
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1005
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1007
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1008
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setDrawingCacheEnabled(Z)V

    .line 1013
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->destroyDrawingCache()V

    .line 1014
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->createDialbarBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1016
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070286

    .line 1017
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1018
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070280

    .line 1019
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1021
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1022
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    .line 1023
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1024
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float v5, v1

    const/high16 v6, 0x437f0000    # 255.0f

    div-float v5, v6, v5

    .line 1026
    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    .line 1027
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    move v9, v8

    :goto_0
    if-gt v9, v1, :cond_2

    int-to-float v10, v9

    mul-float/2addr v10, v5

    sub-float v10, v6, v10

    float-to-double v10, v10

    .line 1029
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    rsub-int v10, v10, 0xff

    .line 1030
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1031
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v7, v9

    add-int/lit8 v12, v11, -0x1

    invoke-direct {v10, v12, v8, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1035
    new-instance v11, Landroid/graphics/Rect;

    sub-int v12, v1, v9

    add-int/lit8 v13, v12, -0x1

    invoke-direct {v11, v13, v8, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1039
    invoke-virtual {v4, v0, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    move v7, v8

    :goto_1
    if-gt v7, v1, :cond_2

    int-to-float v9, v7

    mul-float/2addr v9, v5

    sub-float v9, v6, v9

    float-to-double v9, v9

    .line 1043
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 1044
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1045
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v1, v7

    add-int/lit8 v11, v10, -0x1

    invoke-direct {v9, v11, v8, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1049
    invoke-virtual {v4, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1052
    :cond_2
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1056
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v3, :cond_3

    .line 1057
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1058
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1059
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v3, v4, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1060
    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1061
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v4, v8, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    .line 1063
    :cond_3
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1064
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getWidth()I

    move-result v9

    add-int/2addr v7, v9

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1065
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v3, v4, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1066
    new-instance v4, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1067
    invoke-virtual {v9}, Landroid/widget/ImageView;->getHeight()I

    move-result v9

    invoke-direct {v4, v8, v8, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1069
    :goto_2
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    .line 1070
    invoke-virtual {v7}, Landroid/widget/ImageView;->getWidth()I

    move-result v7

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v2, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    .line 1072
    new-instance v7, Landroid/graphics/Canvas;

    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v7, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    .line 1073
    invoke-virtual {v7, v0, v3, v4, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1074
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1076
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1077
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    .line 1078
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 1079
    new-instance v4, Landroid/graphics/Canvas;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1080
    iget-boolean v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v7, :cond_4

    move v7, v8

    :goto_3
    if-gt v7, v1, :cond_5

    int-to-float v9, v7

    mul-float/2addr v9, v5

    sub-float v9, v6, v9

    float-to-double v9, v9

    .line 1082
    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 1083
    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1084
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v1, v7

    add-int/lit8 v11, v10, -0x1

    invoke-direct {v9, v11, v8, v10, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1086
    invoke-virtual {v4, v0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1089
    :cond_4
    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v7

    move v9, v8

    :goto_4
    if-gt v9, v1, :cond_5

    int-to-float v10, v9

    mul-float/2addr v10, v5

    sub-float v10, v6, v10

    float-to-double v10, v10

    .line 1091
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    rsub-int v10, v10, 0xff

    .line 1092
    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1093
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v7, v9

    add-int/lit8 v12, v11, -0x1

    invoke-direct {v10, v12, v8, v11, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1095
    new-instance v11, Landroid/graphics/Rect;

    sub-int v12, v1, v9

    add-int/lit8 v13, v12, -0x1

    invoke-direct {v11, v13, v8, v12, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1097
    invoke-virtual {v4, v0, v10, v11, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1100
    :cond_5
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1102
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1103
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1104
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1105
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1106
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private showButtons(Z)V
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 1829
    :goto_0
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomCenterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1830
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1831
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1833
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    if-eqz v3, :cond_1

    .line 1834
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {v3, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 1835
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1837
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1838
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 1840
    :goto_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 1841
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 1843
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 1844
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 1846
    :cond_2
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 1847
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1850
    :goto_2
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    .line 1852
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onHiddenZoomBar()V

    goto :goto_3

    .line 1854
    :cond_3
    invoke-interface {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowZoomBar()V

    :cond_4
    :goto_3
    return-void
.end method

.method private showWithAnimation(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 1769
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    .line 1771
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    if-eqz v1, :cond_0

    .line 1772
    invoke-interface {v1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;->onShowZoom(Z)V

    .line 1775
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    .line 1776
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1777
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 1778
    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 1781
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private zoomMagnificationNotRound(D)F
    .locals 2

    .line 1252
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    const p1, 0x3f1d70a4    # 0.615f

    sub-float p1, p0, p1

    float-to-double p1, p1

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double p1, p1, v0

    if-gez p1, :cond_0

    const p0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x41200000    # 10.0f

    cmpl-float p2, p0, p1

    if-lez p2, :cond_1

    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method

.method private zoomMagnificationRound(D)F
    .locals 3

    .line 1231
    new-instance p0, Ljava/math/BigDecimal;

    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1237
    new-instance v0, Ljava/math/BigDecimal;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gez v0, :cond_1

    sget-object v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal;

    .line 1238
    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-lez v0, :cond_1

    .line 1239
    sget-boolean p0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 1240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " ==> x0.9"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1242
    :cond_0
    sget-object p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->BIG_DECIMAL_POINT_NINE:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    return p0

    :cond_1
    const/4 v0, 0x1

    const/4 v1, 0x4

    .line 1244
    invoke-virtual {p0, v0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    .line 1245
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 1246
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%f ==> x%.1f"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_2
    return p0
.end method


# virtual methods
.method public dealDoubleTap()V
    .locals 3

    .line 744
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 745
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->changed:Z

    .line 747
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->changed:Z

    if-nez v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    const/high16 v2, 0x43cc0000    # 408.0f

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    goto :goto_0

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    const/high16 v2, 0x43280000    # 168.0f

    invoke-interface {v0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;->onZoomRatioDesignation(F)V

    .line 752
    :goto_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->changed:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->changed:Z

    return-void
.end method

.method public getCurrentStep()I
    .locals 0

    .line 1288
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    return p0
.end method

.method public getCurrentZoomValue()F
    .locals 0

    .line 1292
    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    return p0
.end method

.method public getZoomRatios()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1284
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-object p0
.end method

.method public grayOut()V
    .locals 1

    .line 1736
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1737
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->grayOutWithoutAnimation()V

    :cond_0
    return-void
.end method

.method public hideDelayed(Ljava/lang/Runnable;)V
    .locals 3

    .line 1747
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1748
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mRunAfterHide:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1751
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1752
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideDelyedTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public hideDialbarDelayed()V
    .locals 4

    .line 1705
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_0

    return-void

    .line 1708
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1710
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    .line 1711
    sget-boolean v1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 1712
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hideDialbarDelayed : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarHideStart:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1714
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarAreaHideEvent:Ljava/lang/Runnable;

    iget p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public hideImmediately()V
    .locals 2

    .line 1723
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1724
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1726
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    .line 1728
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideWithAnimation(Z)V

    :cond_1
    return-void
.end method

.method public isFullView()Z
    .locals 1

    .line 1762
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOnZoomDial(Landroid/graphics/Point;)Z
    .locals 4

    .line 1954
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1955
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    .line 1956
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1957
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHeight()I

    move-result p0

    add-int/2addr p0, v2

    .line 1959
    iget v3, p1, Landroid/graphics/Point;->x:I

    if-gt v0, v3, :cond_0

    iget v0, p1, Landroid/graphics/Point;->x:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Point;->y:I

    if-gt v2, v0, :cond_0

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShown()Z
    .locals 0

    .line 1639
    iget-boolean p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsShown:Z

    return p0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1317
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f090183

    .line 1318
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const v0, 0x7f0900bd

    .line 1319
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    const v0, 0x7f09022f

    .line 1322
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    const v0, 0x7f09022b

    .line 1323
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    const v0, 0x7f090098

    .line 1324
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circle_zoom1:Landroid/widget/ImageView;

    .line 1325
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircle:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    const v1, 0x7f06002c

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setColor(I)V

    const/4 v0, 0x0

    .line 1326
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    const v1, 0x7f0900be

    .line 1330
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    const v1, 0x7f090174

    .line 1331
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090175

    .line 1332
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot1Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090176

    .line 1333
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot2Layout:Landroid/widget/LinearLayout;

    const v1, 0x7f090093

    .line 1334
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

    const v1, 0x7f090094

    .line 1335
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout1:Landroid/widget/FrameLayout;

    const v1, 0x7f090095

    .line 1336
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout2:Landroid/widget/FrameLayout;

    const v1, 0x7f090096

    .line 1337
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout3:Landroid/widget/FrameLayout;

    const v1, 0x7f090241

    .line 1338
    invoke-virtual {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLeftImageLayout:Landroid/widget/LinearLayout;

    .line 1339
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    const v0, 0x7f090237

    .line 1342
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    const v0, 0x7f090239

    .line 1343
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    const v0, 0x7f09023b

    .line 1344
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    const v0, 0x7f09023d

    .line 1345
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    const v0, 0x7f090243

    .line 1348
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    const v0, 0x7f090244

    .line 1349
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f090233

    .line 1351
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialImageLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f090235

    .line 1352
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialLeftBlurArea:Landroid/widget/ImageView;

    const v0, 0x7f090234

    .line 1353
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialCenterArea:Landroid/widget/ImageView;

    const v0, 0x7f090236

    .line 1354
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialRightBlurArea:Landroid/widget/ImageView;

    const v0, 0x7f090227

    .line 1356
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 1357
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    if-nez v0, :cond_0

    const v0, 0x7f07029d

    .line 1358
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    .line 1361
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointTextDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v0, 0x7f090238

    .line 1365
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale0DOT7to1MarginView:Landroid/view/View;

    const v0, 0x7f09023a

    .line 1366
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    const v0, 0x7f09023c

    .line 1367
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale2to3MarginView:Landroid/view/View;

    const v0, 0x7f090184

    .line 1369
    invoke-virtual {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    .line 1372
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$8;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomButtonGestureDetector:Landroid/view/GestureDetector;

    .line 1424
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1425
    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$9;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setBokehMode(ZI)V
    .locals 1

    .line 1116
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1119
    :cond_0
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz p1, :cond_1

    const/16 v0, 0x1f4

    .line 1121
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    goto :goto_0

    :cond_1
    const/16 v0, 0xfa0

    .line 1123
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDelayZoomDialHideMillis:I

    .line 1125
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchMagnification(ZI)V

    .line 1126
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setBokehSwitchLayout(Z)V

    return-void
.end method

.method public setClickable(Z)V
    .locals 0

    .line 1265
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mClickable:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 1306
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1308
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVisibility(I)V

    goto :goto_0

    .line 1310
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->releaseDialbarBitmap()V

    const/16 p1, 0x8

    .line 1311
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setEventEnable(Z)V
    .locals 0

    .line 287
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->eventEnable:Z

    return-void
.end method

.method public setNonLogicCameraVideo(Z)V
    .locals 4

    .line 721
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    .line 722
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSCaleDot0Layout:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 723
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomScaleBackgroundLayout0:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 727
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 731
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 732
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 735
    :cond_5
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    .line 736
    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setVisibility(I)V

    .line 737
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public setParent(Landroid/view/View;)V
    .locals 1

    .line 154
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f090231

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    .line 156
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f090230

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    .line 157
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f090232

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    .line 158
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f09022d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    .line 159
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f09022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    .line 160
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f09022e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    .line 162
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleLeft:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    const v0, 0x7f06002c

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setColor(I)V

    .line 163
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleCenter:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setColor(I)V

    .line 164
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonCircleRight:Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/CircleView;->setColor(I)V

    const/4 p1, 0x0

    .line 165
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V

    .line 166
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V

    const/4 p1, 0x1

    .line 167
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V

    .line 169
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f09008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomCenterLayout:Landroid/widget/LinearLayout;

    .line 170
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->parent:Landroid/view/View;

    const v0, 0x7f0900ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->event_handler:Landroid/view/View;

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 172
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 173
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearFocus()V

    .line 174
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->clearFocus()V

    return-void
.end method

.method public setSensorOrientation(I)V
    .locals 1

    .line 1574
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->recordingOrientation:I

    .line 1575
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->normalizeAngle(I)F

    move-result p1

    .line 1576
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint0TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1577
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 1580
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1582
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1583
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1585
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint3TextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1586
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1588
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1589
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1591
    :cond_4
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 1592
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1594
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1595
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1597
    :cond_6
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 1598
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1600
    :cond_7
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 1601
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setRotation(F)V

    .line 1603
    :cond_8
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_9

    .line 1604
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    :cond_9
    return-void
.end method

.method public setVideoRecording(Z)V
    .locals 4

    .line 655
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideCameraSupported:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 656
    iget-object p0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 657
    iput v1, p0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    return-void

    .line 661
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-eqz v0, :cond_1

    return-void

    .line 665
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    .line 666
    iput-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    if-eqz p1, :cond_2

    .line 669
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez p1, :cond_4

    .line 674
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$6;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 683
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleView()V

    .line 685
    :cond_3
    iget-boolean p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez p1, :cond_4

    .line 686
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$7;

    invoke-direct {v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$7;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 695
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 696
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 698
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07029d

    .line 699
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 700
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070286

    .line 701
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 703
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_5

    .line 704
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 705
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v3}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v3

    add-int/2addr p1, v1

    sub-int/2addr v3, p1

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 707
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    goto :goto_1

    .line 709
    :cond_5
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 710
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    .line 711
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 712
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 713
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDial:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;

    invoke-virtual {v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getWidth()I

    move-result v2

    sub-int/2addr v2, p1

    sub-int/2addr v2, v1

    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mWideNonDisplayAreaLayout:Landroid/widget/LinearLayout;

    .line 714
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    sub-int/2addr v2, p1

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const p1, 0x7f070287

    .line 716
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->relayoutBlurArea(I)V

    :goto_1
    return-void
.end method

.method public setViewFinderAccessor(Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mViewFinderAccessor:Lcom/sonyericsson/android/camera/view/ViewFinderImpl$ViewFinderAccessorForZoomDial;

    return-void
.end method

.method public setZoomRatios(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1301
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    return-void
.end method

.method public setZoomUiEventListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    return-void
.end method

.method public setZoombarDisplayChangedListener(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;)V
    .locals 0

    .line 644
    iput-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDisplayChangedListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDisplayChangedListener;

    return-void
.end method

.method public setmZoomLineSetRatio(F)V
    .locals 0

    .line 291
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomLineSetRatio:F

    .line 292
    iget-object p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showFullView()V

    .line 294
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    :cond_0
    return-void
.end method

.method public showFullView()V
    .locals 3

    .line 1670
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1674
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    .line 1675
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mDialbarArea:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1677
    :cond_1
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1679
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1681
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 1682
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showWithAnimation(Z)V

    .line 1683
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    .line 1685
    :cond_4
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showButtons(Z)V

    .line 1686
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method public showSimpleView()V
    .locals 2

    .line 1646
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1649
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    if-nez v0, :cond_1

    return-void

    .line 1653
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideZoomBarArea()V

    .line 1654
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1656
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mHideEvent:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1658
    :cond_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->isShown()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 1659
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showWithAnimation(Z)V

    .line 1660
    iput-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    .line 1663
    :cond_4
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitch(Z)V

    return-void
.end method

.method public showSimpleViewIfNeeded()V
    .locals 2

    .line 1696
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsGray:Z

    if-eqz v0, :cond_1

    .line 1697
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->showSimpleView()V

    :cond_1
    return-void
.end method

.method public startZooming()V
    .locals 1

    const/4 v0, 0x1

    .line 1973
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    return-void
.end method

.method public stopZooming()V
    .locals 2

    const/4 v0, 0x0

    .line 1980
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    .line 1981
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    if-nez v0, :cond_0

    .line 1982
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$10;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$10;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public zoom(I)I
    .locals 14

    .line 780
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  current:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMagnificationBaseRatio:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMagnificationBaseRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 785
    :cond_0
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    const/16 v1, 0xa8

    if-eqz v0, :cond_1

    if-ge p1, v1, :cond_1

    move p1, v1

    .line 789
    :cond_1
    iget-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 790
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 791
    const-string v0, "finish wide camera mode because of zoom ratio is changed."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 793
    :cond_2
    iput-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsWideMode:Z

    :cond_3
    if-gez p1, :cond_4

    move p1, v2

    goto :goto_0

    .line 798
    :cond_4
    iget v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    if-le p1, v0, :cond_5

    move p1, v0

    .line 803
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatios:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 804
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 805
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 806
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "currentZoomRatio : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 813
    :cond_6
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentStep:I

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne p1, v1, :cond_7

    .line 816
    iput v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    move p1, v4

    goto :goto_2

    .line 819
    :cond_7
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMaxZoomStep:I

    if-gt p1, v1, :cond_b

    .line 820
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomLineSetRatio:F

    cmpl-float v1, p1, v3

    const v5, 0x3f1d70a4    # 0.615f

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v1, :cond_8

    .line 821
    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 822
    iput v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomLineSetRatio:F

    goto :goto_1

    .line 824
    :cond_8
    sget-object p1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->UNREACHABLE_ZOOM_VALUES:[F

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result p1

    if-ltz p1, :cond_9

    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLatestZoomRatio:I

    .line 825
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne p1, v1, :cond_9

    .line 826
    sget-boolean p1, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz p1, :cond_a

    .line 827
    const-string p1, "currentZoom is unreachable value based on zoomMagnificationRound()."

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 829
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v6

    mul-float/2addr p1, v5

    float-to-double v7, p1

    invoke-direct {p0, v7, v8}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomMagnificationRound(D)F

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 833
    :cond_a
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v6

    mul-float/2addr p1, v5

    float-to-double v5, p1

    invoke-direct {p0, v5, v6}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->zoomMagnificationNotRound(D)F

    move-result p1

    goto :goto_2

    .line 836
    :cond_b
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 840
    :goto_2
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0f009e

    .line 841
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 842
    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-direct {p0, v5}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->centerDipsZoomMagnification(F)Ljava/lang/String;

    move-result-object v5

    .line 843
    iget-object v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    .line 845
    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    const-string v7, ".0"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    .line 844
    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 846
    iget-object v9, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    .line 847
    invoke-virtual {v9, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "x"

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    .line 846
    invoke-static {v1, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 848
    iget-object v11, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->sPointText:Ljava/lang/String;

    .line 849
    invoke-virtual {v11, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    .line 848
    invoke-static {v1, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 850
    iget-object v12, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->tPointText:Ljava/lang/String;

    .line 851
    invoke-virtual {v12, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    .line 850
    invoke-static {v1, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 852
    iget v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    cmpg-float v8, v7, v4

    const/4 v10, 0x1

    if-gez v8, :cond_c

    cmpl-float v3, v7, v3

    if-lez v3, :cond_c

    .line 853
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 857
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->tPointText:Ljava/lang/String;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 859
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V

    .line 860
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V

    .line 861
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V

    .line 863
    :cond_c
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    const/high16 v7, 0x40000000    # 2.0f

    cmpg-float v8, v3, v7

    if-gez v8, :cond_d

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_d

    .line 864
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->sPointText:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 866
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->tPointText:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 870
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V

    .line 871
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V

    .line 872
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V

    .line 874
    :cond_d
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    cmpl-float v3, v1, v7

    if-ltz v3, :cond_e

    const/high16 v3, 0x41200000    # 10.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_e

    .line 875
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->sPointText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 876
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 877
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->firstPointText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewCenter:Landroid/widget/TextView;

    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 879
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextViewRight:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 881
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchLeft(Z)V

    .line 882
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchCenter(Z)V

    .line 883
    invoke-direct {p0, v10}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->circleSwitchRight(Z)V

    .line 885
    :cond_e
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 887
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomSecondPointRatioMax:F

    float-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v1, v5

    .line 888
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    .line 889
    sget-boolean v5, Lcom/sonyericsson/android/camera/util/CamLog;->DEBUG:Z

    if-eqz v5, :cond_f

    .line 890
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "currentZoomRatio "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mCurrentZoomMagnification "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 894
    :cond_f
    iget-boolean v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsBokehMode:Z

    if-nez v5, :cond_16

    .line 895
    iget v5, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    cmpl-float v3, v5, v3

    if-ltz v3, :cond_11

    cmpg-float v3, v5, v4

    if-gez v3, :cond_11

    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsNonLogicCameraVideo:Z

    if-nez v3, :cond_11

    .line 899
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomWidePointRatioMax:F

    sub-float/2addr p1, v1

    sub-float/2addr v4, v1

    div-float/2addr p1, v4

    .line 901
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v1, v1

    .line 905
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v2, :cond_10

    .line 906
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int p1, v2

    .line 908
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v1, p1, v1

    goto :goto_3

    .line 910
    :cond_10
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v2

    mul-float/2addr v1, p1

    sub-float/2addr v2, v1

    float-to-int v1, v2

    .line 912
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr p1, v1

    .line 914
    :goto_3
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 915
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 916
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v2, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_7

    :cond_11
    cmpg-float v3, v5, v1

    if-gtz v3, :cond_14

    sub-float/2addr p1, v4

    .line 920
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    int-to-float v1, v1

    .line 924
    iget-boolean v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v3, :cond_13

    .line 925
    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    if-eqz v3, :cond_12

    .line 926
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 928
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-int v2, v2

    .line 930
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int p1, v2, p1

    move v13, v2

    move v2, p1

    move p1, v13

    goto :goto_4

    :cond_12
    move p1, v2

    goto :goto_4

    .line 933
    :cond_13
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v2

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, p1

    sub-float/2addr v2, v1

    float-to-int v2, v2

    .line 938
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr p1, v2

    .line 940
    :goto_4
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 941
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    .line 942
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2, v1, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto/16 :goto_7

    :cond_14
    sub-float/2addr p1, v1

    .line 946
    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    sub-float/2addr v3, v1

    div-float/2addr v2, v3

    .line 950
    iget-boolean v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v1, :cond_15

    .line 951
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getX()F

    move-result v1

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    .line 954
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v1, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-double v1, v1

    .line 955
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 956
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v1, p1, v1

    goto :goto_5

    .line 958
    :cond_15
    iget-object v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getX()F

    move-result v1

    iget v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->m0dot7ToFirstPointWidth:I

    iget v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mFirstToSecondPointWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v1, v3

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    float-to-double v1, v1

    .line 960
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 961
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr p1, v1

    .line 963
    :goto_5
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 964
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 965
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v2, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    goto :goto_7

    :cond_16
    sub-float/2addr p1, v4

    .line 970
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSecondToThirdPointWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomRatioMax:F

    sub-float/2addr v2, v4

    div-float/2addr v1, v2

    .line 973
    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsDirectionRtl:Z

    if-eqz v2, :cond_17

    .line 974
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint2TextView:Landroid/widget/TextView;

    .line 975
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    .line 976
    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v2, v3

    mul-float/2addr v1, p1

    add-float/2addr v2, v1

    float-to-double v1, v2

    .line 977
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    .line 978
    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    sub-int v1, p1, v1

    goto :goto_6

    .line 980
    :cond_17
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialButtonTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getX()F

    move-result v2

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewBase:Landroid/widget/FrameLayout;

    .line 981
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomPoint1TextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomDialScale1to2MarginView:Landroid/view/View;

    .line 982
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, p1

    sub-float/2addr v2, v1

    float-to-double v1, v2

    .line 983
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    .line 984
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderViewWidth:I

    add-int/2addr p1, v1

    .line 986
    :goto_6
    iget-object v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 987
    iget-object v3, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    .line 988
    iget-object v4, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mSliderView:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v1, v2, p1, v3}, Landroid/widget/FrameLayout;->layout(IIII)V

    .line 991
    :goto_7
    invoke-direct {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->setZoomDialImageView()V

    .line 992
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    invoke-virtual {p1, v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->setZoomRatio(F)V

    .line 993
    iget p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLatestZoomRatio:I

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq p1, v1, :cond_19

    .line 994
    sget-object p1, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->TAP_ZOOM_FRAME:Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;

    invoke-virtual {p1}, Lcom/sonymobile/cameracommon/research/parameters/Event$zoomTrigger;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getZoomTrigger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    .line 995
    invoke-static {}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->getInstance()Lcom/sonymobile/cameracommon/research/ResearchUtil;

    move-result-object p1

    iget v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mCurrentZoomMagnification:F

    iget-boolean v2, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsRecording:Z

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1, v2}, Lcom/sonymobile/cameracommon/research/ResearchUtil;->sendZoomDialTapEvent(Ljava/util/List;FZ)V

    .line 997
    :cond_18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mLatestZoomRatio:I

    .line 999
    :cond_19
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->hideDialbarDelayed()V

    .line 1000
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 809
    :cond_1a
    const-string/jumbo p0, "zoom ratios is not set"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return v2
.end method

.method public zoomEnd()V
    .locals 2

    const/4 v0, 0x0

    .line 301
    iput-boolean v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mIsZooming:Z

    const/4 v1, 0x0

    .line 302
    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mPrevX:F

    .line 303
    iput v1, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mMovedX:F

    .line 304
    iput v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->bt:I

    .line 305
    iget-object v0, p0, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->mZoomUiEventListener:Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomUiEventListener;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial$4;-><init>(Lcom/sonyericsson/android/camera/view/baselayout/zoom/ZoomDial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
