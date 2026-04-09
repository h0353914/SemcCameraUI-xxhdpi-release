.class public Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.super Ljava/lang/Object;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingStoppedInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;
    }
.end annotation


# static fields
.field private static final ANIMATION_SCALE_X:Ljava/lang/String; = "scaleX"

.field private static final ANIMATION_SCALE_Y:Ljava/lang/String; = "scaleY"

.field private static final FOCUS_RECT_SET_DOWN_ANIMATION_START_DELAY_TIME:I = 0x64

.field private static final INTERPOLATOR_CONTROL_X1:F = 0.23f

.field private static final INTERPOLATOR_CONTROL_X2:F = 0.32f

.field private static final INTERPOLATOR_CONTROL_Y1:F = 1.0f

.field private static final INTERPOLATOR_CONTROL_Y2:F = 1.0f

.field public static final TAG:Ljava/lang/String; = "FocusRectangles"

.field private static final TRACKED_OBJECT_RECT_REFRESH_TIMEOUT:I = 0x3e8


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

.field private mCaptureArea:Landroid/view/View;

.field private mCurrentOrientation:I

.field private mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

.field private mDevicePreviewHeight:I

.field private mDevicePreviewWidth:I

.field private mFaceRectangles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

.field private mFocusAnimationTask:Ljava/lang/Runnable;

.field private mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsFaceTouchCaptureEnabled:Z

.field private mIsFocusAnimationEnabled:Z

.field private mIsManualFocus:Z

.field private mIsRecording:Z

.field private mLastFaceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

.field private mLatestSelectedFaceUuid:Ljava/lang/String;

.field private mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

.field private mObjectTrackingRectSupported:Z

.field private final mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

.field private mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

.field private mRectangles:Landroid/widget/RelativeLayout;

.field private final mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

.field private mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

.field private mSingleAfRect:Landroid/widget/RelativeLayout;

.field private mSmileCaptureLevel:I

.field private mSmileScore:I

.field private mTouchAfRect:Landroid/widget/RelativeLayout;

.field private mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

