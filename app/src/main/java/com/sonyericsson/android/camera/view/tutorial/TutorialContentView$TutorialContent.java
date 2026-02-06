package com.sonyericsson.android.camera.view.tutorial;

import com.sonyericsson.android.camera.setting.StoredSettings;
import java.util.List;

public abstract class TutorialContentView$TutorialContent {
    protected int mLayoutId;
    protected int mOrientation = 0;
    protected Object[] mParams;

    protected boolean canShowContent(StoredSettings storedSettings) {
        return true;
    }

    protected abstract TutorialContentView$TutorialPageInfo getCurrentTutorialPageInfo();

    protected abstract TutorialContentView$TutorialPageInfo getCurrentTutorialPageInfo(int i);

    protected abstract int getPages();

    protected abstract TutorialContentView$TutorialContent getTutorialContent(TutorialController$TutorialType tutorialController$TutorialType);

    protected abstract List<TutorialController$TutorialType> getTutorialTypes();

    protected abstract boolean isSimpleTutorialContent();

    protected abstract void setupResource();

    protected TutorialContentView$TutorialContent(int i) {
        changeOrientation(i);
    }

    protected TutorialContentView$TutorialContent(int i, Object... objArr) {
        changeOrientation(i);
        this.mParams = objArr;
    }

    protected final boolean isPortrait() {
        return this.mOrientation == 1;
    }

    protected final boolean changeOrientation(int i) {
        boolean z = this.mOrientation != i;
        if (z) {
            this.mOrientation = i;
            setupResource();
        }
        return z;
    }

    protected boolean equalsWith(TutorialContentView$TutorialContent tutorialContentView$TutorialContent) {
        return tutorialContentView$TutorialContent != null && getClass().equals(tutorialContentView$TutorialContent.getClass()) && this.mOrientation == tutorialContentView$TutorialContent.mOrientation;
    }
}
