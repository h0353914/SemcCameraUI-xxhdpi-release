package com.sonyericsson.android.camera.view.setting;

import com.sonyericsson.android.camera.configuration.UserSettingKey;
import com.sonyericsson.android.camera.configuration.parameters.SlowMotion;
import com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface;
import com.sonyericsson.android.camera.view.setting.settingitem.TypedSettingItem;
import com.sonyericsson.android.camera.view.tutorial.TutorialController$DisplayTrigger;

class SettingUi$SlowMotionExecutor<T> implements SettingExecutorInterface<T> {
    private final SettingExecutorInterface<T> mExecutor;
    final /* synthetic */ SettingUi this$0;

    /* synthetic */ SettingUi$SlowMotionExecutor(SettingUi settingUi, SettingExecutorInterface settingExecutorInterface, SettingUi$1 settingUi$1) {
        this(settingUi, settingExecutorInterface);
    }

    private SettingUi$SlowMotionExecutor(SettingUi settingUi, SettingExecutorInterface<T> settingExecutorInterface) {
        this.this$0 = settingUi;
        this.mExecutor = settingExecutorInterface;
    }

    @Override // com.sonyericsson.android.camera.view.setting.executor.SettingExecutorInterface
    public void onExecute(TypedSettingItem<T> typedSettingItem) {
        TutorialController$DisplayTrigger tutorialController$DisplayTrigger;
        this.mExecutor.onExecute(typedSettingItem);
        switch ((SlowMotion) SettingUi.access$200(this.this$0).get(UserSettingKey.SLOW_MOTION)) {
            case SUPER_SLOW_MOTION:
            default:
                tutorialController$DisplayTrigger = null;
                break;
            case SUPER_SLOW_SHOT:
                tutorialController$DisplayTrigger = TutorialController$DisplayTrigger.CHANGE_TO_SUPER_SLOW_MOTION_SHOT;
                break;
            case STANDARD_SLOW_MOTION:
                tutorialController$DisplayTrigger = TutorialController$DisplayTrigger.CHANGE_TO_STANDARD_SLOW_MOTION;
                break;
        }
        if (tutorialController$DisplayTrigger != null && SettingUi.access$1000(this.this$0).isTutorialNeededToBeShownForCurrentMode()) {
            SettingUi.access$400(this.this$0).openTutorial(tutorialController$DisplayTrigger);
        }
        SettingUi.access$600(this.this$0).closeAllSettingDialogs();
    }
}
