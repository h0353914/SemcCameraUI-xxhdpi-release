package com.sonyericsson.android.camera.view.tutorial;

abstract class SimpleTutorialContentView$ShortTutorialContent extends SimpleTutorialContentView$SimpleTutorialContent {
    public SimpleTutorialContentView$ShortTutorialContent(int i) {
        super(i);
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected void setupResource() {
        this.mLayoutId = isPortrait() ? 2131493014 : 2131493013;
    }
}
