package com.sonyericsson.android.camera.view.tutorial;

abstract class SimpleTutorialContentView$SimpleTutorialContent extends TutorialContentView$TutorialContent {
    protected int mDescriptionResourceId;
    protected int mIconResourceId;
    protected int mTitleResourceId;

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected int getPages() {
        return 1;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected TutorialContentView$TutorialContent getTutorialContent(TutorialController$TutorialType tutorialController$TutorialType) {
        return this;
    }

    @Override // com.sonyericsson.android.camera.view.tutorial.TutorialContentView$TutorialContent
    protected boolean isSimpleTutorialContent() {
        return true;
    }

    public SimpleTutorialContentView$SimpleTutorialContent(int i) {
        super(i);
    }
}
