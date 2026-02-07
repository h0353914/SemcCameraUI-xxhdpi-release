package com.sonyericsson.android.camera.view.tutorial;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class TutorialController$OpenType {
    public final boolean isReadMore;
    public final List<TutorialController$TutorialType> tutorialTypes;

    public TutorialController$OpenType(List<TutorialController$TutorialType> list, boolean z) {
        this.tutorialTypes = list;
        this.isReadMore = z;
    }

    public static TutorialController$OpenType create(TutorialController$DisplayTrigger tutorialController$DisplayTrigger) {
        ArrayList arrayList = new ArrayList();
        switch (tutorialController$DisplayTrigger) {
            case SETUP_WIZARD:
                arrayList.add(TutorialController$TutorialType.SAVE_LOCATION);
                arrayList.add(TutorialController$TutorialType.PREDICTIVE_LAUNCH);
                arrayList.add(TutorialController$TutorialType.DUAL_CAMERA);
                arrayList.add(TutorialController$TutorialType.SIDE_SENSE);
                break;
            case CHANGE_MODE:
                arrayList.add(TutorialController$TutorialType.EYE_GUIDE);
                arrayList.add(TutorialController$TutorialType.HAND_SHUTTER);
                arrayList.add(TutorialController$TutorialType.SUPER_SLOW_MOTION_MORE_OPTIONS);
                arrayList.add(TutorialController$TutorialType.SUPER_SLOW_MOTION_SHOT);
                arrayList.add(TutorialController$TutorialType.STANDARD_SLOW_MOTION);
                arrayList.add(TutorialController$TutorialType.VIDEO_FUSION);
                break;
            case CHANGE_TO_SUPER_SLOW_MOTION_SHOT:
                arrayList.add(TutorialController$TutorialType.SUPER_SLOW_MOTION_SHOT);
                break;
            case CHANGE_TO_STANDARD_SLOW_MOTION:
                arrayList.add(TutorialController$TutorialType.STANDARD_SLOW_MOTION);
                break;
            case CHANGE_MANUAL_FUSION_SETTING:
                arrayList.add(TutorialController$TutorialType.MANUAL_FUSION);
                break;
        }
        return new TutorialController$OpenType(arrayList, false);
    }

    public static TutorialController$OpenType createByReadMore(TutorialController$TutorialType tutorialController$TutorialType) {
        ArrayList arrayList = new ArrayList();
        arrayList.add(tutorialController$TutorialType);
        return new TutorialController$OpenType(arrayList, true);
    }
}
