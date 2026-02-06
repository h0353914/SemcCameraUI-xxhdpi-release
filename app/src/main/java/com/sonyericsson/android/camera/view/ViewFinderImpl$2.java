package com.sonyericsson.android.camera.view;

import android.app.ActivityOptions;
import android.content.Intent;
import com.sonyericsson.android.camera.CameraActivity;
import com.sonyericsson.android.camera.LaunchCondition$LaunchTrigger;
import com.sonyericsson.android.camera.configuration.parameters.CapturingMode;
import com.sonyericsson.android.camera.controller.StateMachine$TransitterEvent;
import com.sonyericsson.android.camera.controller.launcher.ApplicationLauncher;
import com.sonyericsson.android.camera.research.LocalResearchUtil;
import com.sonyericsson.android.camera.research.LocalResearchUtil$ModeChangeMethod;
import com.sonyericsson.android.camera.view.animation.AnimationRequest;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationDegree;
import com.sonyericsson.android.camera.view.animation.AnimationRequest$AnimationType;
import com.sonyericsson.android.camera.view.messagedialog.DialogId;
import com.sonyericsson.android.camera.view.modeselector.AddonMode;
import com.sonyericsson.android.camera.view.modeselector.CapturingModeAttributes;
import com.sonyericsson.android.camera.view.modeselector.CapturingModeUtil;
import com.sonyericsson.android.camera.view.modeselector.InternalMode;
import com.sonyericsson.android.camera.view.modeselector.LaunchCameraIntentBuilder;
import com.sonyericsson.android.camera.view.modeselector.Mode;
import com.sonyericsson.android.camera.view.modeselector.ModeSelectorInternalMode;
import com.sonyericsson.android.camera.view.selectabledialog.ModeSelector$OnModeSelectListener;
import com.sonymobile.cameracommon.research.parameters.Event$AddonFW;
import com.sonymobile.cameracommon.research.parameters.Event$Category;

class ViewFinderImpl$2 implements ModeSelector$OnModeSelectListener {
    final /* synthetic */ ViewFinderImpl this$0;

    ViewFinderImpl$2(ViewFinderImpl viewFinderImpl) {
        this.this$0 = viewFinderImpl;
    }

