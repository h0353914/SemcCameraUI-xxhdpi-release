package com.sonyericsson.android.camera.view.hint;

public class HintTextHighSensitivityFusionCondition extends HintTextContent {
    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getButtonMessageResourceId() {
        return -1;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getMessageResourceId() {
        return 2131689853;
    }

    public HintTextHighSensitivityFusionCondition() {
        this.mTransparentBackground = false;
    }
}
