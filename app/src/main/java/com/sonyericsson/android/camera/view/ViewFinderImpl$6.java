package com.sonyericsson.android.camera.view;

import android.content.Context;
import android.view.MotionEvent;
import com.sonyericsson.android.camera.NavigatorContents;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler;
import com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler$Direction;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$ModeChangeMethod;
import com.sonyericsson.android.camera.util.CamLog;
import com.sonyericsson.android.camera.util.PerfLog;
import com.sonyericsson.android.camera.util.capability.PlatformCapability;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;

class ViewFinderImpl$6 extends AbstractDraggingEventHandler {
    final /* synthetic */ ViewFinderImpl this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ViewFinderImpl$6(ViewFinderImpl viewFinderImpl, Context context, int i, int i2) {
        super(context, i, i2);
        this.this$0 = viewFinderImpl;
    }

    @Override // com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler
    protected boolean canDragging() {
        return ViewFinderImpl.access$400(this.this$0) && this.this$0.isUserOperable();
    }

    @Override // com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler
    protected void sendTouchDownEvent(MotionEvent motionEvent) {
        if (ViewFinderImpl.access$3900(this.this$0) != null) {
            ViewFinderImpl.access$3900(this.this$0).clearToastContent();
        }
    }

    @Override // com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler
    protected boolean sendStartEvent(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction) {
        CapturingMode capturingMode;
        if (CamLog.DEBUG) {
            CamLog.d("invoke source:" + abstractDraggingEventHandler$Direction.name());
        }
        if (!isModeChangingEnable(abstractDraggingEventHandler$Direction)) {
            return false;
        }
        CapturingMode capturingModeAccess$900 = ViewFinderImpl.access$900(this.this$0);
        if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.UP || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.DOWN) {
            if (ViewFinderImpl.access$500(this.this$0).isOneShot() || capturingModeAccess$900 == (capturingMode = ViewFinderImpl.getCapturingMode(ViewFinderImpl.access$4000(this.this$0, NavigatorContents.valueOf(ViewFinderImpl.access$900(this.this$0)), abstractDraggingEventHandler$Direction), ViewFinderImpl.access$900(this.this$0)))) {
                return false;
            }
            AnimationRequest animationRequest = new AnimationRequest(AnimationRequest$AnimationType.MODE_TOUCH, AnimationRequest$AnimationDegree.START, capturingModeAccess$900, capturingMode);
            if (ViewFinderImpl.access$1200(this.this$0, animationRequest)) {
                ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_TRANSITION_OPERATION, animationRequest);
                return true;
            }
        }
        if (PlatformCapability.isFrontCameraSupported() && abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.RIGHT) {
            AnimationRequest animationRequest2 = new AnimationRequest(AnimationRequest$AnimationType.SWITCH_TOUCH, AnimationRequest$AnimationDegree.START, capturingModeAccess$900, getSwitchTargetMode(capturingModeAccess$900));
            if (ViewFinderImpl.access$1200(this.this$0, animationRequest2)) {
                ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_TRANSITION_OPERATION, animationRequest2);
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0063 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0064  */
    @Override // com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected void sendProgressEvent(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction, int i, float f) {
        NavigatorContents next;
        if (CamLog.DEBUG) {
            CamLog.d("invoke source:" + abstractDraggingEventHandler$Direction.name());
        }
        if (isModeChangingEnable(abstractDraggingEventHandler$Direction)) {
            if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.UP || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.DOWN) {
                if (ViewFinderImpl.access$500(this.this$0).isOneShot()) {
                    return;
                }
                NavigatorContents navigatorContentsValueOf = NavigatorContents.valueOf(ViewFinderImpl.access$900(this.this$0));
                if (i > 0) {
                    next = navigatorContentsValueOf.hasPrevious() ? navigatorContentsValueOf.previous() : navigatorContentsValueOf;
                    if (navigatorContentsValueOf != next) {
                        return;
                    } else {
                        ViewFinderImpl.access$4100(this.this$0, navigatorContentsValueOf, next, i, f);
                    }
                } else {
                    if (navigatorContentsValueOf.hasNext()) {
                        next = navigatorContentsValueOf.next();
                    }
                    if (navigatorContentsValueOf != next) {
                    }
                }
            }
            if (abstractDraggingEventHandler$Direction != AbstractDraggingEventHandler$Direction.RIGHT || i >= 0) {
                return;
            }
            ViewFinderImpl.access$4200(this.this$0, f);
        }
    }

    @Override // com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler
    protected void sendFinishEvent(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction) {
        AnimationRequest$AnimationDegree animationRequest$AnimationDegree;
        if (CamLog.DEBUG) {
            CamLog.d("invoke source:" + abstractDraggingEventHandler$Direction.name());
        }
        if (isModeChangingEnable(abstractDraggingEventHandler$Direction)) {
            CapturingMode capturingModeAccess$900 = ViewFinderImpl.access$900(this.this$0);
            if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.UP || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.DOWN) {
                if (ViewFinderImpl.access$500(this.this$0).isOneShot()) {
                    return;
                }
                CapturingMode capturingMode = ViewFinderImpl.getCapturingMode(ViewFinderImpl.access$4000(this.this$0, NavigatorContents.valueOf(ViewFinderImpl.access$900(this.this$0)), abstractDraggingEventHandler$Direction), ViewFinderImpl.access$900(this.this$0));
                if (CamLog.DEBUG) {
                    CamLog.d("invoke current:" + capturingModeAccess$900.name() + ", target:" + capturingMode.name());
                }
                if (capturingModeAccess$900 == capturingMode) {
                    animationRequest$AnimationDegree = AnimationRequest$AnimationDegree.CANCEL;
                } else {
                    animationRequest$AnimationDegree = AnimationRequest$AnimationDegree.EXEC;
                }
                if (ViewFinderImpl.access$1200(this.this$0, new AnimationRequest(AnimationRequest$AnimationType.MODE_TOUCH, animationRequest$AnimationDegree, capturingModeAccess$900, capturingMode))) {
                    this.this$0.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_ON_FOCUS_POSITION_RELEASED, new Object[0]);
                    PerfLog.SWIPE_ANIMATION_START.transit();
                }
            }
            if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.LEFT) {
                ViewFinderImpl.access$1200(this.this$0, new AnimationRequest(AnimationRequest$AnimationType.SWITCH_TOUCH, AnimationRequest$AnimationDegree.CANCEL, capturingModeAccess$900, getSwitchTargetMode(capturingModeAccess$900)));
            }
            if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.RIGHT && ViewFinderImpl.access$1200(this.this$0, new AnimationRequest(AnimationRequest$AnimationType.SWITCH_TOUCH, AnimationRequest$AnimationDegree.EXEC, capturingModeAccess$900, getSwitchTargetMode(capturingModeAccess$900)))) {
                ViewFinderImpl.access$4300(this.this$0, true);
                this.this$0.setIsCameraSwitching(true);
                this.this$0.hideSurface();
            }
        }
    }

    @Override // com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler
    protected void sendCancelEvent(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction) {
        if (CamLog.DEBUG) {
            CamLog.d("invoke source:" + abstractDraggingEventHandler$Direction.name());
        }
        if (isModeChangingEnable(abstractDraggingEventHandler$Direction)) {
            CapturingMode capturingModeAccess$900 = ViewFinderImpl.access$900(this.this$0);
            if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.UP || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.DOWN) {
                if (ViewFinderImpl.access$500(this.this$0).isOneShot()) {
                    return;
                }
                if (ViewFinderImpl.access$1200(this.this$0, new AnimationRequest(AnimationRequest$AnimationType.MODE_TOUCH, AnimationRequest$AnimationDegree.CANCEL, capturingModeAccess$900, ViewFinderImpl.access$900(this.this$0)))) {
                    this.this$0.showViews();
                }
            }
            if (abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.RIGHT || abstractDraggingEventHandler$Direction == AbstractDraggingEventHandler$Direction.LEFT) {
                ViewFinderImpl.access$1200(this.this$0, new AnimationRequest(AnimationRequest$AnimationType.SWITCH_TOUCH, AnimationRequest$AnimationDegree.CANCEL, capturingModeAccess$900, getSwitchTargetMode(capturingModeAccess$900)));
            }
        }
    }

    @Override // com.sonyericsson.android.camera.controller.AbstractDraggingEventHandler, com.sonyericsson.android.camera.view.baselayout.ViewFinderGestureDetector$OnViewFinderGestureDetectorListener
    public void onStartDragging(MotionEvent motionEvent, MotionEvent motionEvent2) {
        super.onStartDragging(motionEvent, motionEvent2);
        if (getModeIndexUnder(motionEvent) == -1) {
            LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.SWIPE);
        } else {
            LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.ICON_SWIPE);
        }
    }

    private int getModeIndexUnder(MotionEvent motionEvent) {
        if (ViewFinderImpl.access$4400(this.this$0) == null) {
            return -1;
        }
        return ViewFinderImpl.access$4400(this.this$0).getModeIndexUnder((int) motionEvent.getX(), (int) motionEvent.getY());
    }

    private boolean isModeChangingEnable(AbstractDraggingEventHandler$Direction abstractDraggingEventHandler$Direction) {
        CapturingMode capturingModeAccess$900 = ViewFinderImpl.access$900(this.this$0);
        switch (abstractDraggingEventHandler$Direction) {
            case UP:
            case DOWN:
                if (capturingModeAccess$900 == CapturingMode.NORMAL || capturingModeAccess$900 == CapturingMode.SLOW_MOTION || capturingModeAccess$900 == CapturingMode.FRONT_PHOTO) {
                }
                break;
            case LEFT:
            case RIGHT:
                if (capturingModeAccess$900 == CapturingMode.SLOW_MOTION) {
                }
                break;
        }
        return false;
    }

    private CapturingMode getSwitchTargetMode(CapturingMode capturingMode) {
        switch (capturingMode) {
            case SCENE_RECOGNITION:
                return CapturingMode.SUPERIOR_FRONT;
            case SUPERIOR_FRONT:
                return CapturingMode.SCENE_RECOGNITION;
            case VIDEO:
                return CapturingMode.FRONT_VIDEO;
            case FRONT_VIDEO:
                return CapturingMode.VIDEO;
            case NORMAL:
                return CapturingMode.FRONT_PHOTO;
            case FRONT_PHOTO:
                return CapturingMode.NORMAL;
            default:
                return CapturingMode.SCENE_RECOGNITION;
        }
    }
}
