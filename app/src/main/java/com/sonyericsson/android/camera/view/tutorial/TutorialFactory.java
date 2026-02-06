package com.sonyericsson.android.camera.view.tutorial;

import java.util.List;

class TutorialFactory {
    public TutorialContentView$TutorialContent create(int i, List<TutorialController$TutorialType> list, List<TutorialContentView$TutorialContent> list2) {
        return new PagingTutorialContentView$CustomTutorialContent(i, list, list2);
    }

    public TutorialContentView$TutorialContent create(TutorialController$TutorialType tutorialController$TutorialType, int i) {
        switch (TutorialFactory$1.$SwitchMap$com$sonyericsson$android$camera$view$tutorial$TutorialController$TutorialType[tutorialController$TutorialType.ordinal()]) {
            case 1:
                return new SimpleTutorialContentView$SaveLocationTutorialContent(i);
            case 2:
                return new PagingTutorialContentView$SideSenseTutorialContent(i);
            case 3:
                return new PagingTutorialContentView$PredictiveLaunchTutorialContent(i);
            case 4:
                return new PagingTutorialContentView$DualCameraTutorialContent(i);
            case 5:
                return new PagingTutorialContentView$EyeGuideTutorialContent(i);
            case 6:
                return new PagingTutorialContentView$HandShutterTutorialContent(i);
            case 7:
                return new PagingTutorialContentView$SuperSlowMoreOptionsTutorialContent(i);
            case 8:
                return new PagingTutorialContentView$SuperSlowTutorialContent(i);
            case 9:
                return new PagingTutorialContentView$OneShotSlowTutorialContent(i, 960);
            case 10:
                return new PagingTutorialContentView$StandardSlowTutorialContent(i);
            case 11:
                return new PagingTutorialContentView$ManualFusionTutorialContent(i);
            case 12:
                return new PagingTutorialContentView$VideoFusionTutorialContent(i);
            default:
                return new PagingTutorialContentView$OneShotSlowTutorialContent(i);
        }
    }
}
