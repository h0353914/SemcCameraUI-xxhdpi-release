












package com.sonyericsson.android.camera.view.hint;

import com.sonyericsson.android.camera.R;

public class HintTextHighSensitivityFusionStatus extends HintTextContent {
    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getButtonMessageResourceId() {
        return -1;
    }

    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getMessageResourceId() {
        return R.string.cam_strings_fusion_on_txt;
    }
}
