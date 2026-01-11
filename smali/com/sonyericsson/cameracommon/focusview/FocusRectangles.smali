.class public Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;
.super Ljava/lang/Object;
.source "FocusRectangles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectedCallback;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingStoppedInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$TouchFocusInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusInLockedState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceDetectionState;,
        Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectLostState;
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
.method static bridge synthetic -$$Nest$fgetmAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCaptureArea(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFaceReflectChecker(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusEventListener(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFaceTouchCaptureEnabled(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsFocusAnimationEnabled(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsManualFocus(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmLastFaceDetectionResult(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLatestSelectedFaceUuid(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObJectTrackingFocusIconState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmObjectTrackingRectSupported(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSingleAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTouchAfRect(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Landroid/widget/RelativeLayout;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTrackedObjectRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 0

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmLatestSelectedFaceUuid(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPressedRectangle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)V
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeFacePriority(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeFacePriority(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfaceResultToRectangles(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSelectedFaceUuId(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSelectedFaceUuId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhideTrackedObjectRecgantle(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideTrackedObjectRecgantle()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minitObjectTrackingAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->initObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monObjectTrackedInternal(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->onObjectTrackedInternal(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mplayObjectTrackingAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveObjectFocusRectAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeObjectFocusRectAnimation()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetObjectTrackingRectangleColor(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetRectanglesColor(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetRectanglesColor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAFLocking(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetFocusPositionInternal(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFaceRectanglesData(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFaceRectanglesData(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;IILcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;Landroid/view/View;Landroid/view/View$OnTouchListener;Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)V
    .locals 3

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mPressedRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 93
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    .line 100
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-direct {v1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    .line 113
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 122
    new-instance v2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v2, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    .line 125
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    .line 130
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    const/4 v2, 0x2

    .line 133
    iput v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    .line 138
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    .line 140
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    const/4 v2, -0x1

    .line 142
    iput v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    .line 145
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    .line 150
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    .line 2136
    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 170
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 172
    iput-object p8, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    .line 175
    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    .line 178
    iput p3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    .line 179
    iput p4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    .line 181
    new-instance p1, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    .line 183
    iput-object p6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCaptureArea:Landroid/view/View;

    .line 185
    iput-object p7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 188
    invoke-direct {p0, p5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->initialize(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;)V

    .line 190
    new-instance p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-direct {p1, p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker-IA;)V

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    return-void
.end method

.method private addTaggedRectangle(Landroid/view/LayoutInflater;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;
    .locals 4

    .line 306
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    return-object v2

    .line 311
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 312
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_1
    const p3, 0x7f0c0043

    .line 321
    invoke-virtual {p1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    move-object p3, p1

    check-cast p3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 326
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 329
    invoke-virtual {p3, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 331
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 332
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 331
    invoke-virtual {p3, p1, v1, v2, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectPosition(IIII)V

    .line 335
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-virtual {p3, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    .line 338
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method private changeFacePriority(Ljava/lang/String;)V
    .locals 2

    .line 1816
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v0, :cond_0

    .line 1818
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "changeFacePriority() faceUuid "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " not found."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sonyericsson/android/camera/util/CamLog;->e([Ljava/lang/String;)V

    return-void

    .line 1822
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object p1

    .line 1823
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getFaceRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1822
    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromViewToActiveArray(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1826
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 1827
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    invoke-interface {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onFaceSelected(Landroid/graphics/Point;)V

    .line 1829
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->requestToWaitForFaceReflected(Landroid/graphics/Point;)V

    return-void
.end method

.method private changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V
    .locals 2

    .line 1982
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "changeState to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1983
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 1982
    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1984
    :cond_0
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    return-void
.end method

.method private displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V
    .locals 4

    .line 2036
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleX(F)V

    .line 2037
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleY(F)V

    .line 2038
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

    .line 2039
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 2040
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const/4 v0, -0x1

    .line 2041
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2042
    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2043
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    return-void
.end method

.method private faceResultToRectangles(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .locals 4

    .line 1837
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p1, :cond_0

    .line 1847
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSelectedFaceUuId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;

    move-result-object v1

    .line 1844
    invoke-static {p1, v0, v1}, Lcom/sonyericsson/cameracommon/utility/FaceDetectUtil;->getFaceInformationList(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Landroid/graphics/Rect;Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1850
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->updateFaceList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V

    if-nez p1, :cond_1

    return-void

    :cond_1
    if-nez p2, :cond_2

    .line 1858
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    invoke-direct {p0, p1, p3, v0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;Ljava/lang/String;IZ)V

    :cond_2
    return-void
.end method

.method private getObjectTrackingAnimator(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;
    .locals 5

    .line 2151
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea3d70a    # 0.32f

    const v2, 0x3e6b851f    # 0.23f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 2154
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleX(F)V

    .line 2155
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    invoke-virtual {p0, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setScaleY(F)V

    const/4 p0, 0x1

    .line 2156
    new-array p3, p0, [F

    const/4 p4, 0x0

    aput v3, p3, p4

    const-string v1, "scaleX"

    invoke-static {v1, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p3

    .line 2157
    new-array v1, p0, [F

    aput v3, v1, p4

    const-string v2, "scaleY"

    invoke-static {v2, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    const/4 v2, 0x2

    .line 2158
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object p3, v2, p4

    aput-object v1, v2, p0

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p2

    .line 2159
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2160
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private getSelectedFaceUuId(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)Ljava/lang/String;
    .locals 0

    .line 2124
    iget-object p0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->extFaceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2128
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

    .line 1530
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

    .line 1532
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1535
    :cond_0
    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private hideTrackedObjectRecgantle()V
    .locals 1

    .line 1540
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    return-void
.end method

.method private initObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 6

    .line 2047
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2050
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getTouchIcon()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 2051
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 2054
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b1

    .line 2055
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2056
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b0

    .line 2057
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 2060
    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 2061
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 2062
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 2063
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v2

    .line 2065
    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v3

    .line 2066
    div-int/lit8 v5, v5, 0x2

    add-int/2addr v2, v4

    .line 2068
    div-int/lit8 v0, v0, 0x2

    sub-int v4, v2, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v5

    .line 2069
    div-int/lit8 v1, v1, 0x2

    sub-int v4, v3, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    .line 2070
    iput v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    .line 2071
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 2074
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V

    return-void
.end method

.method private initialize(Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;)V
    .locals 8

    .line 215
    iget-object v0, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->rectanglesContainer:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    .line 217
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 220
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    .line 222
    new-instance v1, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;-><init>(Ljava/util/HashMap;)V

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    .line 223
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 227
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->faceViewList:[Landroid/view/View;

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

    .line 233
    aget-object v5, v1, v4

    check-cast v5, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    goto :goto_2

    :cond_1
    move-object v5, v2

    .line 235
    :goto_2
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v0, v6, v5}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->addTaggedRectangle(Landroid/view/LayoutInflater;Ljava/lang/String;Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;)Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 239
    :cond_2
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->trackedObjectView:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v1, :cond_3

    const v1, 0x7f0c0043

    .line 241
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 246
    :cond_3
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 247
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 250
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v6, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 251
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v6, 0x3

    invoke-virtual {v1, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->prepare(I)V

    .line 252
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f0700b1

    .line 253
    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 254
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0700b0

    .line 255
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 256
    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v7, v3, v3, v1, v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(IIII)V

    .line 258
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v3, 0x7f090160

    invoke-virtual {v1, v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 259
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 262
    iget-object v1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->singleAfView:Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const v3, 0x7f0c0044

    if-nez v1, :cond_4

    .line 264
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    .line 268
    :cond_4
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 269
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 272
    iget-object v6, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v6, v7, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    iget-object p1, p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectanglesViewList;->touchAfView:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    if-nez p1, :cond_5

    .line 277
    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 282
    :cond_5
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 283
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 286
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 288
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v0, 0x7f090088

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 289
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 292
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectanglesCoordinates()V

    return-void
.end method

.method private onObjectTrackedInternal(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .locals 6

    .line 1760
    iget-boolean v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mIsLost:Z

    if-eqz v0, :cond_0

    .line 1762
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1768
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRefreshTrackedObjectRectangleTask:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$RefreshTrackedObjectRectangleTask;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1772
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1775
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 1776
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    .line 1781
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object v2

    sget-object v3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->PORTRAIT:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    if-ne v2, v3, :cond_1

    .line 1783
    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    iget-object v3, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 1785
    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p1

    goto :goto_0

    .line 1787
    :cond_1
    iget-object v2, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    .line 1788
    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    :goto_0
    int-to-float p1, p1

    mul-float/2addr p1, v0

    float-to-int p1, p1

    .line 1791
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getObjectAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v0

    .line 1792
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

    .line 1803
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 1804
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, v2, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectImageSize(IIII)V

    .line 1808
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    .line 1811
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    .line 1812
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    return-void
.end method

.method private playObjectTrackingAnimation(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;Z)V
    .locals 4

    .line 2078
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectImageWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    .line 2079
    invoke-virtual {v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getRectImageHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2080
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v1

    iget-object p1, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;->mRectOfTrackedObject:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 2084
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    .line 2086
    invoke-direct {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->displayObjectTrackingFocusFrame(Landroid/graphics/Rect;)V

    .line 2088
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TOUCH_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    if-ne p2, v1, :cond_0

    .line 2089
    sget-object p2, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->TRACKING_ICON:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 2091
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/16 v1, 0x12c

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getObjectTrackingAnimator(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 2093
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v0, 0x1

    .line 2094
    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2095
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e6b851f    # 0.23f

    const v1, 0x3ea3d70a    # 0.32f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v2, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2098
    new-instance p1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;

    invoke-direct {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$3;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-virtual {p2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2119
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private playOnTouchDownAnimationForTouchFocusRect()V
    .locals 3

    .line 1695
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1696
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f080095

    .line 1699
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    const/4 v1, 0x1

    .line 1701
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    const/4 v1, 0x4

    .line 1703
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1708
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$1;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    .line 1726
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private playOnTouchUpAnimationForTouchFocusRect()V
    .locals 2

    .line 1732
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1733
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 1734
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1737
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$2;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusAnimationTask:Ljava/lang/Runnable;

    .line 1752
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 1755
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    :cond_1
    return-void
.end method

.method private playTouchFocusStartAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 1

    .line 1674
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    if-nez v0, :cond_2

    .line 1675
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$4;->$SwitchMap$com$sonyericsson$cameracommon$focusview$FocusRectangles$FocusSetType:[I

    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1682
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchUpAnimationForTouchFocusRect()V

    goto :goto_0

    .line 1678
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playOnTouchDownAnimationForTouchFocusRect()V

    :cond_2
    :goto_0
    return-void
.end method

.method private removeObjectFocusRectAnimation()V
    .locals 2

    .line 1574
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1579
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationObject(Landroid/view/View;)V

    .line 1581
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearAnimation()V

    .line 1582
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private removeSingleFocusRectAnimation()V
    .locals 2

    .line 1560
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1562
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1567
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationSingle(Landroid/view/View;)V

    .line 1569
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 p0, 0x0

    .line 1570
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private removeTouchFocusRectAnimation()V
    .locals 2

    .line 1544
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 1546
    iput-boolean v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFocusAnimationEnabled:Z

    .line 1548
    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1553
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->cancelAfFocusAnimationTouch(Landroid/view/View;)V

    .line 1555
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    const/4 p0, 0x0

    .line 1556
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private resetFaceRectangleColor()V
    .locals 2

    .line 1593
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

    .line 1594
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    const/4 v1, 0x4

    .line 1596
    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetObjectTrackingRectangleColor(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1601
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getSuccessIcon()I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->getNormalIcon()I

    move-result p1

    .line 1602
    :goto_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    return-void
.end method

.method private resetRectanglesColor()V
    .locals 1

    .line 1586
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetFaceRectangleColor()V

    const/4 v0, 0x0

    .line 1587
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetObjectTrackingRectangleColor(Z)V

    .line 1588
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetTouchFocusRectangleColor()V

    .line 1589
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetSingleFocusRectangleColor()V

    return-void
.end method

.method private resetSingleFocusRectangleColor()V
    .locals 1

    .line 1612
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const v0, 0x7f090088

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    const v0, 0x7f080092

    .line 1613
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method private resetTouchFocusRectangleColor()V
    .locals 2

    .line 1606
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 1607
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1608
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    const v1, 0x7f080092

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->startFocusAnimation(Landroid/view/View;I)V

    return-void
.end method

.method private setAFLocking(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 517
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStartAfLock()V

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStopAfLock()V

    :goto_0
    xor-int/lit8 p1, p1, 0x1

    .line 521
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setEnableFaceFocusTouch(Z)V

    return-void
.end method

.method private setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1618
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0, v0}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    return-void

    .line 1623
    :cond_0
    sget-object v1, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;->FIRST:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    .line 1624
    invoke-direct {p0, v1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    .line 1628
    :cond_1
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 1629
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 1632
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget-object v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v2, v3, v4}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 1637
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mAnimation:Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;

    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation;->getTouchAnimationConfig()Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;

    move-result-object v3

    .line 1640
    iget v4, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v4, v4, 0x2

    if-ge v1, v4, :cond_2

    .line 1642
    iget v1, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1643
    :cond_2
    iget v4, v2, Landroid/graphics/Rect;->right:I

    iget v5, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-ge v4, v1, :cond_3

    .line 1645
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v4, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    .line 1652
    :cond_3
    :goto_0
    iget v4, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_4

    .line 1654
    iget p1, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 p1, p1, 0x2

    goto :goto_1

    .line 1655
    :cond_4
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    iget v5, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    if-ge v4, p1, :cond_5

    .line 1657
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p1

    iget v3, v3, Lcom/sonyericsson/cameracommon/animation/FocusRectanglesAnimation$AnimationConfig;->mToHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr p1, v3

    .line 1665
    :cond_5
    :goto_1
    iget-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    .line 1666
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v1

    .line 1667
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v1, p1

    .line 1665
    invoke-virtual {v3, v4, v1}, Landroid/widget/RelativeLayout;->scrollTo(II)V

    .line 1668
    iget-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1670
    invoke-direct {p0, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->playTouchFocusStartAnimation(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method private setRectSizeAndPosition(Landroid/widget/RelativeLayout;IIII)V
    .locals 1

    .line 1374
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz p0, :cond_1

    .line 1377
    iput p2, p0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1378
    iput p3, p0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1379
    iput p4, p0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1380
    iput p5, p0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1382
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getInstance()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver;->getOrientation()Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    move-result-object p2

    sget-object p3, Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;->LANDSCAPE:Lcom/sonyericsson/cameracommon/utility/LayoutOrientationResolver$LayoutOrientationType;

    const/4 p4, -0x1

    const/16 p5, 0xe

    const/16 v0, 0xf

    if-ne p2, p3, :cond_0

    .line 1384
    invoke-virtual {p0, v0, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1385
    invoke-virtual {p0, p5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    goto :goto_0

    .line 1387
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 1388
    invoke-virtual {p0, p5, p4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1392
    :goto_0
    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private updateFaceRectangles(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;Ljava/lang/String;IZ)V
    .locals 7

    if-nez p2, :cond_0

    .line 1232
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getUserSelectedUuid()Ljava/lang/String;

    move-result-object p2

    .line 1233
    sget-boolean v0, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v0, :cond_0

    .line 1234
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateFaceRectangles: uuid is not specified, use uuid from API, uuid = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez v3, :cond_2

    .line 1243
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_1

    .line 1244
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateFaceRectangles: view is null, index = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1251
    :cond_2
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->clearUpdated()V

    .line 1253
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 1255
    invoke-virtual {p1, v2}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFace(I)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1257
    sget-boolean v3, Lcom/sonyericsson/android/camera/util/CamLog;->VERBOSE:Z

    if-eqz v3, :cond_1

    .line 1258
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateFaceRectangles: namedFace is null, index = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    goto :goto_1

    .line 1266
    :cond_3
    invoke-direct {p0, v3, v4, p3, p4}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V

    .line 1268
    iget-object v4, v4, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_5

    const v4, 0x7f080096

    .line 1269
    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1270
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->stopAnimation()V

    .line 1273
    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    .line 1274
    invoke-virtual {v3, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_2

    .line 1276
    :cond_4
    invoke-virtual {v3, v4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileLevel(I)V

    .line 1277
    invoke-virtual {v3, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    .line 1278
    iget v4, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    invoke-direct {p0, v3, p1, v4, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateSmileGauge(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;II)V

    .line 1281
    :goto_2
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLatestSelectedFaceUuid:Ljava/lang/String;

    goto :goto_1

    .line 1283
    :cond_5
    invoke-virtual {v3, v5}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugeVisibility(I)V

    goto :goto_1

    .line 1287
    :cond_6
    invoke-virtual {v3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    const/4 v4, 0x0

    .line 1288
    invoke-virtual {v3, v4, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->update(Ljava/lang/String;I)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1198
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    return-void
.end method

.method private updateFaceRectanglesData(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V
    .locals 1

    .line 1204
    iput-object p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mLastFaceDetectionResult:Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 1208
    iput v0, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->userSelectedFaceId:I

    .line 1210
    :cond_0
    iput-boolean p2, p1, Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;->isRectTranslucent:Z

    goto :goto_0

    .line 1212
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    invoke-interface {v0}, Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;->onUnselectedFaceID()V

    .line 1215
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->faceResultToRectangles(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;ZLjava/lang/String;)V

    .line 1216
    iget-object p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-virtual {p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->isWaitingForFaceReflected()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1217
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceReflectChecker:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;

    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FaceReflectChecker;->check(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    :cond_2
    return-void
.end method

.method private updateRectangle(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/NamedFace;IZ)V
    .locals 3

    .line 1331
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object p0

    iget-object v0, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Converted rectangle: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/camera/util/CamLog;->d([Ljava/lang/String;)V

    .line 1336
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 1337
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 1336
    invoke-virtual {p1, v0, v1, v2, p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectPosition(IIII)V

    const/4 p0, 0x0

    if-eqz p4, :cond_0

    .line 1341
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1343
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->hide()V

    goto :goto_0

    :cond_0
    const p4, 0x7f080095

    .line 1345
    invoke-virtual {p1, p4}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 1349
    :goto_0
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result p4

    if-nez p4, :cond_1

    goto :goto_1

    .line 1353
    :cond_1
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->startRectangleAnimation(I)V

    .line 1357
    :goto_1
    iget-object p2, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mUuid:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->update(Ljava/lang/String;I)V

    .line 1362
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setUpdated()V

    .line 1365
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_2

    .line 1366
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->requestLayout()V

    .line 1367
    invoke-virtual {p1, p0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private updateRectanglesCoordinates()V
    .locals 7

    .line 345
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    iget v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mScreenAspect:Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver;->getSurfaceViewRect(Landroid/content/Context;FLcom/sonyericsson/android/camera/view/baselayout/LayoutDependencyResolver$ScreenAspect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 351
    iget-object v2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    .line 355
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 356
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    move-object v1, p0

    .line 351
    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setRectSizeAndPosition(Landroid/widget/RelativeLayout;IIII)V

    .line 358
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

    .line 359
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

    .line 363
    :cond_0
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    return-void
.end method

.method private updateSmileGauge(Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;II)V
    .locals 7

    .line 1305
    invoke-virtual {p1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;->getNamedFaceByUuid(Ljava/lang/String;)Lcom/sonyericsson/cameracommon/focusview/NamedFace;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 1310
    :cond_0
    invoke-static {}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->getInstance()Lcom/sonyericsson/cameracommon/utility/PositionConverter;

    move-result-object v0

    iget-object v1, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mFacePosition:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/utility/PositionConverter;->convertFromActiveArrayToView(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1314
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p1

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileGaugesPosition(IIIII)V

    .line 1321
    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileLevel(I)V

    .line 1322
    iget p3, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    invoke-virtual {p1, p3}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setSmileScore(I)V

    .line 1323
    iget p1, p2, Lcom/sonyericsson/cameracommon/focusview/NamedFace;->mSmileScore:I

    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    return-void
.end method


# virtual methods
.method public clearAllFocus()V
    .locals 0

    .line 449
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearAllFocusExceptFace()V

    .line 450
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->clearFaceDetection()V

    return-void
.end method

.method public clearAllFocusExceptFace()V
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleClearAllFocusExceptFace()V

    return-void
.end method

.method public clearExceptTouchFocus()V
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleClearExceptTouchFocus()V

    return-void
.end method

.method public clearFaceDetection()V
    .locals 1

    const/4 v0, 0x0

    .line 476
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->hideFaceRectangles(Z)V

    .line 477
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetFaceRectangleColor()V

    .line 478
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchEventDispatcher:Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/RectangleTouchEventDispatcher;->updateFaceList(Lcom/sonyericsson/cameracommon/focusview/FaceInformationList;)V

    return-void
.end method

.method public clearObjectTracking()V
    .locals 0

    .line 482
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleClearObjectTracking()V

    return-void
.end method

.method public clearSingleAutoFocus()V
    .locals 2

    .line 470
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSingleAfRect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 471
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeSingleFocusRectAnimation()V

    .line 472
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetSingleFocusRectangleColor()V

    return-void
.end method

.method public clearTouchFocus()V
    .locals 2

    .line 461
    new-instance v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;

    invoke-direct {v0, p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$DefaultFocusState;-><init>(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;)V

    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->changeState(Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;)V

    const/4 v0, 0x0

    .line 463
    invoke-direct {p0, v0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setFocusPositionInternal(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    .line 464
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTouchAfRect:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 465
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->removeTouchFocusRectAnimation()V

    .line 466
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->resetTouchFocusRectangleColor()V

    return-void
.end method

.method public clearTouched()V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mOnFaceRectTouchListener:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;

    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$OnFaceRectTouchListener;->clearTouched()V

    return-void
.end method

.method public disableFaceTouchCapture()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return-void
.end method

.method public enableFaceTouchCapture()V
    .locals 1

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsFaceTouchCaptureEnabled:Z

    return-void
.end method

.method protected getAfFocusingIcon()I
    .locals 0

    .line 2024
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080098

    goto :goto_0

    :cond_0
    const p0, 0x7f080092

    :goto_0
    return p0
.end method

.method protected getNormalIcon()I
    .locals 2

    .line 1988
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    const v1, 0x7f080098

    if-eqz v0, :cond_1

    .line 1989
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f080091

    :goto_0
    return v1

    .line 1993
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

    .line 1295
    iget v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    const/4 v1, 0x0

    .line 1298
    iput v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileScore:I

    return v0
.end method

.method protected getSuccessIcon()I
    .locals 0

    .line 2030
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_0

    const p0, 0x7f080098

    goto :goto_0

    :cond_0
    const p0, 0x7f080091

    :goto_0
    return p0
.end method

.method protected getTouchAfFocusingIcon()I
    .locals 0

    .line 2012
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

    .line 2018
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

    .line 1961
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1962
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 1963
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0700b2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method protected getTouchIcon()I
    .locals 2

    .line 2000
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    const v1, 0x7f080097

    if-eqz v0, :cond_1

    .line 2001
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7f080091

    :goto_0
    return v1

    .line 2005
    :cond_1
    iget-boolean p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f080092

    :goto_1
    return v1
.end method

.method public getVisibility()I
    .locals 0

    .line 1974
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    return p0
.end method

.method public isObjectTracking()Z
    .locals 1

    .line 1954
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObjectTrackingState;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isTouchFocus()Z
    .locals 1

    .line 1947
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

    .line 400
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnAutoFocusCanceled()V

    return-void
.end method

.method public onAutoFocusDone(Z)V
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnAutoFocusDone(Z)V

    return-void
.end method

.method public onAutoFocusStarted()V
    .locals 0

    .line 392
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnAutoFocusStarted()V

    return-void
.end method

.method public onFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V
    .locals 0

    .line 417
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnFaceDetected(Lcom/sonyericsson/android/camera/device/CameraParameters$FaceDetectionResult;)V

    return-void
.end method

.method public onObjectFocused()V
    .locals 1

    .line 441
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    return-void
.end method

.method public onObjectLost()V
    .locals 2

    .line 434
    iget-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mTrackedObjectRectangle:Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    const v1, 0x7f080099

    invoke-virtual {v0, v1}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->changeRectangleResource(I)V

    .line 437
    :cond_0
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnObjectLost()V

    return-void
.end method

.method public onObjectRemoved()V
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnObjectRemoved()V

    return-void
.end method

.method public onObjectTracked(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnTrackedObjectStateUpdated(Lcom/sonyericsson/android/camera/device/CameraParameters$ObjectTrackingResult;)V

    return-void
.end method

.method public onUiComponentOverlaid()V
    .locals 0

    .line 486
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnUiComponentOverlaid()V

    return-void
.end method

.method public onUiComponentRemoved()V
    .locals 0

    .line 490
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleOnUiComponentRemoved()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mActivity:Landroid/app/Activity;

    .line 368
    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFocusEventListener:Lcom/sonyericsson/cameracommon/focusview/FocusActionListener;

    return-void
.end method

.method public reset()V
    .locals 1

    .line 502
    invoke-virtual {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->stopRecording()V

    const/4 v0, 0x0

    .line 503
    invoke-direct {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setAFLocking(Z)V

    .line 504
    invoke-virtual {p0, v0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setLockedBySelfTimer(Z)V

    return-void
.end method

.method public setEnableFaceFocusTouch(Z)V
    .locals 3

    .line 529
    iget-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mFaceRectangles:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 533
    :cond_0
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

    .line 534
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;

    if-nez p1, :cond_2

    .line 536
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

    .line 535
    :goto_2
    invoke-virtual {v1, v2}, Lcom/sonyericsson/cameracommon/focusview/TaggedRectangle;->setRectangleOnTouchListener(Lcom/sonyericsson/cameracommon/focusview/Rectangle$RectangleOnTouchListener;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setFocusIconType(Z)V
    .locals 0

    .line 2169
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsManualFocus:Z

    return-void
.end method

.method public setFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V
    .locals 4

    const/4 v0, 0x2

    .line 404
    new-array v0, v0, [I

    .line 405
    iget-object v1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 406
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

    .line 409
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0, v1, p2}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleSetFocusPosition(Landroid/graphics/Point;Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$FocusSetType;)V

    return-void
.end method

.method public setLockedBySelfTimer(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 525
    invoke-virtual {p0, p1}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->setEnableFaceFocusTouch(Z)V

    return-void
.end method

.method public setObjectTrackingRectSupported(Z)V
    .locals 0

    .line 2165
    iput-boolean p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObjectTrackingRectSupported:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1970
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentOrientation:I

    return-void
.end method

.method public setSmileCaptureThreshold(I)V
    .locals 0

    .line 2173
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mSmileCaptureLevel:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 1978
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public startFaceDetection()V
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStartFaceDetection()V

    return-void
.end method

.method public startObjectTracking()V
    .locals 1

    .line 421
    sget-object v0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;->NOT_DISPLAY:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    iput-object v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mObJectTrackingFocusIconState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$ObJectTrackingFocusIconState;

    .line 422
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mCurrentState:Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;

    invoke-interface {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles$State;->handleStartObjectTracking()V

    return-void
.end method

.method public startRecording()V
    .locals 1

    const/4 v0, 0x1

    .line 508
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    return-void
.end method

.method public stopRecording()V
    .locals 1

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mIsRecording:Z

    return-void
.end method

.method public updateContainerLayout(Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;)V
    .locals 1

    .line 299
    iget-object p0, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mRectangles:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, 0x0

    .line 300
    invoke-virtual {p1, v0, p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->adaptLayoutParam(Landroid/graphics/Rect;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 301
    invoke-virtual {p1, p0}, Lcom/sonyericsson/android/camera/view/baselayout/BaseLayout;->setLayoutMarginAsPreview(Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public updateDevicePreviewSize(II)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewWidth:I

    .line 207
    iput p2, p0, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->mDevicePreviewHeight:I

    .line 210
    invoke-direct {p0}, Lcom/sonyericsson/cameracommon/focusview/FocusRectangles;->updateRectanglesCoordinates()V

    return-void
.end method
