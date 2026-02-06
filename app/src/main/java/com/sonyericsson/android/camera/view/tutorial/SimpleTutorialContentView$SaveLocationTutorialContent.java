package com.sonyericsson.android.camera.view.tutorial;

import java.util.ArrayList;
import java.util.List;

protected final class SimpleTutorialContentView$SaveLocationTutorialContent extends SimpleTutorialContentView$ShortTutorialContent {
    protected SimpleTutorialContentView$SaveLocationTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.SimpleTutorialContentView$ShortTutorialContent, com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        super.setupResource();
        this.mTitleResourceId = 2131690028;
        this.mDescriptionResourceId = 2131690029;
        this.mIconResourceId = isPortrait() ? 2131231266 : 2131231265;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected TutorialContentView$TutorialPageInfo getCurrentTutorialPageInfo() {
        return getCurrentTutorialPageInfo(0);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected TutorialContentView$TutorialPageInfo getCurrentTutorialPageInfo(int i) {
        return new TutorialContentView$TutorialPageInfo(TutorialController$TutorialType.SAVE_LOCATION, 0);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected List<TutorialController$TutorialType> getTutorialTypes() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(TutorialController$TutorialType.SAVE_LOCATION);
        return arrayList;
    }
}