    @Override // com.sonyericsson.android.camera.view.selectabledialog.ModeSelector$OnModeSelectListener
    public void onModeSelected(Mode mode, boolean z) {
        if (ViewFinderImpl.access$400(this.this$0) && this.this$0.isUserOperable()) {
            CameraActivity cameraActivityAccess$500 = ViewFinderImpl.access$500(this.this$0);
            ActivityOptions activityOptionsMakeCustomAnimation = ActivityOptions.makeCustomAnimation(cameraActivityAccess$500, 0, 0);
            if (mode instanceof InternalMode) {
                if (ViewFinderImpl.access$600(this.this$0)) {
                    return;
                }
                ModeSelectorInternalMode tag = ((InternalMode) mode).getTag();
                if (tag == ModeSelectorInternalMode.DUAL_MONOCHROME) {
                    ViewFinderImpl.access$800(this.this$0).openMonochromeDialog(z, ViewFinderImpl.access$700(this.this$0).calculateCaptureButtonAreaHeight(), mode);
                    return;
                }
                if (ViewFinderImpl.access$500(this.this$0).isDeviceInSecurityLock() && tag.isExternalApp) {
                    Intent intentCommit = LaunchCameraIntentBuilder.create().mode(ViewFinderImpl.access$900(this.this$0).name()).activity("com.sonyericsson.android.camera", "com.sonyericsson.android.camera.CameraActivity").callingMode(CapturingModeUtil.filteringPrevName(ViewFinderImpl.access$900(this.this$0).name())).callingActivity(cameraActivityAccess$500.getPackageName(), CapturingModeUtil.filteringPrevActivity(cameraActivityAccess$500.getClass().getName())).commit();
                    intentCommit.putExtra("internal_mode", tag.ordinal());
                    intentCommit.putExtra("capturing_mode", ViewFinderImpl.access$1000(this.this$0).getCurrentCapturingMode().ordinal());
                    this.this$0.showMessageDialog(DialogId.UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP, intentCommit, activityOptionsMakeCustomAnimation.toBundle(), mode);
                    return;
                }
                if (tag.isExternalApp) {
                    int requestCodeFromMode = getRequestCodeFromMode(tag);
                    if (requestCodeFromMode != -1) {
                        if (z) {
                            LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.MRU_SHORTCUT);
                            LocalResearchUtil.getInstance().setLaunchBy(LaunchCondition$LaunchTrigger.MRU_SHORTCUT);
                        } else {
                            LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.MODE_SELECTOR);
                            LocalResearchUtil.getInstance().setLaunchBy(LaunchCondition$LaunchTrigger.MODE_SELECTOR);
                        }
                        LocalResearchUtil.getInstance().sendEventInternalModeChange(ViewFinderImpl.access$900(this.this$0), tag);
                        if (CapturingModeUtil.MODE_WHITE_LIST.contains(tag.name())) {
                            if (tag == ModeSelectorInternalMode.DUAL_BACKGROUND_DEFOCUS) {
                                ApplicationLauncher.launchExternalCamera(ViewFinderImpl.access$500(this.this$0), requestCodeFromMode, ViewFinderImpl.access$1000(this.this$0).getUserSetting(), CapturingMode.SCENE_RECOGNITION, true);
                            } else {
                                ApplicationLauncher.launchExternalCamera(ViewFinderImpl.access$500(this.this$0), requestCodeFromMode, ViewFinderImpl.access$1000(this.this$0).getUserSetting(), ViewFinderImpl.access$1000(this.this$0).getCurrentCapturingMode(), true);
                            }
                        } else {
                            if (tag == ModeSelectorInternalMode.DUAL_BACKGROUND_DEFOCUS) {
                                ApplicationLauncher.launchExternalCamera(ViewFinderImpl.access$500(this.this$0), requestCodeFromMode, ViewFinderImpl.access$1000(this.this$0).getUserSetting(), CapturingMode.SCENE_RECOGNITION, false);
                            } else {
                                ApplicationLauncher.launchExternalCamera(ViewFinderImpl.access$500(this.this$0), requestCodeFromMode, ViewFinderImpl.access$1000(this.this$0).getUserSetting(), ViewFinderImpl.access$1000(this.this$0).getCurrentCapturingMode(), false);
                            }
                            ViewFinderImpl.access$1100(this.this$0);
                        }
                    }
                } else {
                    AnimationRequest animationRequest = new AnimationRequest(z ? AnimationRequest$AnimationType.MRU_SHORTCUT : AnimationRequest$AnimationType.MODE_SELECTOR, AnimationRequest$AnimationDegree.START, ViewFinderImpl.access$900(this.this$0), (CapturingMode) tag.tag);
                    if (ViewFinderImpl.access$1200(this.this$0, animationRequest)) {
                        this.this$0.hideSurface();
                        ViewFinderImpl.access$1300(this.this$0, false);
                        ViewFinderImpl.access$1000(this.this$0).sendEvent(StateMachine$TransitterEvent.EVENT_START_TRANSITION_OPERATION, animationRequest);
                    }
                }
                this.this$0.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_MRU_SHORTCUT, mode);
                return;
            }
            if (mode instanceof AddonMode) {
                CapturingModeAttributes tag2 = ((AddonMode) mode).getTag();
                Intent intentCommit2 = LaunchCameraIntentBuilder.create().mode(tag2.getModeName()).activity(tag2.getPackageName(), tag2.getActivityName()).callingMode(CapturingModeUtil.filteringPrevName(ViewFinderImpl.access$900(this.this$0).name())).callingActivity(cameraActivityAccess$500.getPackageName(), CapturingModeUtil.filteringPrevActivity(cameraActivityAccess$500.getClass().getName())).commit();
                if (ViewFinderImpl.access$500(this.this$0).isDeviceInSecurityLock()) {
                    this.this$0.showMessageDialog(DialogId.UNLOCK_REQUEST_FOR_OPENING_ADD_ON_APP, intentCommit2, activityOptionsMakeCustomAnimation.toBundle(), mode);
                    return;
                }
                if (CapturingModeUtil.isActivityAvailable(cameraActivityAccess$500, intentCommit2)) {
                    if (ViewFinderImpl.access$1400(this.this$0, intentCommit2, (activityOptionsMakeCustomAnimation == null || activityOptionsMakeCustomAnimation.toBundle() == null) ? null : activityOptionsMakeCustomAnimation.toBundle())) {
                        if (z) {
                            LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.MRU_SHORTCUT);
                            LocalResearchUtil.getInstance().setLaunchBy(LaunchCondition$LaunchTrigger.MRU_SHORTCUT);
                        } else {
                            LocalResearchUtil.getInstance().setModeChangeMethod(LocalResearchUtil$ModeChangeMethod.MODE_SELECTOR);
                            LocalResearchUtil.getInstance().setLaunchBy(LaunchCondition$LaunchTrigger.MODE_SELECTOR);
                        }
                        LocalResearchUtil.getInstance().sendEventAddonModeChange(Event$Category.ADDON_FW, Event$AddonFW.APP_SELECTED_ON_MODE_SELECTOR.toString(), AddonMode.generateId(tag2.getPackageName(), tag2.getModeName()));
                        this.this$0.sendViewUpdateEvent(ViewFinder$ViewUpdateEvent.EVENT_REQUEST_UPDATE_MRU_SHORTCUT, mode);
                    }
                }
            }
        }
    }

    private int getRequestCodeFromMode(ModeSelectorInternalMode modeSelectorInternalMode) {
        switch (ViewFinderImpl$32.$SwitchMap$com$sonyericsson$android$camera$view$modeselector$ModeSelectorInternalMode[modeSelectorInternalMode.ordinal()]) {
            case 1:
                return 18;
            case 2:
                return 16;
            case 3:
                return 17;
            default:
                return -1;
        }
    }
}
