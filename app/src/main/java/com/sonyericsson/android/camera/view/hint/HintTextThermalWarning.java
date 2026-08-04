



package com.sonyericsson.android.camera.view.hint;

import com.sonyericsson.android.camera.R;

public class HintTextThermalWarning extends HintTextThermal {
    @Override // com.sonyericsson.android.camera.view.hint.HintTextContent
    public int getMessageResourceId() {
        return R.string.cam_strings_cooling_mode_txt;
    }
}