.field private mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;IILcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;Landroid/view/View;Landroid/view/View$OnTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 3

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 90
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    .line 97
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    const/4 v1, 0x0

    .line 103
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    .line 110
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 119
    new-instance v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .line 122
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    .line 127
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    const/4 v2, 0x2

    .line 130
    iput v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    .line 135
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    .line 137
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    const/4 v2, -0x1

    .line 139
    iput v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    .line 142
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    .line 147
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    .line 2075
    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 167
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 169
    iput-object p8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 172
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    .line 175
    iput p3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    .line 176
    iput p4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    .line 178
    new-instance p1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    .line 180
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;

    .line 182
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 185
    invoke-direct {p0, p5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->initialize(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;)V

    .line 187
    new-instance p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    return-void
.end method

.method static synthetic access$100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetRectanglesColor()V

    return-void
.end method

.method static synthetic access$1200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->initObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onObjectTrackedInternal(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/HashMap;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideTrackedObjectRecgantle()V

    return-void
.end method

.method static synthetic access$2300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeObjectFocusRectAnimation()V

    return-void
.end method

.method static synthetic access$2400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSelectedFaceUuId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeFacePriority(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return p0
.end method

.method static synthetic access$3400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/view/View;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/os/Handler;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    return p0
.end method

.method static synthetic access$600(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method static synthetic access$800(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method private addTaggedRectangle(Landroid/view/LayoutInflater;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_0

    return-object v1

    .line 299
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 300
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const p3, 0x7f0c003b

    .line 309
    invoke-virtual {p1, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 314
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 317
    invoke-virtual {p3, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 319
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 320
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 319
    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectPosition(IIII)V

    .line 323
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-virtual {p3, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    .line 326
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method private changeFacePriority(Ljava/lang/String;)V
    .locals 3

    .line 1764
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v0, :cond_0

    const/4 p0, 0x1

    .line 1766
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeFacePriority() faceUuid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 1770
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getFaceRect()Landroid/graphics/Rect;

    move-result-object p1

    .line 1771
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1775
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 1776
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    invoke-interface {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onFaceSelected(Landroid/graphics/Point;)V

    .line 1778
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->requestToWaitForFaceReflected(Landroid/graphics/Point;)V

    return-void
.end method

.method private changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    .locals 4

    .line 1920
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeState to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1921
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1920
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1922
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    return-void
.end method

.method private displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V
    .locals 4

    .line 1974
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleX(F)V

    .line 1975
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleY(F)V

    .line 1976
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(IIII)V

    .line 1977
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 1978
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 1979
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1980
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1981
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    return-void
.end method

.method private faceResultToRectangles(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .locals 4

    .line 1786
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_0

    .line 1796
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSelectedFaceUuId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;

    move-result-object v1

    .line 1793
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->getFaceInformationList(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Landroid/graphics/Rect;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1799
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->updateFaceList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 1807
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;Ljava/lang/String;IZ)V

    :cond_2
    return-void
.end method

.method private getObjectTrackingAnimator(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
    .locals 5

    .line 2090
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e6b851f    # 0.23f

    const v3, 0x3ea3d70a    # 0.32f

    invoke-direct {v0, v2, v1, v3, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2093
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleX(F)V

    .line 2094
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    invoke-virtual {p0, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleY(F)V

    const-string p0, "scaleX"

    const/4 p3, 0x1

    .line 2095
    new-array p4, p3, [F

    const/4 v2, 0x0

    aput v1, p4, v2

    invoke-static {p0, p4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    const-string p4, "scaleY"

    .line 2096
    new-array v3, p3, [F

    aput v1, v3, v2

    invoke-static {p4, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p4

    const/4 v1, 0x2

    .line 2097
    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    aput-object p0, v1, v2

    aput-object p4, v1, p3

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 2098
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2099
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getSelectedFaceUuId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;
    .locals 0

    .line 2063
    iget-object p0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2067
    :cond_0
    iget-object p0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    iget p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->indexOfSelectedFace:I

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;

    iget p0, p0, Lcom/sonyericsson/android/camera/device/CameraParameters$ExtFace;->id:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hideFaceRectangles(Z)V
    .locals 2

    .line 1478
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 1480
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1483
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hideTrackedObjectRecgantle()V
    .locals 1

    .line 1488
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    return-void
.end method

.method private initObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 6

    .line 1985
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1989
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1990
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 1993
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070098

    .line 1994
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1995
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070097

    .line 1996
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1999
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 2000
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 2001
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 2002
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    .line 2004
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v3

    .line 2005
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v4

    .line 2007
    div-int/lit8 v0, v0, 0x2

    sub-int v4, v2, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    .line 2008
    div-int/lit8 v1, v1, 0x2

    sub-int v4, v3, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    .line 2009
    iput v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    .line 2010
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2013
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private initialize(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;)V
    .locals 8

    .line 212
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->rectanglesContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    .line 219
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;-><init>(Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    .line 220
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 225
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    check-cast v1, [Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x0

    move v4, v3

    :goto_1
    const/4 v5, 0x5

    if-ge v4, v5, :cond_2

    if-eqz v1, :cond_1

    .line 230
    aget-object v5, v1, v4

    check-cast v5, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    goto :goto_2

    :cond_1
    move-object v5, v2

    .line 232
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6, v5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->addTaggedRectangle(Landroid/view/LayoutInflater;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 236
    :cond_2
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->trackedObjectView:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 237
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v1, :cond_3

    const v1, 0x7f0c003b

    .line 238
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 244
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 247
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v6, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 249
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f070098

    .line 250
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 251
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070097

    .line 252
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 253
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v7, v3, v3, v1, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(IIII)V

    .line 255
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v3, 0x7f090110

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 256
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 259
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->singleAfView:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    .line 260
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const v3, 0x7f0c003c

    if-nez v1, :cond_4

    .line 261
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    .line 265
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 266
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 269
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 272
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->touchAfView:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 273
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_5

    .line 274
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 279
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 280
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 283
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 285
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v0, 0x7f09005b

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 289
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectanglesCoordinates()V

    return-void
.end method

.method private onObjectTrackedInternal(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .locals 6

    .line 1708
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_0

    .line 1710
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1720
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1723
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1724
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1729
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v2, v3, :cond_1

    .line 1731
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    iget-object v3, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 1733
    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    goto :goto_0

    .line 1735
    :cond_1
    iget-object v2, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 1736
    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1739
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getObjectAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v0

    .line 1740
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    iget v4, v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p1, v4

    iget v5, v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    iget v0, v0, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mFromHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    invoke-direct {v2, v3, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1751
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 1752
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(IIII)V

    .line 1756
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    .line 1759
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 1760
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    return-void
.end method

.method private playObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .locals 4

    .line 2017
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectImageWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 2018
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectImageHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2019
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2023
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    .line 2025
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V

    .line 2027
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    if-ne p2, v1, :cond_0

    .line 2028
    sget-object p2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TRACKING_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 2030
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/16 v1, 0x12c

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getObjectTrackingAnimator(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2032
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x1

    .line 2033
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2034
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6b851f    # 0.23f

    const v1, 0x3ea3d70a    # 0.32f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2037
    new-instance p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2058
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private playOnTouchDownAnimationForTouchFocusRect()V
    .locals 3

    .line 1643
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080094

    .line 1647
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v1, 0x1

    .line 1649
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    const/4 v1, 0x4

    .line 1651
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1656
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    .line 1674
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private playOnTouchUpAnimationForTouchFocusRect()V
    .locals 2

    .line 1680
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1681
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1685
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$2;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    .line 1700
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 1703
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    :cond_1
    return-void
.end method

.method private playTouchFocusStartAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 1

    .line 1622
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    if-nez v0, :cond_0

    .line 1623
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1630
    :pswitch_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchUpAnimationForTouchFocusRect()V

    goto :goto_0

    .line 1626
    :pswitch_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchDownAnimationForTouchFocusRect()V

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private removeObjectFocusRectAnimation()V
    .locals 2

    .line 1522
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1527
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationObject(Landroid/view/View;)V

    .line 1529
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearAnimation()V

    .line 1530
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private removeSingleFocusRectAnimation()V
    .locals 2

    .line 1508
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1510
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1515
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationSingle(Landroid/view/View;)V

    .line 1517
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 p0, 0x0

    .line 1518
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private removeTouchFocusRectAnimation()V
    .locals 2

    .line 1492
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 1494
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 1496
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1501
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationTouch(Landroid/view/View;)V

    .line 1503
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 p0, 0x0

    .line 1504
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private resetFaceRectangleColor()V
    .locals 2

    .line 1541
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v1, 0x0

    .line 1542
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    const/4 v1, 0x4

    .line 1544
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetObjectTrackingRectangleColor(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1549
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSuccessIcon()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getNormalIcon()I

    move-result p1

    .line 1550
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    return-void
.end method

.method private resetRectanglesColor()V
    .locals 1

    .line 1534
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetFaceRectangleColor()V

    const/4 v0, 0x0

    .line 1535
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    .line 1536
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetTouchFocusRectangleColor()V

    .line 1537
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetSingleFocusRectangleColor()V

    return-void
.end method

.method private resetSingleFocusRectangleColor()V
    .locals 1

    .line 1560
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const v0, 0x7f09005b

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f080092

    .line 1561
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private resetTouchFocusRectangleColor()V
    .locals 2

    .line 1554
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 1555
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1556
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    const v1, 0x7f080092

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method private setAFLocking(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 505
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStartAfLock()V

    goto :goto_0

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStopAfLock()V

    :goto_0
    xor-int/lit8 p1, p1, 0x1

    .line 509
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setEnableFaceFocusTouch(Z)V

    return-void
.end method

.method private setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1566
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    return-void

    .line 1571
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    .line 1572
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    .line 1576
    :cond_1
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 1577
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 1580
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1585
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v3

    .line 1588
    iget v4, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_2

    .line 1590
    iget v1, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1591
    :cond_2
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-ge v4, v1, :cond_3

    .line 1593
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    .line 1600
    :cond_3
    :goto_0
    iget v4, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_4

    .line 1602
    iget p1, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 p1, p1, 0x2

    goto :goto_1

    .line 1603
    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-ge v4, p1, :cond_5

    .line 1605
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v3, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    .line 1613
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 1614
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v1

    .line 1615
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p1

    .line 1613
    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 1616
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1618
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playTouchFocusStartAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method private setRectSizeAndPosition(Landroid/widget/RelativeLayout;IIII)V
    .locals 1

    .line 1322
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p0, :cond_1

    .line 1325
    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1326
    iput p3, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1327
    iput p4, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1328
    iput p5, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1330
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->LANDSCAPE:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/16 p4, 0xe

    const/4 p5, -0x1

    const/16 v0, 0xf

    if-ne p2, p3, :cond_0

    .line 1332
    invoke-virtual {p0, v0, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1333
    invoke-virtual {p0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    .line 1335
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1336
    invoke-virtual {p0, p4, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1340
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;Ljava/lang/String;IZ)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 1180
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getUserSelectedUuid()Ljava/lang/String;

    move-result-object p2

    .line 1181
    sget-boolean v2, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v2, :cond_0

    .line 1182
    new-array v2, v1, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFaceRectangles: uuid is not specified, use uuid from API, uuid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v2}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1189
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v4, :cond_2

    .line 1191
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_1

    .line 1192
    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFaceRectangles: view is null, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1199
    :cond_2
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearUpdated()V

    .line 1201
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 1203
    invoke-virtual {p1, v3}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v5

    if-nez v5, :cond_4

    .line 1205
    sget-boolean v4, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v4, :cond_3

    .line 1206
    new-array v4, v1, [Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFaceRectangles: namedFace is null, index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v4}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1214
    :cond_4
    invoke-direct {p0, v4, v5, p3, p4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V

    .line 1216
    iget-object v5, v5, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x4

    if-eqz v5, :cond_6

    const v5, 0x7f080095

    .line 1217
    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1218
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->stopAnimation()V

    .line 1221
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    const/4 v7, -0x1

    if-ne v5, v7, :cond_5

    .line 1222
    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_1

    .line 1224
    :cond_5
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    invoke-virtual {v4, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileLevel(I)V

    .line 1225
    invoke-virtual {v4, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    .line 1226
    iget v5, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    invoke-direct {p0, v4, p1, v5, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateSmileGauge(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;II)V

    .line 1229
    :goto_1
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    goto :goto_2

    .line 1231
    :cond_6
    invoke-virtual {v4, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_2

    .line 1235
    :cond_7
    invoke-virtual {v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    const/4 v5, 0x0

    .line 1236
    invoke-virtual {v4, v5, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->update(Ljava/lang/String;I)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1156
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method

.method private updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    .line 1163
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    .line 1164
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->isWaitingForFaceReflected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1165
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->check(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    :cond_0
    return-void
.end method

.method private updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V
    .locals 5

    .line 1280
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object p0

    iget-object v0, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    const/4 v0, 0x1

    .line 1282
    new-array v1, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Converted rectangle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v1}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1284
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    .line 1285
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 1284
    invoke-virtual {p1, v1, v2, v4, p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectPosition(IIII)V

    if-eqz p4, :cond_0

    .line 1289
    invoke-virtual {p1, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1291
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    goto :goto_0

    :cond_0
    const p0, 0x7f080094

    .line 1293
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1297
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    if-nez v0, :cond_2

    .line 1301
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->startRectangleAnimation(I)V

    .line 1305
    :cond_2
    iget-object p0, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p0, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->update(Ljava/lang/String;I)V

    .line 1310
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setUpdated()V

    .line 1313
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_3

    .line 1314
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 1315
    invoke-virtual {p1, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private updateRectanglesCoordinates()V
    .locals 7

    .line 333
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 339
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 343
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 344
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v1, p0

    .line 339
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setRectSizeAndPosition(Landroid/widget/RelativeLayout;IIII)V

    .line 346
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 347
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSize(II)V

    goto :goto_0

    .line 351
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method private updateSmileGauge(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;II)V
    .locals 7

    .line 1253
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceByUuid(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1258
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1262
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugesPosition(IIIII)V

    .line 1269
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileLevel(I)V

    .line 1270
    iget p3, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileScore(I)V

    .line 1271
    iget p1, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    return-void
.end method


# virtual methods
.method public clearAllFocus()V
    .locals 0

    .line 437
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocusExceptFace()V

    .line 438
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    return-void
.end method

.method public clearAllFocusExceptFace()V
    .locals 0

    .line 444
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleClearAllFocusExceptFace()V

    return-void
.end method

.method public clearExceptTouchFocus()V
    .locals 0

    .line 433
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleClearExceptTouchFocus()V

    return-void
.end method

.method public clearFaceDetection()V
    .locals 1

    const/4 v0, 0x0

    .line 464
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    .line 465
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetFaceRectangleColor()V

    .line 466
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->updateFaceList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V

    return-void
.end method

.method public clearObjectTracking()V
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleClearObjectTracking()V

    return-void
.end method

.method public clearSingleAutoFocus()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 459
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeSingleFocusRectAnimation()V

    .line 460
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetSingleFocusRectangleColor()V

    return-void
.end method

.method public clearTouchFocus()V
    .locals 2

    .line 449
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    const/4 v0, 0x0

    .line 451
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 452
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 453
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeTouchFocusRectAnimation()V

    .line 454
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetTouchFocusRectangleColor()V

    return-void
.end method

.method public clearTouched()V
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->clearTouched()V

    return-void
.end method

.method public disableFaceTouchCapture()V
    .locals 1

    const/4 v0, 0x0

    .line 195
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return-void
.end method

.method public enableFaceTouchCapture()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return-void
.end method

.method protected getAfFocusingIcon()I
    .locals 0

    .line 1962
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080097

    goto :goto_0

    :cond_0
    const p0, 0x7f080092

    :goto_0
    return p0
.end method

.method protected getNormalIcon()I
    .locals 2

    .line 1926
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    const v1, 0x7f080097

    if-eqz v0, :cond_1

    .line 1927
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f080091

    :goto_0
    return v1

    .line 1931
    :cond_1
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f080092

    :goto_1
    return v1
.end method

.method public getSelectedFaceSmileScore()I
    .locals 2

    .line 1243
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    const/4 v1, 0x0

    .line 1246
    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    return v0
.end method

.method protected getSuccessIcon()I
    .locals 0

    .line 1968
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080097

    goto :goto_0

    :cond_0
    const p0, 0x7f080091

    :goto_0
    return p0
.end method

.method protected getTouchAfFocusingIcon()I
    .locals 0

    .line 1950
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p0, 0x7f080092

    :goto_0
    return p0
.end method

.method protected getTouchAfSuccessIcon()I
    .locals 0

    .line 1956
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const p0, 0x7f080091

    :goto_0
    return p0
.end method

.method public getTouchFocusIconSize()Landroid/graphics/Rect;
    .locals 3

    .line 1903
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1904
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1905
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070099

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected getTouchIcon()I
    .locals 2

    .line 1938
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    const v1, 0x7f080096

    if-eqz v0, :cond_1

    .line 1939
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f080091

    :goto_0
    return v1

    .line 1943
    :cond_1
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f080092

    :goto_1
    return v1
.end method

.method public isTouchFocus()Z
    .locals 1

    .line 1896
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onAutoFocusCanceled()V
    .locals 0

    .line 388
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnAutoFocusCanceled()V

    return-void
.end method

.method public onAutoFocusDone(Z)V
    .locals 0

    .line 384
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnAutoFocusDone(Z)V

    return-void
.end method

.method public onAutoFocusStarted()V
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnAutoFocusStarted()V

    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 0

    .line 405
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    return-void
.end method

.method public onObjectFocused()V
    .locals 1

    .line 429
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v0, 0x7f080097

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    return-void
.end method

.method public onObjectLost()V
    .locals 2

    .line 422
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v1, 0x7f080098

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 425
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnObjectLost()V

    return-void
.end method

.method public onObjectRemoved()V
    .locals 0

    .line 418
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnObjectRemoved()V

    return-void
.end method

.method public onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 0

    .line 414
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnTrackedObjectStateUpdated(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    return-void
.end method

.method public onUiComponentOverlaid()V
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnUiComponentOverlaid()V

    return-void
.end method

.method public onUiComponentRemoved()V
    .locals 0

    .line 478
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnUiComponentRemoved()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 356
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 490
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->stopRecording()V

    const/4 v0, 0x0

    .line 491
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(Z)V

    .line 492
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setLockedBySelfTimer(Z)V

    return-void
.end method

.method public setEnableFaceFocusTouch(Z)V
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 522
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez p1, :cond_2

    .line 524
    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    .line 523
    :goto_2
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setFocusIconType(Z)V
    .locals 0

    .line 2108
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    return-void
.end method

.method public setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 4

    const/4 v0, 0x2

    .line 392
    new-array v0, v0, [I

    .line 393
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 394
    new-instance v1, Landroid/graphics/Point;

    iget v2, p1, Landroid/graphics/Point;->x:I

    const/4 v3, 0x0

    aget v3, v0, v3

    sub-int/2addr v2, v3

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    aget v0, v0, v3

    sub-int/2addr p1, v0

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 397
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0, v1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method public setLockedBySelfTimer(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 513
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setEnableFaceFocusTouch(Z)V

    return-void
.end method

.method public setObjectTrackingRectSupported(Z)V
    .locals 0

    .line 2104
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1912
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    return-void
.end method

.method public setSmileCaptureThreshold(I)V
    .locals 0

    .line 2112
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1916
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public startFaceDetection()V
    .locals 0

    .line 401
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStartFaceDetection()V

    return-void
.end method

.method public startObjectTracking()V
    .locals 1

    .line 409
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 410
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStartObjectTracking()V

    return-void
.end method

.method public startRecording()V
    .locals 1

    const/4 v0, 0x1

    .line 496
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    return-void
.end method

.method public stopRecording()V
    .locals 1

    const/4 v0, 0x0

    .line 500
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    return-void
.end method

.method public updateDevicePreviewSize(II)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    .line 204
    iput p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    .line 207
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectanglesCoordinates()V

    return-void
.end method
