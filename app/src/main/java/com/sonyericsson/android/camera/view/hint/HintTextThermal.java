package com.sonyericsson.android.camera.view.hint;

public abstract class HintTextThermal extends HintTextContent {
    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getButtonDescriptionResourceId() {
        return 2131689704;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getButtonMessageResourceId() {
        return 2131689704;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public HintTextContent$HintPriority getPriority() {
        return HintTextContent$HintPriority.MIDDLE;
    }
}
